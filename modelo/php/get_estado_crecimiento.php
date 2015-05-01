<?php

$conn = oci_connect('User1', 'User1', 'PROYECTOUNO');

$stid = oci_parse($conn, 'select * from TABLE(getestado_crecimiento())');
oci_execute($stid);

$estados = array();

while ($col = oci_fetch_array($stid)) {
    $idd = strval($col[0]);
    $nombre = utf8_encode($col[1]);
    $columna = array("id_estado_crecimiento" => $idd, "estado_crecimiento" => $nombre);
    $estados[] = $columna;

}

echo json_encode($estados, JSON_UNESCAPED_UNICODE);
oci_free_statement($stid);
oci_close($conn);

?>