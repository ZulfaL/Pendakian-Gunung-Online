<?php
    session_start();
    require 'sys/koneksi.php';

    $username = $_POST['uname'];
    $email = $_POST['email'];
    $password = md5($_POST['psw']);
    $password_confirmation = md5($_POST['psw_confirmation']);

    if($_SESSION["code"] == $_POST['kodecaptcha']){
        if($password == $password_confirmation){
            $query = $koneksi->query('insert into login(username,email,password) values("'.$username.'","'.$email.'","'.$password.'")');
            header("Location: index.html");
        } else{
            echo "Password tidak cocok";
        }
    }else{
        echo "Kode Captcha Salah";
    }
    
    
?>