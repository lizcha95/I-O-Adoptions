<?php

$conn = oci_connect('User1', 'User1', 'PROYECTOUNO');
if (!$conn)
    echo "Connection Failure";

$Nombre = ($_GET["NombreMascota"]);
$Tipo = ($_GET["Tipo"]);
$Raza = ($_GET["Raza"]);
$Tamano = ($_GET["Tamano"]);
$Color = ($_GET["Color"]);
$EstadoCrecimiento = ($_GET["EstadoCrecimiento"]);
$EstadoFisico = ($_GET["EstadoFisico"]);
$FacilidadEntrenamiento = ($_GET["FacilidadEntrenamiento"]);
$NivelEnergia = ($_GET["NivelEnergia"]);
$ActividadFisica = ($_GET["ActividadFisica"]);
$DuenoAnterior = ($_GET["ceduladuenoanterior"]);

$stid=oci_parse($conn,"begin addMascota(:pNombre,:pEstadoCrecimiento,:pEstadoFisico,:pMotivoDevolucion,:pRazaMascota,:pTamanoMascota, :pColorMascota,:pFacilidadEntrenamiento,:pActividadFisica, :pNivelEnergia, :pDuenoAnterior, 1, 0); end;");


oci_bind_by_name($stid, ':pNombre', $Nombre);
oci_bind_by_name($stid, ':pEstadoCrecimiento', $EstadoCrecimiento);
oci_bind_by_name($stid, ':pEstadoFisico', $EstadoFisico);
oci_bind_by_name($stid, ':pMotivoDevolucion', $Tamano);
oci_bind_by_name($stid, ':pRazaMascota', $Color);
oci_bind_by_name($stid, ':pTamanoMascota', $Tamano);
oci_bind_by_name($stid, ':pColorMascota', $Color);
oci_bind_by_name($stid, ':pFacilidadEntrenamiento', $FacilidadEntrenamiento);
oci_bind_by_name($stid, ':pActividadFisica', $ActividadFisica);
oci_bind_by_name($stid, ':pNivelEnergia', $NivelEnergia);

oci_execute($stid);

oci_commit($conn);
$e = oci_error($stid);
oci_free_statement($stid);
oci_close($conn);

?>