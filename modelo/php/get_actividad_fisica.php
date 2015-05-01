<?php

$conn = oci_connect('User1', 'User1', 'PROYECTOUNO');

$stid = oci_parse($conn, 'select * from TABLE(get_actividad_fisica())');
oci_execute($stid);

$act_fisicas = array();

while ($col = oci_fetch_array($stid)) {
    $idd = strval($col[0]);
    $nombre = utf8_encode($col[1]);
    $columna = array("id_actividad" => $idd, "actividad_fisica" => $nombre);
    $act_fisicas[] = $columna;

}

echo json_encode($act_fisicas, JSON_UNESCAPED_UNICODE);
oci_free_statement($stid);
oci_close($conn);

?>