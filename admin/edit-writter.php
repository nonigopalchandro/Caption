<?php
	$title = 'Edit Writter - Admin';
	session_start();
	require_once('../inc/dbconfig.php');
	$auther = $_SESSION['username'];

	if(!isset($_SESSION['username']))
	{
		echo '<script>window.location.href = "../admin/login.php";</script>';
		die();
	}

	$id = $_GET['id'];

	$query = "SELECT catID, catTitle, catSlug, image, birthday, facebook, twitter, linkdin, youtube, about, deathdate, profession, nationality, zodiac, birthplace FROM blog_cats WHERE catID = '$id'";
				$result = mysqli_query($con,$query);

				if (mysqli_num_rows($result) > 0)
				{
					while($row = mysqli_fetch_assoc($result))
					{
			            $catTitle = $row['catTitle'];
			            $catSlug = $row['catSlug'];      
			            $image = $row['image'];  
			            
			            $birthday = $row['birthday'];
			            $facebook = $row['facebook'];      
			            $twitter = $row['twitter'];  
			            
			            $linkdin = $row['linkdin'];
			            $youtube = $row['youtube'];      
			            $about = $row['about'];  
			            
			            $deathdate = $row['deathdate'];
			            $profession = $row['profession'];      
			            $nationality = $row['nationality']; 
			            
			            $birthplace = $row['birthplace'];
			            $zodiac = $row['zodiac'];      
					}
				}
				else
				{
					echo '<div class="alert alert-warning text-center topspace"><h3>error while retriving writters!</h3></div>';
					die();
				}
	
	if (isset($_POST['editcat'])) 
	{

		$catTitle = $_POST['catTitle'];
		$catTitle = stripslashes($catTitle);
		$catTitle = mysqli_real_escape_string($con,$catTitle);

		$catSlug = $_POST['catSlug'];
		$catSlug = stripslashes($catSlug);
		$catSlug = mysqli_real_escape_string($con,$catSlug);
		
		$birthday = $_POST['birthday'];
		$birthday = stripslashes($birthday);
		$birthday = mysqli_real_escape_string($con,$birthday);
		
		$facebook = $_POST['facebook'];
		$facebook = stripslashes($facebook);
		$facebook = mysqli_real_escape_string($con,$facebook);
		
		$twitter = $_POST['twitter'];
		$twitter = stripslashes($twitter);
		$twitter = mysqli_real_escape_string($con,$twitter);
		
		$linkdin = $_POST['linkdin'];
		$linkdin = stripslashes($linkdin);
		$linkdin = mysqli_real_escape_string($con,$linkdin);
		
		$youtube = $_POST['youtube'];
		$youtube = stripslashes($youtube);
		$youtube = mysqli_real_escape_string($con,$youtube);
		
		$about = $_POST['about'];
		$about = stripslashes($about);
		$about = mysqli_real_escape_string($con,$about);

        $birthplace = $_POST['birthplace'];
		$birthplace = stripslashes($birthplace);
		$birthplace = mysqli_real_escape_string($con,$birthplace);
		
		$deathdate = $_POST['deathdate'];
		$deathdate = stripslashes($deathdate);
		$deathdate = mysqli_real_escape_string($con,$deathdate);
		
		$profession = $_POST['profession'];
		$profession = stripslashes($profession);
		$profession = mysqli_real_escape_string($con,$profession);
		
		$nationality = $_POST['nationality'];
		$nationality = stripslashes($nationality);
		$nationality = mysqli_real_escape_string($con,$nationality);
		
		$zodiac = $_POST['zodiac'];
		$zodiac = stripslashes($zodiac);
		$zodiac = mysqli_real_escape_string($con,$zodiac);
		
		$image = $_FILES['image']['name'];
        $temp_image = $_FILES['image']['tmp_name'];
        $image_size = $_FILES['image']['size'];

        // Check if a new image has been uploaded
        if($image_size == 0) {
            // If no new image, keep the previous image
            $image = $image;
        } else {
            // If a new image is uploaded, replace the previous image
            $upload_dir = 'images/';
            move_uploaded_file($temp_image, $upload_dir . $image);
        }

		$query = "UPDATE blog_cats SET catTitle='$catTitle', catSlug='$catSlug', image='$image', birthday='$birthday', facebook='$facebook', twitter='$twitter', linkdin='$linkdin', youtube='$youtube', about='$about', birthplace='$birthplace', deathdate='$deathdate', profession='$profession', nationality='$nationality', zodiac='$zodiac' WHERE catID='$id'";
		mysqli_query($con,$query);
		$rows = mysqli_affected_rows($con);
		if($rows == 1)
		{
			echo '<div class="alert alert-success topspace"><h3>Writter edited Sccessfully, Redirecting to Writters page</h3></div>';
			echo '<script>setTimeout(function () { window.location.href = "writter.php?action=edited";}, 2000);</script>';
		}
		else
		{
			echo '<div class="text-center alert alert-danger topspace"><h3>error while editing Writer, try again!</h3></div>';		
		}
			
	}

	mysqli_close($con);

