<?php

include ("oraDatabase.php");

if(isset($_GET["pParam"]))
{
    $Tipo = ($_GET["pParam"]);
    read('select * from TABLE(get_razas_mascotas('.$Tipo.'))');
}
?>