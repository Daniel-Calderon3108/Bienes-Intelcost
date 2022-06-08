<?php
if (isset($_GET['bienes'])) {
    include('models/bienes.php');
    $bienes = new Bienes;
    $id = intval($_GET['bienes']);
    $resultado = $bienes->eliminar_misBienes($id);
    if ($resultado) {
        header('location: index.php?#tabs-2');
    }
}
?>