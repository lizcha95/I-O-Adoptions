<?php

include ("oraDatabase.php");

if(isset($_GET["Pais"]))
{
    $Pais = ($_GET["Pais"]);
    read('select * from TABLE(getprovincias('.$Pais.'))');
}

?>
