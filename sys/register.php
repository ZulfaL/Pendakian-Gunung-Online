<?php 
    include("koneksi.php");

    $id_pendaftaran = date("dmYHis");


    $id_jadwal = $_POST["id_jadwal"];
    $jenis_pendakian = $_POST["jenis_pendakian"];
    $email = $_POST["email"];
    $jumAnggota = $_POST["jumAnggota"];
    $harga = $_POST["harga"];

    $insert = mysqli_query($koneksi,"INSERT INTO `pendaftaran` VALUES ($id_pendaftaran, '$jenis_pendakian', '$email', $jumAnggota, $id_jadwal)");
    $berhasil = false;
    
    if($insert){
        $berhasil = true;
    } else {
        $berhasil = false;
    }
    
    for($i=1; $i<=$jumAnggota; $i++){
        $nama = $_POST["nama_".$i];
        $nik = $_POST["nik_".$i];
        $tgl_lahir = $_POST["tgl_lahir_".$i];
        $jk = $_POST["jk_".$i];
        $alamat = $_POST["alamat_".$i];
        $no_tlp = $_POST["no_tlp_".$i];
        $insertA = mysqli_query($koneksi,"INSERT INTO `anggota` VALUES (NULL, '$nama', '$nik', '$jk', '$alamat', '$no_tlp', $id_pendaftaran)");
        if($insertA){
           $berhasil = true;
        }else{
            $berhasil = false;
        }
    }

    $harga = $jumAnggota*$harga;

    if($berhasil == true){
        ?>
        <script>
             alert("Berhasil");
             document.location = "../terimakasih.php?id=<?php echo $id_pendaftaran ?>&&harga=<?php echo $harga ?>";
         </script>
         <?php
    }else{
        echo mysqli_error($koneksi);
    }


?>