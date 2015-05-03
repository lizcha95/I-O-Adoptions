<?php

include ("oraDatabase.php");
    read('select * from TABLE(get_estados_fisicos())');

?>