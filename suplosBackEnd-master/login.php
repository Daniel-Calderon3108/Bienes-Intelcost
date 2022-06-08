<?php

session_start();
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/login.css">
    <title>Bienes Intelcost</title>
    <?php 
    include('models/session.php');
    $login = new Login;
    $mensaje = "";

    if(isset($_POST) && !empty($_POST)){
        $nombre = $_POST['User'];
        $clave = $_POST['Clave'];
        $lista = $login->login($nombre,$clave);

        if($lista > 0){

            $_SESSION['id'] = session_create_id();
            $_SESSION['usuario'] = $nombre;
            header("location:index.php");
        }else{
            echo "";
        }
    }
    ?>
</head>
<body>
    <div class="containerLogin">
        <h1>Bienes Intelcost</h1>
        <h2>Iniciar Sesion</h2>
        <form method="post">
            <div class="form">
                <label for="">Usuario</label>
                <input type="text" name="User" id="">
            </div>
            <div class="form">
                <label for="">Clave</label>
                <input type="password" name="Clave" id="">
            </div>
            <div class="form">
                <input type="submit" value="Iniciar Sesion">
            </div>
        </form>
    </div>
</body>
</html>