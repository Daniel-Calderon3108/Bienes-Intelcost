<?php
session_start();
if (!isset($_SESSION['usuario'])) {
  header('Location:login.php');
} else {
  $usuarioSesion = $_SESSION['usuario'];

  include("models/session.php");
  $bienes = new Login;

  $idusuario = $bienes->idUsuario($usuarioSesion);
  $usuarioId = $idusuario->id;
}
?>
<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
  <link type="text/css" rel="stylesheet" href="css/materialize.min.css" media="screen,projection" />
  <link type="text/css" rel="stylesheet" href="css/customColors.css" media="screen,projection" />
  <link type="text/css" rel="stylesheet" href="css/ion.rangeSlider.css" media="screen,projection" />
  <link type="text/css" rel="stylesheet" href="css/ion.rangeSlider.skinFlat.css" media="screen,projection" />
  <link type="text/css" rel="stylesheet" href="css/index.css" media="screen,projection" />
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Bienes Intelcost</title>
</head>

<body>
  <video src="img/video.mp4" id="vidFondo"></video>

  <div class="contenedor">
    <div class="card rowTitulo">
      <h1>Bienes Intelcost</h1>
      <div class="close"><button><a href="cerrar_sesion.php">Cerrar Sesion</a></button></div>
    </div>
    <div class="colFiltros">
      <?php
      include("models/filter.php");
      $filter = new Filter;

      $filterCity = $filter->ciudades();
      $filterType = $filter->tipos();


      ?>
      <form action="#" method="post" id="formulario">
        <div class="filtrosContenido">
          <div class="tituloFiltros">
            <h5>Filtros</h5>
          </div>
          <div class="filtroCiudad input-field">
            <p><label for="selectCiudad">Ciudad:</label><br></p>
            <select name="ciudad" id="selectCiudad" onchange="validar()">
              <option value="" selected>Elige una ciudad</option>
              <?php
              while ($row = mysqli_fetch_object($filterCity)) {
                $cities = $row->nombre;
              ?>
                <option value="<?php echo $cities ?>"><?php echo $cities ?></option>
              <?php
              }
              ?>
            </select>
            <div id="falta-ciudad" style="display: none;">
              <p style="color: red;">Por favor seleccione una ciudad</p>
            </div>
          </div>
          <div class="filtroTipo input-field" style="margin-top: 30px;">
            <p><label for="selecTipo">Tipo:</label></p>
            <br>
            <select name="tipo" id="selectTipo" onchange="validar()">
              <option value="">Elige un tipo</option>
              <?php
              while ($row = mysqli_fetch_object($filterType)) {
                $types = $row->nombre;
              ?>
                <option value="<?php echo $types ?>"><?php echo $types ?></option>
              <?php
              }
              ?>
            </select>
            <div id="falta-tipo" style="display: none;">
              <p style="color: red;">Por favor seleccione un tipo</p>
            </div>
          </div>
          <div class="botonField" style="margin-top: 40px;">
            <input type="submit" class="btn white" value="Buscar" id="submitButton" onclick="validar()">
          </div>
          <script>
            function validar() {
              var ciudad = document.getElementById('selectCiudad');
              var tipo = document.getElementById('selectTipo');
              var boton = document.getElementById('submitButton');
              var faltaCiudad = document.getElementById('falta-ciudad');
              var faltaTipo = document.getElementById('falta-tipo');

              if(ciudad.value == "" && tipo.value == ""){
                faltaCiudad.style.display = "block";
                faltaTipo.style.display = "block";
                boton.disabled = true;
              }else{
                boton.disabled = false;
              }
            }
          </script>
        </div>
      </form>
    </div>
    <div id="tabs" style="width: 75%;">
      <ul>
        <li><a href="#tabs-1">Bienes disponibles</a></li>
        <li><a href="#tabs-2">Mis bienes</a></li>
      </ul>
      <div id="tabs-1">
        <div class="colContenido" id="divResultadosBusqueda">
          <div class="tituloContenido card" style="justify-content: center;">
            <?php
            include("models/bienes.php");
            $bienes = new Bienes;
            if (isset($_POST['ciudad']) || isset($_POST['tipo'])) {
              $filtercities = $_POST['ciudad'];
              $filtertypes = $_POST['tipo'];

              $lista = $filter->filter($filtercities, $filtertypes);
            } else {
              $lista = $bienes->bienes_disponibles();
            }
            ?>
            <button><a href="index.php" style="color: white;">MOSTRAR TODOS</a></button>
            <?php
            if (isset($_POST['ciudad']) || isset($_POST['tipo'])) {
            ?>
              <h5>Resultados de la búsqueda:</h5>
            <?php
            }
            ?>
            <div class="divider"></div>
            <div class='user'>
              <h3>Bienvenido, <?php echo $usuarioSesion ?></h3>
            </div>
            <?php
            if (isset($_GET) && !empty($_GET)) {
              $bienesid = $_GET['IdBienes'];
              $usuarioId = $_GET['IdUsuario'];

              $guardarBienes = $bienes->guardar_bienes($bienesid, $usuarioId);

              if ($guardarBienes) {
                header('Location:index.php?#tabs-2');
              }
            }
            ?>
            <?php
            while ($row = mysqli_fetch_object($lista)) {

              $idbienes = $row->id;
              $direction = $row->direccion;
              $city = $row->ciudad;
              $tel = $row->telefono;
              $postal = $row->codigo_postal;
              $type = $row->tipo;
              $price = $row->precio;

            ?>
              <div class="itemMostrado">
                <img src="img/home.jpg" alt="">
                <p class="card-action"><b>Direccion: </b><?php echo $direction ?></p>
                <p class="card-action"><b>Ciudad: </b><?php echo $city ?></p>
                <p class="card-action"><b>Telefono: </b><?php echo $tel ?></p>
                <p class="card-action"><b>Codigo Postal: </b><?php echo $postal ?></p>
                <p class="card-action"><b>Tipo: </b><?php echo $type ?></p>
                <p class="card-action precioTexto"><b>Precio: </b><?php echo $price ?></p>
                <div class="divider"></div>
                <form method="get" class="right">
                  <input type="hidden" value="<?php echo $idbienes ?>" name="IdBienes">
                  <input type="hidden" value="<?php echo $usuarioId ?>" name="IdUsuario">
                  <button>Guardar</button>
                </form>
              </div>
              <div class="divider"></div>
            <?php } ?>
          </div>
        </div>
      </div>

      <div id="tabs-2">
        <div class="colContenido" id="divResultadosBusqueda">
          <div class="tituloContenido card" style="justify-content: center;">
            <?php
            $lista = $bienes->mis_bienes($usuarioId);
            ?>
            <h5>Bienes guardados:</h5>
            <div class="divider"></div>
            <div class='user'>
              <h3>Bienvenido, <?php echo $usuarioSesion ?></h3>
            </div>
            <?php
            while ($row = mysqli_fetch_object($lista)) {

              $idMisBienes = $row->id;
              $direction = $row->direccion;
              $city = $row->ciudad;
              $tel = $row->telefono;
              $postal = $row->codigo_postal;
              $type = $row->tipo;
              $price = $row->precio;
              $idBienes = $row->idbienes;
              $idUsuario = $row->idusuario;

            ?>
              <div class="itemMostrado">
                <img src="img/home.jpg" alt="">
                <p class="card-action"><b>Direccion: </b><?php echo $direction ?></p>
                <p class="card-action"><b>Ciudad: </b><?php echo $city ?></p>
                <p class="card-action"><b>Telefono: </b><?php echo $tel ?></p>
                <p class="card-action"><b>Codigo Postal: </b><?php echo $postal ?></p>
                <p class="card-action"><b>Tipo: </b><?php echo $type ?></p>
                <p class="card-action precioTexto"><b>Precio: </b><?php echo $price ?></p>
                <div class="divider"></div>
                <button class="delete"><a href="eliminar_bienes.php?bienes=<?php echo $idMisBienes ?>" style="color:white;">Eliminar</a></button>
              </div>
              <div class="divider"></div>
            <?php } ?>
          </div>
        </div>
      </div>


    </div>
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>

    <script type="text/javascript" src="js/ion.rangeSlider.min.js"></script>
    <script type="text/javascript" src="js/materialize.min.js"></script>
    <script type="text/javascript" src="js/index.js"></script>
    <script type="text/javascript" src="js/buscador.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script type="text/javascript">
      $(document).ready(function() {
        $("#tabs").tabs();
      });
    </script>
</body>

</html>