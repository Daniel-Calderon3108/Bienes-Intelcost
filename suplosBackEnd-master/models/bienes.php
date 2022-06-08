<?php

Class Bienes
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
    public function bienes_disponibles (){
        $sql = "SELECT id,direccion,ciudad,telefono,codigo_postal,tipo,precio FROM bienes_disponibles";
        $data = mysqli_query($this->conexion, $sql);
        return $data;
    }
    public function guardar_bienes ($idBienes,$idUsuario) {
			$sql = "INSERT INTO mis_bienes (bienes,usuario)";
			$sql = $sql."VALUES ('$idBienes','$idUsuario')";
			$resultado = mysqli_query($this->conexion,$sql);
			if ($resultado) {
				return true;
			} else {
				return false;
			}
		}
        public function mis_bienes ($id) {
            $sql = "SELECT id,direccion,ciudad,telefono,codigo_postal,tipo,precio,idbienes,idusuario";
            $sql = $sql." FROM bienes_guardados WHERE idusuario='$id'";
            $data = mysqli_query($this->conexion, $sql);
            return $data;
        }
        public function eliminar_misBienes ($id) {
			$sql = "DELETE FROM mis_bienes WHERE id = '$id'";
			$resultado = mysqli_query ($this->conexion,$sql);
			if ($resultado) {
				return true;
			}else {
				return false;
			}
		}
        public function reporte ($ciudad, $tipo) {
            $sql = "SELECT id,direccion,ciudad,telefono,codigo_postal,tipo,precio,idbienes,idusuario";
            $sql = $sql." FROM bienes_guardados WHERE ciudad='$ciudad' or tipo='$tipo'";
            $data = mysqli_query($this->conexion, $sql);
            return $data;
        }
}
