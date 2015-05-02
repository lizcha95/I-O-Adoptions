<?php

include ("oraDatabase.php");

if(isset($_GET["tipo"]))
{
    $Tipo = ($_GET["tipo"]);
    read('select * from TABLE(get_razas_mascotas('.$Tipo.'))');
}
?>