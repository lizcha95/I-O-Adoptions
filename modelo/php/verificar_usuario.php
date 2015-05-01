<?php

$conn = oci_connect('User1', 'User1', 'PROYECTOUNO');
if (!$conn)
    echo "Connection Failure";
if(isset($_GET["Usuario"]))
{
    
    $Usuario = ($_GET["Usuario"]);
    $Contrasena = ($_GET["Contrasena"]);

    $stid = oci_parse($conn, 'select * from TABLE(verificar_usuario(:pUsuario, :pContrasena))');
    
    oci_bind_by_name($stid, ':pUsuario', $Usuario);
    oci_bind_by_name($stid, ':pContrasena', $Contrasena);
    
    oci_execute($stid);
    $col = oci_fetch_array($stid);
    $resultado = $col[0];
    echo json_encode($resultado, JSON_UNESCAPED_UNICODE);
    oci_free_statement($stid);
    oci_close($conn);
}