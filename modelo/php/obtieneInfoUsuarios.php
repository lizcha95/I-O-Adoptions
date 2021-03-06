<?php

$conn = oci_connect('User1', 'User1', 'PROYECTOUNO');
if (!$conn)
    echo "Connection Failure";
if(isset($_GET["Usuario"]))
{
    
    $Usuario = ($_GET["Usuario"]);

    $stid = oci_parse($conn, 'select * from TABLE(get_data_Usuario(:pUsuario))');
    
    oci_bind_by_name($stid, ':pUsuario', $Usuario);
    
    oci_execute($stid);
    $col = oci_fetch_array($stid);
    $cedula = strval($col[0]);
    $nombre = $col[1];
    $apellido = $col[2];
    $FechaNacimiento = $col[3];
    $telefono = strval($col[4]);
    $correo = $col[5];
    $nombre_pais = utf8_encode($col[6]);
    $nombre_provincia = utf8_encode($col[7]);
    $nombre_canton = utf8_encode($col[8]);
    $direccion_exacta = $col[9];
    $notas_adoptante = $col[10];
    
    $resultado = array("cedula" => $cedula, "nombre" => $nombre, "apellido" => $apellido, "fechaNacimiento" => $FechaNacimiento, 
                      "telefono" => $telefono, "correo" => $correo, "pais" => $nombre_pais, "provincia" => $nombre_provincia, 
                      "canton" => $nombre_canton, "direcEx" => $direccion_exacta, "notAdopt" => $notas_adoptante);
    echo json_encode($resultado, JSON_UNESCAPED_UNICODE);
    oci_free_statement($stid);
    oci_close($conn);
}