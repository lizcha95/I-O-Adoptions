<?php

$conn = oci_connect('User1', 'User1', 'PROYECTOUNO');

$stid = oci_parse($conn, 'select * from TABLE(get_facilidad_entrenamiento())');
oci_execute($stid);

$f_entrenamiento = array();

while ($col = oci_fetch_array($stid)) {
    $idd = strval($col[0]);
    $nombre = utf8_encode($col[1]);
    $columna = array("id_facilidad_entrenamiento" => $idd, "facilidad_entrenamiento" => $nombre);
    $f_entrenamiento[] = $columna;

}

echo json_encode($f_entrenamiento, JSON_UNESCAPED_UNICODE);
oci_free_statement($stid);
oci_close($conn);

?>