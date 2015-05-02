<?php

include ("oraDatabase.php");

if(isset($_GET["Provincia"]))
{
    $Provincia = ($_GET["Provincia"]);
    read('select * from TABLE(getcantones('.$Provincia.'))');
}

?>