<head>
    <title>
        All Writters - Caption Bangladesh
    </title>
</head>
<?php
	$title = $_GET['title'];
	require_once('inc/dbconfig.php');
	$id = filter_var($_GET['id'], FILTER_SANITIZE_NUMBER_INT);
?>	

<center>
<div class="title">All Writers</div>
</center>
<?php  
$today = date('Y-m-d');
$per_page = 15; // records per page
$page = isset($_GET['page']) ? $_GET['page'] : 1; // current page
$start = ($page - 1) * $per_page; // starting record number
$sql = "SELECT catID, catTitle, facebook, linkdin, twitter, youtube, about, image, birthday, birthplace, profession, nationality, zodiac FROM blog_cats LIMIT $start, $per_page";
$result = mysqli_query($con, $sql);  
$total_records = mysqli_num_rows(mysqli_query($con, "SELECT catID FROM blog_cats"));
$total_pages = ceil($total_records / $per_page); // total number of pages
?>


<div class="fontboxcontainer">
<?php  
if(mysqli_num_rows($result) > 0)  
{  
while($row = mysqli_fetch_array($result))  
{  
?> 
<div class="teamcontainer">
<div class="memberimgcon"><img src="admin/images/<?php echo $row['image']?>" class="memberimg" /></div>
<div class="teammember">
<div class="membername"><?php echo $row['catTitle']?></div>
<hr />
<i class="fa fa-birthday-cake" aria-hidden="true"></i> <?php echo date('d M Y', strtotime($row['birthday'])); ?>
<input type="button" class="download" value="Visit Profile" onclick="window.location.href='writter.php?catid=<?php echo $row['catID']?>'" />
</div>
</div>
<?php
}
}
?>
</div>
<br/>

<div class="pagination">
<?php
if ($total_pages > 1) {
    $current_page = isset($_GET['page']) ? $_GET['page'] : 1;
    $start_page = ($current_page - 2 > 0) ? $current_page - 2 : 1;
    $end_page = ($current_page + 2 < $total_pages) ? $current_page + 2 : $total_pages;
    echo "<ul>";
    if ($current_page > 1) {
        echo "<li><a href='?page=".($current_page - 1)."'>Prev</a></li>";
    }
    for ($i = $start_page; $i <= $end_page; $i++) {
        if ($current_page == $i) {
            echo "<li class='active'><a href=''>$i</a></li>";
        } else {
            echo "<li><a href='?page=$i'>$i</a></li>";
        }
    }
    if ($current_page < $total_pages) {
        echo "<li><a href='?page=".($current_page + 1)."'>Next</a></li>";
    }
    echo "</ul>";
}
?>
</div>
	
<?php 
require_once('inc/footer.php');
?>