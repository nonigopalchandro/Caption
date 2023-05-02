<?php
// Sanitize user input
$getcatid = filter_input(INPUT_GET, 'catid', FILTER_SANITIZE_NUMBER_INT);
$getcategory = filter_input(INPUT_GET, 'category', FILTER_SANITIZE_STRING);

// Validate input
if (!is_numeric($getcatid)) {
    die('Invalid category ID');
}

// Include database configuration file
require_once('inc/dbconfig.php');

?>
<div class="trybox">
    <div class="tbhd">
        <?php
        // Use prepared statement to avoid SQL injection
        $stmt = $con->prepare("SELECT catID, catTitle, facebook, linkdin, twitter, youtube, about, image, birthday, deathdate, birthplace, profession, nationality, zodiac FROM blog_cats where catID=? LIMIT 24");
        $stmt->bind_param("i", $getcatid);
        $stmt->execute();
        $result = $stmt->get_result();

        if ($result->num_rows > 0) {
            // output data of each row
            while($row = $result->fetch_assoc()) {
        ?>
                <div style="font-size: 40px; color: #FFFFFF;"><a href="search.php?term=<?php echo htmlentities($row['catTitle'], ENT_QUOTES | ENT_HTML5, 'UTF-8');?>"><font style="color:white;"><?php echo htmlentities($row['catTitle'], ENT_QUOTES | ENT_HTML5, 'UTF-8');?></font></a></div>
                <div style="font-size: 20px; color: #FFFFFF;"><a href="search.php?term=<?php echo htmlentities($row['birthplace'], ENT_QUOTES | ENT_HTML5, 'UTF-8');?>"><font style="color:white;"><?php echo htmlentities($row['birthplace'], ENT_QUOTES | ENT_HTML5, 'UTF-8');?></font></a></div>
                </br>
        <?php
            }
        }
        ?>
    </div>

    </br>
<div class="cards">
    <?php  
    // Use prepared statement to avoid SQL injection
    $stmt = $con->prepare("SELECT id, postTitle, description, post_date, auther, catinfo FROM blog_posts WHERE catinfo=? ORDER BY id DESC");  
    $stmt->bind_param("i", $getcatid);

    // Get total number of posts
    $stmt->execute();
    $result = $stmt->get_result();
    $total_posts = mysqli_num_rows($result);

    // Set pagination variables
    $per_page = 21;
    $total_pages = ceil($total_posts / $per_page);
    $current_page = isset($_GET['page']) ? $_GET['page'] : 1;
    $start = ($current_page - 1) * $per_page;

    // Get posts for current page
    $stmt = $con->prepare("SELECT id, postTitle, description, post_date, auther, catinfo FROM blog_posts WHERE catinfo=? ORDER BY id DESC LIMIT ?, ?");
    $stmt->bind_param("iii", $getcatid, $start, $per_page);
    $stmt->execute();
    $result = $stmt->get_result();  
    ?>  
        
    <?php  
    if(mysqli_num_rows($result) > 0) {  
        while($row = mysqli_fetch_array($result)) {  
    ?> 
            <div class="card" style="font-size:20px;">
                <a href="viewpost.php?id=<?php echo htmlentities($row['id'], ENT_QUOTES | ENT_HTML5, 'UTF-8');?>">
                    <font style="color:black;"><?php echo htmlentities($row['description'], ENT_QUOTES | ENT_HTML5, 'UTF-8');?></font>
                </a>
            </div>
<?php
 }
}
?>
</div>
<center>
    <!-- Pagination links -->
    <?php if($total_pages > 1) { ?>
        <ul class="writterpagination">
            <?php if($current_page > 1) { ?>
                <a href="?catid=<?php echo $getcatid; ?>&page=<?php echo $current_page - 1; ?>">Prev</a>
            <?php } ?>

            <?php for($i = 1; $i <= $total_pages; $i++) { ?>
                <?php if($i == $current_page) { ?>
                    <span><?php echo $i; ?></span>
                <?php } else { ?>
                    <a href="?catid=<?php echo $getcatid; ?>&page=<?php echo $i; ?>"><?php echo $i; ?></a>
                <?php } ?>
            <?php } ?>

            <?php if($current_page < $total_pages) { ?>
                <a href="?catid=<?php echo $getcatid; ?>&page=<?php echo $current_page + 1; ?>">Next</a>
            <?php } ?>
        </ul>
    <?php } ?>
