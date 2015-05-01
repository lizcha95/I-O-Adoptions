<?php

$conn = oci_connect('User1', 'User1', 'PROYECTOUNO');

if(isset($_GET["Tipo"]))
{
    $Tipo = ($_GET["Tipo"]);

    $stid = oci_parse($conn, 'select * from TABLE(get_razas_mascotas('.$Tipo.'))');
    oci_execute($stid);
    
    $razas_mascotas = array();
    
    while ($col = oci_fetch_array($stid)) {
        $idd = strval($col[0]);
        $nombre = utf8_encode($col[1]);
        $columna = array("id_razas_mascotas" => $idd, "razas_mascotas" => $nombre);
        $razas_mascotas[] = $columna;
        
    }
    
    echo json_encode($razas_mascotas, JSON_UNESCAPED_UNICODE);
    oci_free_statement($stid);
    oci_close($conn);

}

?>