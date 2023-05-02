<?php
require_once('head.php');
?>

<?php
	$id = $_GET['id'];
	$query = "SELECT id, terms FROM webterms WHERE id = '$id'";
				$result = mysqli_query($conn,$query);

				if (mysqli_num_rows($result) > 0)
				{
					while($row = mysqli_fetch_assoc($result))
					{
			            $terms = $row['terms'];
					}
				}
				else
				{
					echo '<div class="alert alert-warning text-center topspace"><h3>error while retriving writters!</h3></div>';
					die();
				}
	
	if (isset($_POST['editcat'])) 
	{

		$terms = $_POST['terms'];
		$terms = stripslashes($terms);
		$terms = mysqli_real_escape_string($conn,$terms);
		
		$query = "UPDATE webterms SET terms='$terms' WHERE id='$id'";
		mysqli_query($conn,$query);
		$rows = mysqli_affected_rows($conn);
		if($rows == 1)
		{
			echo '<div class="success-msg"><h3>Writter edited Sccessfully, Redirecting to Writters page</h3></div>';
			echo '<script>setTimeout(function () { window.location.href = "add-terms.php?action=edited";}, 2000);</script>';
		}
		else
		{
			echo '<div class="error-msg"><h3>error while editing terms details, please do some changes to update!</h3></div>';		
		}
			
	}

	mysqli_close($conn);

?>
<center>
<div class="aboutbox">
	<div class="container topspace">
		<div class="form-wrapper">
			<form class="" method="post" action="<?php $PHP_SELF ?>">
	  
	  <center><h1>Edit Terms</h1></center>
  	  <hr class="hr">
  	  <div class="">
		<textarea style="font-color:black;border:2px solid red;" class="textarea" name="terms" rows="7" cols="60" maxlength="250" id="contact" class="form-control space" style="background:red;color:white;" required><?php echo $terms; ?></textarea>
	  </div>
  	  </br>
	  <div class="space">
	  <button class="btn btn-lg btn-primary space" name="editcat" type="submit" id="about">Edit Terms</button>
	  </div>
			</form>
	</div>
	</div>
	</center>

</body>
</html>