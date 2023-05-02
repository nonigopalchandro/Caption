<?php
require_once('head.php');
?>

<?php
	$id = $_GET['id'];
	$query = "SELECT id, contact FROM webcontact WHERE id = '$id'";
				$result = mysqli_query($conn,$query);

				if (mysqli_num_rows($result) > 0)
				{
					while($row = mysqli_fetch_assoc($result))
					{
			            $contact = $row['contact'];
					}
				}
				else
				{
					echo '<div class="alert alert-warning text-center topspace"><h3>error while retriving writters!</h3></div>';
					die();
				}
	
	if (isset($_POST['editcat'])) 
	{

		$contact = $_POST['contact'];
		$contact = stripslashes($contact);
		$contact = mysqli_real_escape_string($conn,$contact);
		
		$query = "UPDATE webcontact SET contact='$contact' WHERE id='$id'";
		mysqli_query($conn,$query);
		$rows = mysqli_affected_rows($conn);
		if($rows == 1)
		{
			echo '<div class="success-msg"><h3>Writter edited Sccessfully, Redirecting to Writters page</h3></div>';
			echo '<script>setTimeout(function () { window.location.href = "add-contact.php?action=edited";}, 2000);</script>';
		}
		else
		{
			echo '<div class="error-msg"><h3>error while editing contact details, please do some changes to update!</h3></div>';		
		}
			
	}

	mysqli_close($conn);

?>
<center>
<div class="aboutbox">
	<div class="container topspace">
		<div class="form-wrapper">
			<form class="" method="post" action="<?php $PHP_SELF ?>">
	  
	  <center><h1>Edit Contact</h1></center>
  	  <hr class="hr">
  	  <div class="">
		<textarea style="font-color:black;border:2px solid red;" class="textarea" name="contact" rows="7" cols="60" maxlength="250" id="contact" class="form-control space" style="background:red;color:white;"><?php echo $contact; ?></textarea>
	  </div>
  	  </br>
	  <div class="space">
	  <button class="btn btn-lg btn-primary space" name="editcat" type="submit" id="about">Edit Contact</button>
	  </div>
			</form>
	</div>
	</div>
	</center>

</body>
</html>