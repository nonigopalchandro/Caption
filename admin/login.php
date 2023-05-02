<?php
	$title = 'Admin Panel - Login';
	session_start();
	require_once('../inc/dbconfig.php');
?>

<style>
    form {
			display: flex;
			flex-direction: column;
			align-items: center;
			margin-top: 50px;
			font-size: 20px;
			font-family: Arial, sans-serif;
		}

		label {
			display: block;
			margin-bottom: 10px;
			font-weight: bold;
		}

		input[type="text"], input[type="password"] {
			padding: 10px;
			border: 2px solid #ccc;
			border-radius: 5px;
			width: 300px;
			margin-bottom: 20px;
			font-size: 18px;
			font-family: Arial, sans-serif;
		}

		input[type="submit"] {
			padding: 10px 20px;
			background-color: #4CAF50;
			color: white;
			border: none;
			border-radius: 5px;
			cursor: pointer;
			font-size: 20px;
			font-family: Arial, sans-serif;
		}

		input[type="submit"]:hover {
			background-color: #3e8e41;
		}
</style>
    <center>
	<div class="aboutbox">
		<div class="form-wrapper">
			<form class="form-signin" method="post" action="">
				<h2 class="form-signin-heading">Admin login</h2>
				<input type="text" name="username" placeholder="Username" id="username" class="form-control" required autofocus>
				<br>
				<input type="password" name="password" placeholder="Password" id="password" class="form-control" required>
				<button class="btn btn-lg btn-primary btn-block" name="submit" type="submit" id="login">Login</button>
			</form>
		</div>
	</div>
	</center>
	
<script src="../js/bootstrap.min.js"></script>
</body>
</html>

<?php

	if (isset($_POST['submit'])) {
		
		$username = $_POST['username'];
		$username = stripslashes($username);
		$password = $_POST['password'];
		$password = stripslashes($password);

		$query = "SELECT * from login where username ='$username' AND password ='$password'";
		mysqli_query($con,$query);
		$rows = mysqli_affected_rows($con);

		if($rows == 1)
		{
			$_SESSION['username'] = $username;
			echo '<div class="text-center alert alert-success"><h3>Login Sccessfull, Redirecting to Admin Panel!</h3></div>';
			echo '<script>setTimeout(function () { window.location.href = "index.php";}, 1000);</script>';
		}
		else
		{
			echo '<div class="text-center alert alert-danger"><h3>Login Failed, Try Again!</h3></div>';
			echo '<script>setTimeout(function () { window.location.href = "login.php";}, 1000);</script>';
			die();	
		}
			
	}

	mysqli_close($con);

?>

<?php
require_once('../inc/footer.php');
?>