<?php

$conn = oci_connect('User1', 'User1', 'PROYECTOUNO');
if (!$conn)
    echo "Connection Failure";

$Nombre = ($_GET["Nombre"]);
$Apellido = ($_GET["Apellido"]);
$Cedula = ($_GET["Cedula"]);
$Fecha = ($_GET["Fecha"]);
$Telefono = ($_GET["Telefono"]);
$Correo = ($_GET["Correo"]);
$Pais = ($_GET["Pais"]);
$Provincia = ($_GET["Provincia"]);
$Canton = ($_GET["Canton"]);
$Direccion = ($_GET["Direccion"]);
$Usuario = ($_GET["Usuario"]);
$Contrasena = ($_GET["Contrasena"]);

$stid = oci_parse($conn, "begin addUsuarioRegular(:pNombre, :pApellido, :pCedula, TO_DATE (:pFecha_nacimiento, 'yyyy/mm/dd'), :pTelefono, :pCorreo, :pId_pais, :pId_provincia, :pId_Canton, :pDireccion_exacta, :pNombre_Usuario, :pContrasena); end;");

oci_bind_by_name($stid, ':pNombre', $Nombre);
oci_bind_by_name($stid, ':pApellido', $Apellido);
oci_bind_by_name($stid, ':pCedula', $Cedula);
oci_bind_by_name($stid, ':pFecha_nacimiento', $Fecha);
oci_bind_by_name($stid, ':pTelefono', $Telefono);
oci_bind_by_name($stid, ':pCorreo', $Correo);
oci_bind_by_name($stid, ':pId_pais', $Pais);
oci_bind_by_name($stid, ':pId_provincia', $Provincia);
oci_bind_by_name($stid, ':pId_Canton', $Canton);
oci_bind_by_name($stid, ':pDireccion_exacta', $Direccion);
oci_bind_by_name($stid, ':pNombre_Usuario', $Usuario);
oci_bind_by_name($stid, ':pContrasena', $Contrasena);

echo $Nombre.', '.$Apellido.', '.$Cedula.', '.$Fecha.', '.$Telefono.', '.$Correo.', '.$Pais.', '.$Provincia.', '.$Canton.', '.$Direccion.', '.$Usuario.', '.$Contrasena;

oci_execute($stid);
oci_commit($conn);
oci_free_statement($stid);
oci_close($conn);

?>