<?php

$conn = oci_connect('User1', 'User1', 'PROYECTOUNO');

$stid = oci_parse($conn, 'select * from TABLE(gettamano())');
oci_execute($stid);

$tamanos = array();

while ($col = oci_fetch_array($stid)) {
    $idd = strval($col[0]);
    $nombre = utf8_encode($col[1]);
    $columna = array("id_tamanio" => $idd, "tamanio_mascota" => $nombre);
    $tamanos[] = $columna;

}

echo json_encode($tamanos, JSON_UNESCAPED_UNICODE);
oci_free_statement($stid);
oci_close($conn);

?>