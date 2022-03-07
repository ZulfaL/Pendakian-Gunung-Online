<?php
	$koneksi = mysqli_connect("localhost","root","","pendaki");

	if(mysqli_connect_errno()){
		echo mysqli_connect_errno();
	}

?>