<?php
function read($script){
    $conn = oci_connect('User1', 'User1', 'PROYECTOUNO');

    $stid = oci_parse($conn, $script);
    oci_execute($stid);

    $result = array();

    while ($col = oci_fetch_array($stid)) {
        $id = strval($col[0]);
        $descripcion = utf8_encode($col[1]);
        $tupla = array("id" => $id, "descripcion" => $descripcion);
        $result[] = $tupla;

    }

    echo json_encode($result, JSON_UNESCAPED_UNICODE);
    oci_free_statement($stid);
    oci_close($conn);

}
?>