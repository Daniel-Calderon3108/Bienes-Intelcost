<?php 
    header("Content-Type: application/vnd.ms-excel; charset=iso-8859-1");
    header("Content-Disposition: attachment; filename=RegistroBienes_BienesIntelcost.xls;");

?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bienes Intelcost</title>
</head>

<body>
    <table border="1">
        <caption>Bienes Intelcost</caption>
        <tr></tr>
        <th>Dirección</th>
        <th>Ciudad</th>
        <th>Telefono</th>
        <th>Codigo Postal</th>
        <th>Tipo</th>
        <th>Precio</th>
        </tr>
        <?php 
            include('models/bienes.php');
            $bienes = new Bienes;

            $lista = $bienes->bienes_disponibles();

            while($row = mysqli_fetch_object($lista)){
                
                $direction = $row->direccion;
                $city = $row->ciudad;
                $tel = $row->telefono;
                $postal = $row->codigo_postal;
                $type = $row->tipo;
                $price = $row->precio;
        ?>
        <tr>
            <td><?php echo $direction ?></td>
            <td><?php echo $city ?></td>
            <td><?php echo $tel ?></td>
            <td><?php echo $postal ?></td>
            <td><?php echo $type ?></td>
            <td><?php echo $price ?></td>
        </tr>
        <?php 
            }
        ?>
    </table>
</body>

</html>