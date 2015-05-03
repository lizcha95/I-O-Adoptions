<?php

include ("oraDatabase.php");
    read('select * from TABLE(get_tipos_mascotas())');

?>