<?php
	$title = 'Delete Writter - Admin';
	session_start();
	require_once('../inc/dbconfig.php');

	if(!isset($_SESSION['username']))
	{
		echo '<script>window.location.href = "../admin/login.php";</script>';
		die();
	}

	$id = $_GET['id'];
    $catID = $row['catID'];
	$q = "DELETE FROM blog_cats WHERE catID = '$id'";
	$result = mysqli_query($con,$q);
	if(mysqli_affected_rows($con)==1)
	{
	    echo '<div style="background:green;padding:5px;margin:5px;font-size:30px;border-radius:20px;color:white;" class="alert alert-warning topspace"><h3>the writter deleted successfully.</h3></div>';
		header('Location: writter.php?action=deleted');		
	}
	else
	{
		echo '<div class="alert alert-warning topspace"><h3>error while deleting writter</h3></div>';
	}

?>
<script>setTimeout(function() { location.replace("writter.php")},2000);</script>
<?php
require_once('footer.php');?>