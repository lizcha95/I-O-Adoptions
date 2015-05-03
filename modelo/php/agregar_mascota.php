<?php

$conn = oci_connect('User1', 'User1', 'PROYECTOUNO');
if (!$conn)
    echo "Connection Failure";

$Nombre = ($_GET["nombremascota"]);
$Tipo = ($_GET["tipo"]);
$Raza = ($_GET["raza"]);
$Tamano = ($_GET["tamano"]);
$Color = ($_GET["color"]);
$EstadoCrecimiento = ($_GET["estadocrecimiento"]);
$EstadoFisico = ($_GET["estadofisico"]);
$FacilidadEntrenamiento = ($_GET["facilidadentrenamiento"]);
$NivelEnergia = ($_GET["nivelenergia"]);
$ActividadFisica = ($_GET["actividadfisica"]);
$DuenoAnterior = ($_GET["ceduladuenoanterior"]);

echo $Nombre.", ".$Tipo.", ".$Raza.", ".$Tamano.", ".$Color.", ".$EstadoCrecimiento.", ".$EstadoFisico.", ".$FacilidadEntrenamiento.", ".$NivelEnergia.", ".$ActividadFisica.", ".$DuenoAnterior;

$stid=oci_parse($conn,"begin addMascota(:pNombre, :pEstadoCrecimiento, :pEstadoFisico, :pRazaMascota, :pTamanoMascota, :pColorMascota, :pFacilidadEntrenamiento, :pActividadFisica, :pNivelEnergia, :pDuenoAnterior, 2, 0); end;");


oci_bind_by_name($stid, ':pDuenoAnterior', $DuenoAnterior);
oci_bind_by_name($stid, ':pNombre', $Nombre);
oci_bind_by_name($stid, ':pEstadoCrecimiento', $EstadoCrecimiento);
oci_bind_by_name($stid, ':pEstadoFisico', $EstadoFisico);
oci_bind_by_name($stid, ':pRazaMascota', $Raza);
oci_bind_by_name($stid, ':pTamanoMascota', $Tamano);
oci_bind_by_name($stid, ':pColorMascota', $Color);
oci_bind_by_name($stid, ':pFacilidadEntrenamiento', $FacilidadEntrenamiento);
oci_bind_by_name($stid, ':pActividadFisica', $ActividadFisica);
oci_bind_by_name($stid, ':pNivelEnergia', $NivelEnergia);

echo oci_execute($stid);
oci_commit($conn);
oci_free_statement($stid);
oci_close($conn);


?>