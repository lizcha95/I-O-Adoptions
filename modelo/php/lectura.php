<?php

$conn = oci_connect('User1', 'User1', 'PROYECTOUNO');

if(isset($_GET["Pais"]))
{
    $Pais = ($_GET["Pais"]);

    $stid = oci_parse($conn, 'select * from TABLE(getprovincias('.$Pais.'))');
    oci_execute($stid);
    
    $provincia = array();
    
    while ($col = oci_fetch_array($stid)) {
        $idd = strval($col[0]);
        $nombre = utf8_encode($col[1]);
        $columna = array("id_provincia" => $idd, "nombre_provincia" => $nombre);
        
        $provincia[] = $columna;
        
    }
}

?>