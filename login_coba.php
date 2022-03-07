<html>
	<header>
		<meta charset="utf-8">
		<title>Halaman Login</title>
		<link rel="stylesheet" type="text/css" href="login_coba.css">
	</header>
	<body>
		<div id="container">
			<h4>LogIn</h4>
	        <form method="post" action = "plogin.php">
	            <label for="uname">Username:</label>
	            <input type="text" name="uname" placeholder="Masukan Username" required>
	            <label for="psw">Password:</label>
	            <input type="password" name="psw" placeholder="Masukan Password" required>
				<label for="chaptcha">Captcha</label>
				<br><img src="captcha.php" alt="gambar">
				<br><input name="kodecaptcha" value="" maxlength="5" required>
	            
				<br><br><button type="submit">Login</button>
	        </form>
			<form method="post" role = "form" action = "register.php">
	         	Belum punya akun ?
				<button type="submit">Register</button>
	        </form>
		</div>
     </div>
	</body>
</html>