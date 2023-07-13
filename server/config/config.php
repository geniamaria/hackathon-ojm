<?php

$dbconfig = parse_ini_file('.env');

$host_name = $dbconfig['HOST_NAME'];
$database_name = $dbconfig['DATABASE'];
$user_name = $dbconfig['USERNAME'];
$password = $dbconfig['PASSWORD'];

?>