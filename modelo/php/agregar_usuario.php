<?php

$conn = oci_connect('User1', 'User1', 'PROYECTOUNO');
if ($conn)
    echo "Great Success";
else
    echo "Connection Failure";

$Nombre = ($_POST["Nombre"]);
$Apellido = ($_POST["Apellido"]);
$Cedula = ($_POST["Cedula"]);
$Fecha = ($_POST["Fecha"]);
$Telefono = ($_POST["Telefono"]);
$Correo = ($_POST["Correo"]);
$Pais = ($_POST["Pais"]);
$Provincia = ($_POST["Provincia"]);
$Canton = ($_POST["Canton"]);
$Direccion = ($_POST["Direccion"]);
$Usuario = ($_POST["Usuario"]);
$Contrasena = ($_POST["Contraseña"]);

$stid = oci_parse($conn, 'begin addUsuarioRegular(:pNombre, :pApellido, :pCedula, :pFecha_nacimiento, :pTelefono, :pCorreo,
                                                  :pId_pais, :pId_provincia, :pId_Canton, :pDireccion_exacta, :pNombre_Usuario,
                                                  :pContrasena); end;');

oci_bind_by_name($stid, ':pNombre', $Nombre);
oci_bind_by_name($stid, ':pApellido', $Apellido);
oci_bind_by_name($stid, ':pCedula', $Cedula, 10);
oci_bind_by_name($stid, ':pFecha_nacimiento', $Fecha);
oci_bind_by_name($stid, ':pTelefono', $Telefono, 10);
oci_bind_by_name($stid, ':pCorreo', $Correo);
oci_bind_by_name($stid, ':pId_pais', $Pais, 10);
oci_bind_by_name($stid, ':pId_provincia', $Provincia, 10);
oci_bind_by_name($stid, ':pId_Canton', $Canton, 10);
oci_bind_by_name($stid, ':pDireccion_exacta', $Direccion);
oci_bind_by_name($stid, ':pNombre_Usuario', $Usuario);
oci_bind_by_name($stid, ':pContrasena', $Contrasena);

oci_execute($stid);
oci_commit($conn);                                                
oci_free_statement($stid);
oci_close($conn);

?>