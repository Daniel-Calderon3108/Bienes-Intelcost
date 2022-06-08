<?php

Class Filter
{

    private $conexion;
    private $server = "localhost";
    private $user = "root";
    private $password = "";
    private $namebd = "intelcost_bienes";

    function __construct() {
        $this->conectar ();
    }

    public function conectar () { 
        $this->conexion = mysqli_connect($this->server,$this->user,$this->password,$this->namebd);
        
        if (mysqli_connect_error())
        die ("Fallo de conexion de la base de datos".mysqli_connect_error());
        }
    public function ciudades (){
        $sql = "SELECT nombre FROM ciudad";
        $data = mysqli_query($this->conexion, $sql);
        return $data;
    }
    public function tipos (){
        $sql = "SELECT nombre FROM tipo";
        $data = mysqli_query($this->conexion, $sql);
        return $data;
    }
    public function filter($filtercity, $filtertype){
        $sql = "SELECT direccion,ciudad,telefono,codigo_postal,tipo,precio FROM bienes_disponibles";
        $sql = $sql." WHERE ciudad = '$filtercity' or tipo = '$filtertype'";
        $data = mysqli_query($this->conexion,$sql);
        return $data;
    }
}
