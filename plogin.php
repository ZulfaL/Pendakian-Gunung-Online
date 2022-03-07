<?php
    session_start();
    require 'sys/koneksi.php';

    $username = $_POST['uname'];
    $password = md5($_POST['psw']);

    $query = $koneksi->query('select * from login where username = "'.$username.'" and password = "'.$password.'" ');

    if($_SESSION["code"] == $_POST['kodecaptcha']){
        if($query->num_rows > 0){
            header('Location: index.html');
        }else{
            echo "login failed";
        }
    }else{
        echo "Kode Captcha Salah";
    }
    
    
?>