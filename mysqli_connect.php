<?php

//Connection
DEFINE ('DB_USER', 'legacygroupweb');
DEFINE ('DB_PASSWORD','uQHb8TnmHNDwiuI7');
DEFINE ('DB_HOST', '127.0.0.1');
DEFINE ('DB_NAME', 'LegacyGroup_Dashboard');

$dbc = @mysqli_connect(DB_HOST,DB_USER,DB_PASSWORD,DB_NAME) 
OR die('Could not connect to MySQL '. mysqli_connect_error());

?>