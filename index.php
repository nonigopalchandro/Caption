<?php
	require_once('inc/dbconfig.php');
?>
<center>
<div class="title">Birthday</div>
</center>

<div class="fontboxcontainer">
<?php  
$today = date('Y-m-d');
$sql = "SELECT catID, catTitle, facebook, linkdin, twitter, youtube, about, image, birthday, birthplace, profession, nationality, zodiac FROM blog_cats WHERE DATE_FORMAT(birthday, '%m-%d') = DATE_FORMAT('$today', '%m-%d')";
$result = mysqli_query($con, $sql);  
 ?>
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
<?php echo $row['birthday']?>
<input type="button" class="download" value="Visit Profile" onclick="window.location.href='writter.php?catid=<?php echo $row['catID']?>'" />
</div>
</div>
<?php
}
}
?>
</div>

</br></br>

<center>
<div class="title">Who Death</div>
</center>

<div class="fontboxcontainer">
<?php  
$deathdate = date("Y-m-d");
$sql = "SELECT catID, catTitle, facebook, deathdate, linkdin, twitter, youtube, about, image, birthday, birthplace, profession, nationality, zodiac FROM blog_cats WHERE deathdate = '$deathdate'";
$result = mysqli_query($con, $sql);  
?>  
 
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
                <?php echo $row['deathdate']?>
                <input type="button" class="download" value="Visit Profile" onclick="window.location.href='writter.php?catid=<?php echo $row['catID']?>'" />
            </div>
        </div>
<?php
}
}
?>
</div>


</br></br>
<center>
<div class="title">Latest Caption</div>
</center>

<?php
$limit = 30; // number of posts to display per page
$page = isset($_GET['page']) ? $_GET['page'] : 1; // get current page number, default is 1
$start = ($page - 1) * $limit; // calculate the starting post for the current page

// retrieve posts from database with limit and offset
$sql = "SELECT * FROM blog_posts INNER JOIN blog_cats ON blog_posts.catinfo = blog_cats.catID ORDER BY post_date DESC LIMIT $start, $limit";  
$result = mysqli_query($con, $sql);  

if(mysqli_num_rows($result) > 0) {
?>

<div class="fontboxcontainer" style="height: auto !important;">
<?php
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
<tbody>
<tr>
<td>
<div class="fontdetails"><i class="fa fa-birthday-cake" aria-hidden="true"></i> <?php echo date('d M Y', strtotime($row['birthday'])); ?>
<danda> | </danda> <i class="fa fa-map-marker" aria-hidden="true"></i> <?php echo $row['nationality']?></div></td>
<td style="text-align: right;">
<right>
<div class="fontdetails">
<i class="fa fa-graduation-cap" aria-hidden="true"></i> <?php echo $row['profession']?>
</td>
</tr>
</tbody>
</table>

<input type="button" class="download" value="Check More" onclick="window.location.href='writter.php?catid=<?php echo $row['catID']?>'" />
</div>
<?php
}
?>
</div>


<?php
// get total number of posts
$sql = "SELECT COUNT(*) AS total FROM blog_posts";
$result = mysqli_query($con, $sql);
$row = mysqli_fetch_assoc($result);
$total_posts = $row['total'];

// calculate total number of pages
$total_pages = ceil($total_posts / $limit);

// display pagination links
?>

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
}
?>

</div>


<header>
<div id="includedContent"></div>
</header>
<br/>

</div>


</div>

<script>
    $(function(){
        $("#includedContent").load("header.html");
    });
</script>

<?php 
require_once('inc/footer.php');
?>