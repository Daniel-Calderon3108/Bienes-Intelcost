<?php
session_start();

if (isset($_SESSION['usuario'])) {
    unset($_SESSION['usuario']);
    unset($_SESSION['id']);
    header("Location:login.php");
}
