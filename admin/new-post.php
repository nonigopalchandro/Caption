<?php
	$title = 'New Post - Admin';
	session_start();
	require_once('../inc/dbconfig.php');
	if(!isset($_SESSION['username']))
	{
		echo '<script>window.location.href = "../admin/login.php";</script>';
		die();
	}
	
	$auther = $_SESSION['username'];


	if (isset($_POST['publish'])) 
	{

		$postTitle = $_POST['postTitle'];
		$postTitle = stripslashes($postTitle);
		$postTitle = mysqli_real_escape_string($con,$postTitle);

		$description = $_POST['description'];
		$description = stripslashes($description);
		$description = mysqli_real_escape_string($con,$description);

		$catvalue = $_POST['cats'];
		$catvalue = stripslashes($catvalue);

        $tags = $_POST['tags'];
        $tags = stripslashes($tags);
        $tags = mysqli_real_escape_string($con,$tags);
        
		$query = "INSERT INTO blog_posts (id, tags, postTitle, description, post_date, auther, catinfo) VALUES (NULL, '$tags', '$postTitle', '$description', NOW(), '$auther','$catvalue')";
		mysqli_query($con,$query);
		
		$rows = mysqli_affected_rows($con);

		if($rows == 1)
		{
			echo '<div class="alert alert-success topspace"><h3>Post Published Sccessfully, Redirecting to Admin Panel</h3></div>';
			echo '<script>setTimeout(function () { window.location.href = "index.php";}, 2000);</script>';
		}
		else
		{
			echo '<div class="topspace alert alert-danger"><h3>error while posting, try again!</h3></div>';		
		}

	}

?>

<script>
        $(document).ready(function() {
        $('#content').summernote({
        	height: 300,
        });
    });
</script>

 <style>
  .upload-btn-wrapper {
  position: relative;
  overflow: hidden;
  display: inline-block;
}

.btn {
  border: 2px solid red;
  color: red;
  background-color: white;
  padding: 8px 20px;
  border-radius: 8px;
  font-size: 20px;
  font-weight: bold;
}

.upload-btn-wrapper input[type=file] {
  font-size: 100px;
  position: absolute;
  left: 0;
  top: 0;
  opacity: 0;
}


input[type="date"]{
    background-color: #0080ff;
    padding: 15px;
    font-family: "Roboto Mono",monospace;
    color: #ffffff;
    font-size: 18px;
    border: none;
    outline: none;
    border-radius: 5px;
}
::-webkit-calendar-picker-indicator{
    background-color: #ffffff;
    padding: 5px;
    cursor: pointer;
    border-radius: 3px;
}
  </style>
  
<center>
<div class="aboutbox">
	<div class="container-fluid topspace">
			<form class="" method="post" action="<?php $PHP_SELF ?>">
				<h1 class="text-center"><center>Add New Post</center></h1>
				<hr class="hr">
				<div class="col-md-4" id="new-post-border">

					<div class="">
						<label for="description"><h3>Content</h3></label>
						<textarea name="description" rows="7" cols="60" maxlength="250" placeholder="write content those are wroted by selected writter" id="description" class="textarea" style="font-color:black;border:2px solid red;" required></textarea>
					</div>

                    <div class="">
                        <label for="tags"><h3>Tags</h3></label>
                        <input type="text" name="tags" placeholder="Enter comma separated tags" id="tags" style="background:red;color:white;" class="form-control">
                    </div>
                    
					<div class="">
						<label for="content"><h3>Select Writter</h3></label>
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
				</br>
				<div class="col-md-8">
					<div class="text-center">
						<button class="btn" name="publish" type="submit" id="publish">Publish Now</button>
				</div>
				</div>		
				
			</form>
	</div>
	</div>
	</center>

<?php
require_once('footer.php');
?>