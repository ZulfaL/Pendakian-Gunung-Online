<?php

include("sys/koneksi.php");

$id = $_GET["id"];
$select = mysqli_query($koneksi, "select * from jadwal where id_jadwal=$id");
while($data=mysqli_fetch_array($select)){
	$tanggal = $data["tanggal"];
	$harga = $data["harga"];
}

?>
<!DOCTYPE html>
<html lang="id">
	<head>
		<title>Form Pendaftaran</title>
		<meta charset="UTF-8">
		<meta name="description" content="Open Trip Pendakian">
		<meta name="keywords" content="HTML, CSS, JAVASCRIPT">
		<meta name="author" content="Kelompok 7">
		<meta name="viewport" content="width=device width, initial-scale=1.0">
		<link rel="stylesheet" type="text/css" href="style.css">
		<script src="java1.js">
		</script>

	</head>
	<body class="bg">
		<!-- Header dan Menu -->
		<!--sebagai konstraktor penampung elemen-elemen pada header-->
		<div class="header">
			<!--Membuat list menu header berupa halaman yang dituju-->
			<ul>	
				<li><a href="payment.html">Pembayaran</a></li>
				<li><a href="tutorial.html">Tutorial Pendaftaran</a></li>
				<li><a href="sop.html">SOP Pendakian</a></li>
				<li><a href="index.html">Home</a></li>
			</ul>
			<!--Memberi logo pada header web-->
			<img class="logo" src="./foto/logo1.0.png" alt="Gambar_Gunung">
			<!--Memberi judul web-->
			<p class="title">mountainesia</p>
		</div>
	<!-- Akhir Header dan Menu -->
		<div class="atas">
			<div class="tengah">
				<div class="ibox float-e-margins">
					<h2 class="tengah">Form Pendaftaran Pendakian Online</h2>
					<div class="boxkonten">
						
						<div class="boxisi">
							<form name="myForm" id="myForm" action="sys/register.php" method="post">
								<input type="hidden" name="id_jadwal" value="<?php echo $id ?>">
								<input type="hidden" name="harga" value="<?php echo $harga ?>">
								<div class="jarak">
									<label for="tanggal">Tanggal Pendakian</label>
									<input type="date" id="tanggal" name="tanggal" placeholder="yyyy-mm-dd" value="<?php echo $tanggal ?>" readonly>
								</div>
								<div class="jarak">
									<label for="jenis_pendakian">Jenis Pendakian</label><br>
									<input type="radio" id="jenis_pendakian" name="jenis_pendakian" value="individu"> Individu
									<input type="radio" name="jenis_pendakian" value="kelompok"> Kelompok
								</div>
								<div class="jarak">
									<label for="email">Email </label>
									<input id="email" name="email" type="email" placeholder="zulfaleli8@gmail.com" required>
									
								</div>
								<hr>
								<h2>Anggota 1</h2>
								<div class="jarak">
									<label for="anggota">Jumlah Anggota</label><br>
									<input type="number" id="jumAnggota" name="jumAnggota" min="1" max="10" value="1" onblur="validasi_anggota()"> 
								</div>
								<div class="jarak">
									<label for="nama">Nama Lengkap</label>
									<input id="nama" name="nama_1" type="text" placeholder="Nama Anda" onblur="validasi_nama('nama','error_nama')" required> <!--onblur : event dimana mouse terlepas dari event fokus-->
									<div id="error_nama"> <!-- tempat pesan error akan dimunculkan -->
									</div>
								</div>
								<div class="jarak">
									<label for="nik">NIK</label>
									<br><input name="nik_1" id="telephone" placeholder="xxxxxxxxx" type="tel" onblur="validasi_telephone()"> 
									<div id="error_telephone"></div>
								</div>
								<div class="jarak">
									<label for="tanggal">Tanggal Lahir</label> 
									<input type="text" id="tanggal" name="tgl_lahir_1" placeholder="yyyy-mm-dd" onblur="validasi_birthdate()">
									
								</div>

								<div class="jarak">
									<p>Jenis Kelamin</p>
									<label for="male">Laki-laki</label> 
									<input name="jk_1" id="male" value="L" type="radio">
									<label for="female">Perempuan</label> 
									<input name="jk_1" id="female" value="P" type="radio">
								</div> 

								<div class="jarak">
									<label for="alamat">Alamat</label>
									<textarea id="alamat" name="alamat_1" placeholder="Alamat Lengkap" onblur="validasi_alamat()"></textarea>
									<div id="error_alamat"></div>
								</div>
								
								<div class="jarak">
									<label for="telephone">Nomor Telepon</label>
									<br><input name="no_tlp_1" id="telephone" placeholder="xxxxxxxxx" type="tel" onblur="validasi_telephone()"> 
									<div id="error_telephone"></div>
								</div>
								
								<div id="form_anggota"></div>
								
								<br>
								<div class="jarak">
									<input id="list" name="list" type="checkbox" required>
									<label for="list">Saya menyatakan data telah sesuai identitas yang masih berlaku.</label>
								</div>
								<div class="jarak">
									<input type="submit" name="Kirim" value="Kirim">
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	<!-- Footer -->

		<div class="footer">
			<!-- Memberi isi keterangan footer -->
			<p>DASZ Mountainesia Departement | Copyright 2021 <br>Gunung Argopuro</p>
		</div>

	<!-- Akhir Footer -->
	</body>
</html>