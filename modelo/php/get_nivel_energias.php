<?php

include ("oraDatabase.php");
    read('select * from TABLE(get_nivel_energias())');

?>