</center>

</div>

<?php
$getcatid = mysqli_real_escape_string($con, $_GET['catid']);
$sql = "SELECT catID, catTitle, facebook, linkdin, twitter, youtube, about, image, birthday, birthplace, profession, nationality, deathdate, zodiac FROM blog_cats where catID=?";
$stmt = $con->prepare($sql);
$stmt->bind_param("i", $getcatid);
$stmt->execute();
$result = $stmt->get_result();

if ($result->num_rows > 0) {
  // output data of each row
  while($row = $result->fetch_assoc()) {
    
  ?>
<div class="detailbox">
<div style="font-size: 28px; color: #6d6e70; text-align: center;">Profile Details</div>
<hr class="wbhr" />
<center>
<div class="designerDownloadCont">
<img class="designerDownload" src="admin/images/<?php echo htmlspecialchars($row['image'])?>">
</div>
<table>
<tr><td class="fdtd1">Name</td><td class="fdtd2">:</td><td><a href="search.php?term=<?php echo htmlspecialchars($row['catTitle'])?>"><?php echo htmlspecialchars($row['catTitle'])?></a></td></tr>
<tr><td class="fdtd1">Location</td><td class="fdtd2">:</td><td><a href="search.php?term=<?php echo htmlspecialchars($row['birthplace'])?>"><?php echo htmlspecialchars($row['birthplace'])?></a></td></tr>
<tr><td class="fdtd1">Birth Date</td><td class="fdtd2">:</td><td><a href="search.php?term=<?php echo htmlspecialchars($row['birthday'])?>"><?php echo htmlspecialchars($row['birthday'])?></a></td></tr>
<tr><td class="fdtd1">Profession</td><td class="fdtd2">:</td><td><a href="search.php?term=<?php echo htmlspecialchars($row['profession'])?>"><?php echo htmlspecialchars($row['profession'])?></a></td></tr>
<tr><td class="fdtd1">Nationality</td><td class="fdtd2">:</td><td><a href="search.php?term=<?php echo htmlspecialchars($row['nationality'])?>"><?php echo htmlspecialchars($row['nationality'])?></a></td></tr>
<tr><td class="fdtd1">Death Date</td><td class="fdtd2">:</td><td><a href="search.php?term=<?php echo htmlspecialchars($row['deathdate'])?>"><?php echo htmlspecialchars($row['deathdate'])?></a></td></tr>
<tr><td class="fdtd1">Death Date</td><td class="fdtd2">:</td><td><a href="search.php?term=<?php echo htmlspecialchars($row['zodiac'])?>"><?php echo htmlspecialchars($row['zodiac'])?></a></td></tr>

</table>

<div class="social-icons">
  <a href="<?php echo htmlspecialchars($row['facebook'])?>" title="facebook">
    <i class="fa fa-facebook-square" aria-hidden="true"></i>
  </a>
  <a href="<?php echo htmlspecialchars($row['twitter'])?>" title="twitter">
    <i class="fa fa-twitter-square" aria-hidden="true"></i>
  </a>
  <a href="<?php echo htmlspecialchars($row['youtube'])?>" title="youtube">
    <i class="fa fa-youtube-square" aria-hidden="true"></i>
  </a>
  <a href="<?php echo htmlspecialchars($row['linkdin'])?>" title="linkdin">
    <i class="fa fa-linkedin-square" aria-hidden="true"></i>
  </a>
</div>
</div>
</center>

<br /><br />
<div class="othersFont"><?php echo htmlspecialchars($row['about'])?></div>
<?php
}
}
?>
<br />
<br />
			 
<?php 
require_once('inc/footer.php');
?>