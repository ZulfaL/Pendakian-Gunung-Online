<!DOCTYPE html>
<html lang="id">
	<head>
		<meta charset="UTF-8">
		<meta name="description" content="Open Trip Pendakian">
		<meta name="keywords" content="HTML, CSS, JAVASCRIPT">
		<meta name="author" content="Kelompok 7">
		<meta name="viewport" content="width=device width, initial-scale=1.0">
		<title>Form Pendaftaran</title>
		<link rel="stylesheet" type="text/css" href="style.css"> 
	</head>
	<body>
		<div class="tinggi">
			<div class="selamat">
				<h3>Nomor ID Virtual Account Anda</h3>
				<p><?php echo $_GET["id"]; ?></p>
				<h3>Total yang harus dibayarkan :</h3>
				<p>Rp.<?php echo $_GET["harga"]; ?> </p>
				<a href="index.html">Kembali ke Halaman Awal</a>
			</div>
		</div>
		<div class="footer">
			<!-- Memberi isi keterangan footer -->
			<p>DASZ Mountainesia Departement | Copyright 2021 <br>Gunung Argopuro</p>
		</div>
	</body>
</html>
