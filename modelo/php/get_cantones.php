<?php

$conn = oci_connect('User1', 'User1', 'PROYECTOUNO');

if(isset($_GET["Provincia"]))
{
    $Provincia = ($_GET["Provincia"]);

    $stid = oci_parse($conn, 'select * from TABLE(getcantones('.$Provincia.'))');
    oci_execute($stid);
    
    $canton = array();
    
    while ($col = oci_fetch_array($stid)) {
        $idd = strval($col[0]);
        $nombre = utf8_encode($col[1]);
        $columna = array("id_canton" => $idd, "nombre_canton" => $nombre);
        $canton[] = $columna;
        
    }
    
    echo json_encode($canton, JSON_UNESCAPED_UNICODE);
    oci_free_statement($stid);
    oci_close($conn);

}

?>