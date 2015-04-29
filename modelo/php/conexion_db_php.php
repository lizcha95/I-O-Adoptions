<?php

$con = oci_connect('User1', 'User1', 'PROYECTOUNO');
if ($con)
    echo "Great Success";
else
    echo "Connection Failure";
?>