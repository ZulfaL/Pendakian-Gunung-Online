<?php 
    include("sys/koneksi.php");

    for($i=1; $i<=30; $i++){
        $insert = mysqli_query($koneksi,"INSERT INTO jadwal values(null, '2021-12-$i', 100, 50000)");
    }


?>