<?php
	$title = 'Edit Post - Admin';
	session_start();
	require_once('../inc/dbconfig.php');

	if(!isset($_SESSION['username']))
	{
		echo '<script>window.location.href = "../admin/login.php";</script>';
		die();
	}
?>

<script>
        $(document).ready(function() {
        $('#content').summernote({
        	height: 300,
        });
    });
</script>

<?php
	
	$id = $_GET['id'];

	$query = "SELECT id, tags, description, post_date, catinfo FROM blog_posts WHERE id = '$id'";
				$result = mysqli_query($con,$query);

				if (mysqli_num_rows($result) > 0)
				{
					while($row = mysqli_fetch_assoc($result))
					{
			            $tags = $row['tags'];
			            $description = $row['description'];
					}
				}
				else
				{
					echo '<div class="alert alert-warning text-center topspace"><h3>error while retriving post!</h3></div>';
					die();
				}


	if (isset($_POST['update'])) 
	{
		$tags = $_POST['tags'];
		$tags = stripslashes($tags);
		$tags = mysqli_real_escape_string($con,$tags);

		$description = $_POST['description'];
		$description = stripslashes($description);
		$description = mysqli_real_escape_string($con,$description);

		$catvalue = $_POST['cats'];
		$catvalue = stripslashes($catvalue);

		$query = "UPDATE blog_posts SET tags='$tags',description='$description',post_date=NOW() ,catinfo='$catvalue' WHERE id='$id'";

		mysqli_query($con,$query);

		$rows = mysqli_affected_rows($con);

			if($rows == 1)
			{
				echo '<div class="alert alert-success topspace"><h3>Post Edited Sccessfully, Redirecting to Edited Post</h3></div>';
				echo '<script>setTimeout(function () { window.location.href = "index.php";}, 2000);</script>';
			}
			else
			{
				echo '<script>
				var id = <?php echo $id; ?>;
				setTimeout(function () { window.location.href = "edit.php";}, 2000);</script>';
				die('error in posting');
				
			}
	}

?>
<center>
<div class="aboutbox">
	<div class="container topspace">
		<div class="form-wrapper">
			<form class="" method="post" action="<?php $PHP_SELF ?>">
				<h1 class="text-center"><u>Edit Post</u></h1>
				<div class="col-md-4" id="new-post-border">

					<div class="">
						<label for="description"><h3>Post Description</h3></label>
						<textarea name="description" rows="7" cols="60" maxlength="250" placeholder="Post Description" id="description" class="form-control space" style="background:red;color:white;" required><?php echo $description; ?></textarea>
					</div>
                    
                    <div class="">
						<label for="postTitle"><h3>Tags</h3></label>
						<input type="text" name="tags" placeholder="No Tags Inserted Yet" value="<?php echo $tags; ?>" class="form-control" style="background:red;color:white;" autofocus>
					</div>
					
					<div class="">
						<label for="content"><h3>Writter List</h3></label><br>
						<?php
							$query1 = "SELECT catID, catTitle FROM blog_cats";
							$result1 = mysqli_query($con,$query1);
							echo mysqli_error($con);
							if (mysqli_num_rows($result1) > 0)
							{
								while($row1 = mysqli_fetch_assoc($result1))
								{	
									echo '<div class="radio">
	  								<label><input type="radio" name="cats" value="'.$row1['catID'].'"><b>'.$row1['catTitle'].'</b></label>
									</div>';
								}
							}
						?>
					</div>
				</div>
				
					<div class="text-center">
						<button class="btn btn-lg btn-primary" name="update" type="submit" id="update">Update Post</button>
					</div>
			</form>
			</div></div></div>
			</center>
</body>
</html>