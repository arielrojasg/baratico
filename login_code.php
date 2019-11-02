<?php
    require_once('mysqli_connect.php');
    // $email = $password =$pwd;

    // $email = $_POST['email'];
    // $pwd = $_POST['passw'];
    // $password = MD5($pwd);
    // $sql = "SELECT * FROM Users where email= '$email' AND password = '$password' ";
    // $result = mysqli_query($dbc, $sql);
    // if(mysqli_num_rows($result) > 0){
    //     while($row = mysqli_fetch_assoc($result)){
    //         session_start();
    //         $id = $row["id"];
    //         $email = $row["email"];
    //         $name = $row["name"];
    //         $last_name = $row["last_name"];
    //         $role = $row["role"];
    //         $_SESSION['id'] = $id;
    //         $_SESSION['email'] = $email;
    //         $_SESSION['name'] = $name;
    //         $_SESSION['last_name'] = $last_name;
    //         $_SESSION['role'] = $role;
    //         $_SESSION['login'] = TRUE;
    //     }
    //     header("Location:home.php");

    // }else{
    //     header("Location:index.php?fail=true");
    // }
    mysqli_close($dbc);
?>