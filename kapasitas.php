<?php

include("sys/koneksi.php");

if(!isset($_GET["bulan"])){
	header("location:kapasitas.php?bulan=1");
}

?>
<!DOCTYPE html>
<html lang="id">
	<head>
		<title>Mountainesia</title>
		<meta charset="utf-8">
		<meta name="description" content="Open Trip Pendakian">
		<meta name="keywords" content="HTML, CSS, JAVASCRIPT">
		<meta name="author" content="Kelompok 7">
		<meta name="viewport" content="width=device width, initial-scale=1.0">
		<link rel="stylesheet" type="text/css" href="style.css">

		<script>
			function jadwal(bulan){
				document.location ="kapasitas.php?bulan="+bulan.value;
			}
		</script>
	</head>
	<body>

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
					<h2 class="tengah">PILIH WAKTU KEBERANGKATAN</h2>
					<div class="boxkonten">
						<div class="boxisi">
							<form name="myForm" action="registerIndividu.html" method="post">
								<div class="jarak">
									<label for="bulan">Bulan </label>
									<br><select id="bulan" onchange="jadwal(this)">
										<option value="1" <?php if($_GET["bulan"] == 1){echo "selected";} ?> >Januari</option>
										<option value="2" <?php if($_GET["bulan"] == 2){echo "selected";} ?>>Februari</option>
										<option value="3" <?php if($_GET["bulan"] == 3){echo "selected";} ?>>Maret</option>
                                        <option value="4" <?php if($_GET["bulan"] == 4){echo "selected";} ?>>April</option>
										<option value="5" <?php if($_GET["bulan"] == 5){echo "selected";} ?>>Mei</option>
										<option value="6" <?php if($_GET["bulan"] == 6){echo "selected";} ?>>Juni</option>
                                        <option value="7" <?php if($_GET["bulan"] == 7){echo "selected";} ?>>Juli</option>
										<option value="8" <?php if($_GET["bulan"] == 8){echo "selected";} ?>>Agustus</option>
										<option value="9" <?php if($_GET["bulan"] == 9){echo "selected";} ?>>September</option>
                                        <option value="10" <?php if($_GET["bulan"] == 10){echo "selected";} ?>>Oktober</option>
										<option value="11" <?php if($_GET["bulan"] == 11){echo "selected";} ?>>November</option>
										<option value="12" <?php if($_GET["bulan"] == 12){echo "selected";} ?>>Desember</option>
									</select>
								</div>
                            </form>
                            <table>
                                <thead>
                                    <tr>
                                        <th>Tanggal</th>
                                        <th>Sisa Kuota</th>
                                        <th>Argopuro</th>
                                    </tr>
                                </thead>
                                <tbody>
									<?php
									
									$bulan = $_GET["bulan"];
									$select = mysqli_query($koneksi, "select * from jadwal where month(tanggal) = $bulan");
									while($data = mysqli_fetch_array($select)){
										?>

										<tr>
											<th><?php echo $data["tanggal"] ?></th>
											<th>
												<ul>
													<li>
														<h3 class="no-margins"><?php echo $data["kuota"] ?> Orang</h3>
													</li>
												</ul>
											</th>
											<th>
												<form method="POST" action="registerIndividu.php?id=<?php echo $data['id_jadwal'] ?>">
													<button type="submit">PILIH</button>
												</form>
											</th>
										</tr>

										<?php
									}
									
									?>
                                    
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer">
			<!-- Memberi isi keterangan footer -->
			<p>DASZ Mountainesia Departement | Copyright 2021 <br>Gunung Argopuro</p>
		</div>
    </body>
</html>

