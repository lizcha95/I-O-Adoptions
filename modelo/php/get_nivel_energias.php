<?php

$conn = oci_connect('User1', 'User1', 'PROYECTOUNO');

$stid = oci_parse($conn, 'select * from TABLE(get_nivel_energias())');
oci_execute($stid);

$nivel_energias = array();

while ($col = oci_fetch_array($stid)) {
    $idd = strval($col[0]);
    $nombre = utf8_encode($col[1]);
    $columna = array("id_nivel_energia" => $idd, "nivel_energia" => $nombre);
    $nivel_energias[] = $columna;

}

echo json_encode($nivel_energias, JSON_UNESCAPED_UNICODE);
oci_free_statement($stid);
oci_close($conn);

?>