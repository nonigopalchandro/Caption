<?php
require_once('head.php');
?>

<?php 
if(isset($_POST['submit']))
{
	$terms = trim($_POST['content']);
	
	$sql = "insert into webterms (id, terms) values ('$id', '".$terms."')";
	$rs = mysqli_query($conn, $sql);
	$affectedRows = mysqli_affected_rows($conn);
	
	if($affectedRows == 1)
	{
		$successMsg = "Record has been saved successfully";
	}
	else{
	    $errorMsg = "Record already exists.! please try to edit.";
	}
}
?>

<?php  
$sql = "SELECT id, terms from webterms";
$result = mysqli_query($conn, $sql);  
?>  

<center>
<div class="aboutbox">
	<?php 
		if(isset($successMsg))
		{
			echo "<center><div class='success-msg'><h2>";
			print_r($successMsg);
			echo "</h2></div></center>";
		}
	?>
	
	<?php 
		if(isset($errorMsg))
		{
			echo "<center><div class='error-msg'><h2>";
			print_r($errorMsg);
			echo "</h2></div></center>";
		}
	?>

	<form action="<?php echo $_SERVER['PHP_SELF']?>" method="post">
		
		
		<center><h1>Write About</h1></center>
		<hr class="hr">
		<div>
			<textarea style="font-color:black;border:2px solid red;" class="textarea" rows="10" cols="60" name="content" placeholder="please write about your website" required></textarea>
		</div>
		
		<input class="btn" type="submit" name="submit" value="Submit">
		
	</form>
</div>




<center>
<div class="aboutbox">
<?php  
if(mysqli_num_rows($result) > 0)  
{  
while($row = mysqli_fetch_array($result))  
{  
?> 

<?php echo $row['terms']?>

<center><a href="delete-terms.php?id=<?php echo $row["id"]; ?>">Delete</a> | <a href="edit-terms.php?id=<?php echo $row["id"]; ?>">Edit</a></center>

<?php
}
}
?>
</div>
</center>



</center>

<?php
require_once('footer.php');
?>