<?php

$conn = oci_connect('User1', 'User1', 'PROYECTOUNO');
if (!$conn)
    echo "Connection Failure";

$stid = oci_parse($conn, 'select * from TABLE(get_data_mascota(2))');

oci_execute($stid);
$resultado = array();
while($col = oci_fetch_array($stid)){
    $nombre = utf8_encode($col[0]);
    $raza = utf8_encode($col[1]);
    $color = utf8_encode($col[2]);
    $actividadfisica = utf8_encode($col[3]);
    $estadocrecimiento = utf8_encode($col[4]);
    $estadofisico = utf8_encode($col[5]);
    $facilidadentrenamiento = utf8_encode($col[6]);
    $nivelenergia = utf8_encode($col[7]);
    $tamano = utf8_encode($col[8]);
    $tipo = utf8_encode($col[9]);

    $tupla = array("nombre" => $nombre, "raza" => $raza, "color" => $color, "actividadfisica" => $actividadfisica, 
                      "estadocrecimiento" => $estadocrecimiento, "estadofisico" => $estadofisico, "facilidadentrenamiento" =>                               $facilidadentrenamiento, "nivelenergia" => $nivelenergia, 
                      "tamano" => $tamano, "tipo" => $tipo);
    $resultado[] = $tupla;
}
echo json_encode($resultado, JSON_UNESCAPED_UNICODE);
oci_free_statement($stid);
oci_close($conn);

?>