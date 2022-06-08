<?php
Class Login
{
	private $conexion;
	private	$server = "localhost";
	private	$user = "root";
	private	$password = "";
	private	$namebd = "intelcost_bienes";

	function __construct() {
        $this->conectar ();
	}
	
	Public function conectar () { 
		$this->conexion = mysqli_connect($this->server,$this->user,$this->password,$this->namebd);
		
		if (mysqli_connect_error())
		die ("Fallo de conexion de la base de datos".mysqli_connect_error());
		}
		Public function login ($nombre,$clave) {
			$sql = "SELECT  nombre FROM usuario WHERE nombre='$nombre' and clave='$clave'";
			$resultado = mysqli_query($this->conexion,$sql);
			
			$rows=mysqli_num_rows($resultado);
			if ($rows) {
                return $rows;
            }
            else {
                return false;
            }
		}
		public function idUsuario ($nombre) {
			$sql = "SELECT id FROM usuario WHERE nombre='$nombre'";
			$data = mysqli_query ($this->conexion,$sql);
			$record = mysqli_fetch_object ($data);
			return $record;
    }
}