<html>
	<header>
		<title>Halaman Login</title>
		<link rel="stylesheet" type="text/css" href="login_coba.css">
	</header>
	<body>
		<div id="container">
			<h4>LogIn ADMIN</h4>
	        <form method="post" action = "pregister.php">
	         	<!-- <img id="logo" src="gambar/logo.png"> -->
	            <label for="email">Email:</label>
	            <input type="text" name="email" placeholder="user@example.com" required>
	            <label for="uname">Username:</label>
	            <input type="text" name="uname" placeholder="Masukan Username" required>
                <label for="psw">Password:</label>
	            <input type="password" name="psw" placeholder="Masukan Password" required>
                <label for="psw_confirmation"><b>Retype Password</b></label>
                <input type="password" placeholder="Retype Password" name="psw_confirmation" required>
				<label for="chaptcha">Captcha</label>
				<br><img src="captcha.php" alt="gambar">
				<br><input name="kodecaptcha" value="" maxlength="5" required>
	            <br><br><button type="submit">Register</button>
	        </form>
			<form method="post" role = "form" action = "login_coba.php">
	         	Sudah punya akun ?
				<button type="submit">Login</button>
	        </form>
		</div>
     </div>
	</body>
</html>