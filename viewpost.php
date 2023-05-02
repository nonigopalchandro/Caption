<?php
	$title = $_GET['title'];
	require_once('inc/dbconfig.php');
	$id = filter_var($_GET['id'], FILTER_SANITIZE_NUMBER_INT);
?>	
<div class="tryboxx2">
<div class="tbhdd">
<?php
	$query = "SELECT id, tags, postTitle, description, post_date, auther, catinfo FROM blog_posts WHERE id = '$id' LIMIT 5";
	$result = mysqli_query($con,$query);
    if (mysqli_num_rows($result) > 0)
	   {
		    while($row = mysqli_fetch_assoc($result))
	   {
			$forcat = "SELECT catID, catTitle, catSlug, birthplace, image FROM blog_cats WHERE catID = ".$row['catinfo']." LIMIT 5";
			$result1 = mysqli_query($con,$forcat);
			if (mysqli_num_rows($result1) > 0)
				{
				    while($row1 = mysqli_fetch_assoc($result1))
				{			
				    echo '<div style="font-size: 40px; color: #FFFFFF;"><a href="search.php?term='.$row1['catTitle'].'"><font style="color:white;">'.$row1['catTitle'].'</font></a></div>';
					echo '<div style="font-size: 20px; color: #FFFFFF;"><a href="search.php?term='.$row1['birthplace'].'"><font style="color:white;">'.$row1['birthplace'].'</font></a></div>';
				}
		}
echo '<center><button class="card2" id="card2" style="font-size:20px;" onclick="myFunction()">'.$row['description'].'</button></center>';
echo '<center></br><div class="social-icons2">
<a href="https://www.facebook.com/sharer/sharer.php?u=https://caption.com.bd/viewpost.php?id='.$row['id'].'&t='.$row['description'].'" title="facebook">
<i class="fa fa-facebook-square" aria-hidden="true"></i>
</a>
<a href="https://twitter.com/intent/tweet?url=https://caption.com.bd/viewpost.php?id='.$row['id'].'text='.$row['description'].'" title="twitter">
<i class="fa fa-twitter-square" aria-hidden="true"></i>
</a>
<a href="http://pinterest.com/pin/create/button/?url=https://caption.com.bd/viewpost.php?id='.$row['id'].'&media=https://caption.com.bd/admin/images/'.$row['image'].'&description='.$row['description'].'" title="pinterest">
<i class="fa fa-pinterest-square" aria-hidden="true"></i>
</a>
<a href="https://linkedin.com/shareArticle?url=https://caption.com.bd/viewpost.php?id='.$row['id'].'&title='.$row['description'].'" title="linkedin">
<i class="fa fa-linkedin-square" aria-hidden="true"></i>
</a>
</div></br></center>';
?>
			            
<script>
function myFunction() {
  var copyText = document.getElementById("card2");
  navigator.clipboard.writeText(copyText.textContent);
  // create popup
  var popup = document.createElement("div");
  popup.innerHTML = "copied!";
  popup.style.position = "absolute";
  popup.style.top = "50%";
  popup.style.left = "50%";
  popup.style.transform = "translate(-50%, -50%)";
  popup.style.background = "black";
  popup.style.border = "1px solid gray";
  popup.style.color = "white";
  popup.style.padding = "10px";
  copyText.appendChild(popup);
  // remove popup after 2 seconds
  setTimeout(function(){
    copyText.removeChild(popup);
  }, 2000);
}
</script>
</div>
			            
<?php
// Retrieve tags for post with specific ID
$id = filter_var($_GET['id'], FILTER_SANITIZE_NUMBER_INT);
$query = "SELECT tags FROM blog_posts WHERE id = $id";
$result = mysqli_query($con, $query);

// Check if query was successful
if (!$result) {
  die("Error retrieving tags: " . mysqli_error($con));
}

// Output the tags as a list in HTML
if ($row = mysqli_fetch_assoc($result)) {
  $tags = explode(',', $row['tags']);
  echo '<ul class="tag-list"> Tags: ';
  foreach ($tags as $tag) {
    echo '<li class="tag"><a href="search.php?term=' . htmlspecialchars($tag) . '">' . htmlspecialchars($tag) . '</a></li>';
  }
  echo '</ul>';
} else {
  echo 'No tags found.';
}
?>
</div>
<div class="detailbox">

<?php
    }
	$catq = "SELECT catID, catTitle, catSlug FROM blog_cats LIMIT 6";
	$result3 = mysqli_query($con,$catq);
	if (mysqli_num_rows($result3) > 0)
	{
	echo '<div style="font-size: 28px; color: #6d6e70; text-align: center;">More Writters</div><hr class="wbhr" /><div style="background: #d1d2d4; border-radius: 16px; color: #000000; padding: 10px 18px 10px 18px; font-size: 18px; margin: 8px 0 18px 0; opacity: 0.6;">';
	while($row3 = mysqli_fetch_assoc($result3))
	{
					           
	$catnum = "SELECT id, catinfo FROM blog_posts WHERE catinfo = ".$row3['catID']."";
	$rescat = mysqli_query($con,$catnum);
	$num = mysqli_num_rows($rescat);

	echo '<li class="list-group-item"><a href="writter.php?catid='.$row3['catID'].'&writter='.$row3['catTitle'].'">'.$row3['catTitle'].'&nbsp;&nbsp;&nbsp;&nbsp;</a></li>';
	}

	echo '</div><a href="/all-writter.php">View All</a></div>';

	    }
	}
	else
	{
	echo '<div class="alert alert-warning text-center"><h3>error while retriving writters!</h3></div>';
	die();
	}?>
</div>

<a class="othersFont">Top Today</span></a>

<div class="fontboxcontainer" style="height: auto !important;display:inline-table;">
<?php
 $sql = "SELECT * FROM blog_posts INNER JOIN blog_cats ON blog_posts.catinfo = blog_cats.catID ORDER BY post_date DESC LIMIT 21";  
 $result = mysqli_query($con, $sql);  
 ?>  
 
<?php  
if(mysqli_num_rows($result) > 0)  
{  
while($row = mysqli_fetch_array($result))  
{  
?> 
<div class="fontbox">
<div class="fonttitle"><?php echo $row['catTitle']?></div>
<div class="preview" style="font-family: ManowarNihar; font-size: 20px">
    <fontpriview>
    <?php
        $description = $row['description'];
        $max_length = 211;

        if(strlen($description) > $max_length) {
        $description = substr($description, 0, $max_length) . '...';
        }
        echo $description;
        ?>
    <fontpriview>
</div>
<table width="100%">
<tbody><tr>
<td>
<center>
<div class="fontdetails">
<i class="fa fa-graduation-cap" aria-hidden="true"></i> 
<?php echo $row['profession']?><danda> | </danda> 
<i class="fa fa-map-marker" aria-hidden="true"></i> 
<?php echo $row['nationality']?> <danda> | </danda> 
<i class="fa fa-birthday-cake" aria-hidden="true"></i> 
<?php echo date('d M Y', strtotime($row['birthday'])); ?> </div>
</center>
</td>
</tr>
</tbody></table>
<input type="button" class="download" value="Read More" onclick="window.location.href='viewpost.php?id=<?php echo $row['id']?>'" />

</div>
<?php
}
}
?>
</div>
</div>


<?php 
require_once('inc/footer.php');
?>