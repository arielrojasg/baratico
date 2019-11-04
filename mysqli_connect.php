<?php
$user = $_POST['user'];
$pwd = $_POST['passw'];
//Connection
DEFINE ('DB_USER', $user);
DEFINE ('DB_PASSWORD', $pwd);
DEFINE ('DB_HOST', '127.0.0.1');
DEFINE ('DB_NAME', 'supermercado');

$dbc = @mysqli_connect(DB_HOST,DB_USER,DB_PASSWORD,DB_NAME);

if(!$dbc){
    header("Location:index.php?fail=true");
}else{

    session_start();
    $_SESSION['user'] = $user;
    //$_SESSION['role'] = $role;
    $_SESSION['login'] = TRUE;
    header("Location:home.php");
}

?>