?>
<center>
<div class="aboutbox">
	<div class="container topspace">
		<div class="form-wrapper">
			<form class="" method="post" enctype="multipart/form-data" action="<?php $PHP_SELF ?>">
				
        <div class="space">
		<label for="catTitle"><h2>Writter Name</h2></label>
		<input type="text" name="catTitle" placeholder="Writter Name" value="<?php echo $catTitle; ?>" id="catTitle" class="form-control" style="background:red;" required autofocus>
		</div>
				
		<div class="space">
		<label for="slug"><h2>Slug</h2></label>
		<input type="text" name="catSlug" placeholder="Writter Slug" id="catSlug" value="<?php echo $catSlug; ?>" class="form-control space" style="background:red;" required>
		</div>
  	  
  	  <input type="hidden" name="size" value="1000000">
  	  <div class="space">
  	  <label for="image"><h2>Writter Image</h2></label>
  	  <img style="border-redius:8px;max-height:100%;max-width:100%;margin:5px;border:4px solid #EAEAEA;width:250px;height:auto;" src="images/<?php echo $image; ?>"/>
  	  </br>
  	  <div class="upload-btn-wrapper">
  	  </br>
  	  <button class="btn">Upload Image</button>
  	  <input type="file" name="image">
  	  </div>
  	  </div>
  	  
  	  <div class="space">
  	  <label for="birthday"><h2>Writter Birthday</h2></label>
  	  <input type="date"  id="birthday" name="birthday" value="<?php echo $birthday; ?>">
  	  </div>
  	  
  	  <div class="space">
	  <label for="facebook"><h2>Facebook</h2></label>
	  <input type="text" name="facebook" placeholder="Facebook Profile Link" value="<?php echo $facebook; ?>" id="facebook" class="form-control" style="background:red;">
	  </div>
	  
	  <div class="space">
	  <label for="twitter"><h2>Twitter</h2></label>
	  <input type="text" name="twitter" placeholder="Twitter Profile Link" value="<?php echo $twitter; ?>" id="twitter" class="form-control" style="background:red;">
	  </div>
	  
	  <div class="space">
	  <label for="linkdin"><h2>Linkdin</h2></label>
	  <input type="text" name="linkdin" placeholder="Linkdin Profile Link" value="<?php echo $linkdin; ?>" id="linkdin" class="form-control" style="background:red;">
	  </div>
	  
	  <div class="space">
	  <label for="youtube"><h2>YouTube</h2></label>
	  <input type="text" name="youtube" placeholder="YouTube Channel Link" value="<?php echo $youtube; ?>" id="youtube" class="form-control" style="background:red;">
	  </div>
	  
	  <label for="about"><h2>About</h2></label>
  	  
  	  <div class="">
		<textarea name="about" rows="7" cols="60" maxlength="5000" placeholder="write about this person" id="description" class="form-control space" style="background:red;color:white;"><?php echo htmlentities($about);?></textarea>
	  </div>
  	  
  	  <div class="space">
	  <label for="birthplace"><h2>Place Of Birth</h2></label>
	  <input type="text" name="birthplace" placeholder="Birth Place" value="<?php echo $birthplace; ?>" id="birthplace" class="form-control" style="background:red;">
	  </div>
	  
	  <div class="space">
	  <label for="deathdate"><h2>Date Of Death</h2></label>
	  <input type="date" id="deathdate" name="deathdate" value="<?php echo $deathdate; ?>">
	  </div>
	  
	  <div class="space">
	  <label for="profession"><h2>Profession</h2></label>
	  <input type="text" name="profession" placeholder="Profession" value="<?php echo $profession; ?>" id="profession" class="form-control" style="background:red;">
	  </div>
	  
	  <div class="space">
	  <label for="nationality"><h2>Nationality</h2></label>
	  <input type="text" name="nationality" placeholder="Nationality" value="<?php echo $nationality; ?>" id="nationality" class="form-control" style="background:red;">
	  </div>
	  
	  <div class="space">
	  <label for="zodiac"><h2>Zodiac Sign</h2></label>
	  <input type="text" name="zodiac" placeholder="Zodiac Sign" value="<?php echo $zodiac; ?>" id="zodiac" class="form-control" style="background:red;">
	  </div>
	
	</br>
	  <div class="space">
	  <button class="btn btn-lg btn-primary space" name="editcat" type="submit" id="addcat">Edit Writter</button>
	  </div>
			</form>
		</div>
	</div>
	</div>
	</center>
	
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
</body>
</html>