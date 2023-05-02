<?php
require_once('head.php');
?>

<?php
	$id = $_GET['id'];
	$query = "SELECT id, about FROM webabout WHERE id = '$id'";
				$result = mysqli_query($conn,$query);

				if (mysqli_num_rows($result) > 0)
				{
					while($row = mysqli_fetch_assoc($result))
					{
			            $about = $row['about'];
					}
				}
				else
				{
					echo '<div class="alert alert-warning text-center topspace"><h3>error while retriving writters!</h3></div>';
					die();
				}
	
	if (isset($_POST['editcat'])) 
	{

		$about = $_POST['about'];
		$about = stripslashes($about);
		$about = mysqli_real_escape_string($conn,$about);
		
		$query = "UPDATE webabout SET about='$about' WHERE id='$id'";
		mysqli_query($conn,$query);
		$rows = mysqli_affected_rows($conn);
		if($rows == 1)
		{
			echo '<div class="success-msg"><h3>Writter edited Sccessfully, Redirecting to Writters page</h3></div>';
			echo '<script>setTimeout(function () { window.location.href = "add-about.php?action=edited";}, 2000);</script>';
		}
		else
		{
			echo '<div class="error-msg"><h3>error while editing about, please do some changes to update!</h3></div>';		
		}
			
	}

	mysqli_close($conn);

?>
<center>
<div class="aboutbox">
	<div class="container topspace">
		<div class="form-wrapper">
			<form class="" method="post" action="<?php $PHP_SELF ?>">
	  
	  <center><h1>Edit About</h1></center>
  	  <hr class="hr">
  	  <div class="">
		<textarea style="font-color:black;border:2px solid red;" class="textarea" name="about" rows="7" cols="60" maxlength="250" id="about" class="form-control space" style="background:red;color:white;"><?php echo $about; ?></textarea>
	  </div>
  	  </br>
	  <div class="space">
	  <button class="btn btn-lg btn-primary space" name="editcat" type="submit" id="about">Edit About</button>
	  </div>
			</form>
	</div>
	</div>
	</center>

</body>
</html>