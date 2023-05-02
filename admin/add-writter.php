<?php
  $title = 'Add Writter';
	session_start();
	require_once('../inc/dbconfig.php');
	if(!isset($_SESSION['username']))
	{
		echo '<script>setTimeout(function () { window.location.href = "../admin/login.php";}, 5);</script>';
		die();
	}

  // If upload button is clicked ...
  if (isset($_POST['upload'])) {
  	// Get image name
  	$image = $_FILES['image']['name'];
  	// Get text
  	$name = mysqli_real_escape_string($con, $_POST['name']);

  	// image file directory
  	$target = "images/".basename($image);

        $catname = $_POST['catname'];
		$catname = stripslashes($catname);
		$catname = mysqli_real_escape_string($con,$catname);

		$slug = $_POST['slug'];
		$slug = stripslashes($slug);
		$slug = mysqli_real_escape_string($con,$slug);
		
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

		$query = "INSERT INTO blog_cats (catID, catTitle, catSlug, image, birthday, facebook, twitter, linkdin, youtube, about, birthplace, deathdate, profession, nationality, zodiac) VALUES (NULL, '$catname', '$slug', '$image', '$birthday', '$facebook', '$twitter', '$linkdin', '$youtube', '$about', '$birthplace', '$deathdate', '$profession', '$nationality', '$zodiac')";
		mysqli_query($con,$query);
		$rows = mysqli_affected_rows($con);
		if($rows == 1)
		{
			echo '<div class="alert alert-success topspace"><h3>Writter added Sccessfully, Redirecting to Writter page</h3></div>';
			echo '<script>setTimeout(function () { window.location.href = "writter.php?action=added";}, 2000);</script>';
		}
		else
		{
			echo '<div class="alert alert-danger topspace"><h3>error while adding Writter, try again!</h3></div>';		
		}
		


  	if (move_uploaded_file($_FILES['image']['tmp_name'], $target)) {
  		$msg = "Image uploaded successfully";
  	}else{
  		$msg = "Failed to upload image";
  	}
  }

?>
<br/>
<center>
    <div class="aboutbox">

  <form method="POST" action="add-writter.php" enctype="multipart/form-data">
      
      <div class="space">
		<input type="text" name="catname" placeholder="Writter Name" id="catname" class="form-control" style="background:red;" required autofocus>
	  </div>
		</br>	
	  <div class="space">
	  <input type="text" name="slug" placeholder="Writter Slug" id="slug" class="form-control" style="background:red;" required>
	  </div>
	  </br>	
	  <input type="hidden" name="size" value="1000000">
  	  <div class="upload-btn-wrapper">
  	      </br>
  	  <button class="btn">Upload Image</button>
  	  <input type="file" name="image">
  	  </div>
  	  </br>	
  	  <div class="space">
  	  <label for="birthday"><h4>Writter Birthday</h4></label>
  	  <input type="date"  id="birthday" name="birthday">
  	  </div>
  	

  	  </br>	
  	  <div class="space">
	  <input type="text" name="facebook" placeholder="Facebook Profile Link" id="facebook" style="background:red;" class="form-control">
	  </div>
	  </br>	
	  
	  <div class="space">
	  <input type="text" name="twitter" placeholder="Twitter Profile Link" id="twitter" style="background:red;" class="form-control">
	  </div>
	  </br>	
	  
	  <div class="space">
	  <input type="text" name="linkdin" placeholder="Linkdin Profile Link" id="linkdin" style="background:red;" class="form-control">
	  </div>
	  </br>	
	  
	  <div class="space">
	  <input type="text" name="youtube" placeholder="YouTube Channel Link" id="youtube" style="background:red;" class="form-control">
	  </div>
	  </br>	

  	  
  	  <div class="">
		<textarea name="about" rows="7" cols="60" maxlength="5000" placeholder="write about this person" id="description" class="textarea" style="background:red;border-radius: 25px;"></textarea>
	  </div>
	  
</br>	
  	  
  	  <div class="space">
	  <input type="text" name="birthplace" placeholder="Birth Place" id="birthplace" class="form-control" style="background:red;">
	  </div>

	  <div class="space">
	  <label for="birthday"><h4>Death Of Date</h4></label>
	  <input type="date"  id="deathdate" name="deathdate">
	  </div>
	  </br>	
	  <div class="space">
	  <input type="text" name="profession" placeholder="Profession" id="profession" class="form-control" style="background:red;">
	  </div>
	  </br>	
	  <div class="space">
	  <input type="text" name="nationality" placeholder="Nationality" id="nationality" class="form-control" style="background:red;">
	  </div>
	  </br>	
	  <div class="space">
	  <input type="text" name="zodiac" placeholder="Zodiac Sign" id="zodiac" class="form-control" style="background:red;">
	  </div>
	  </br></br>
  	<div>
  		<button class="btn btn-lg btn-primary space" type="submit" name="upload">Publish Now</button>
  	</div>
  	
  </form>
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
  
<?php
require_once('../inc/footer.php');
?>