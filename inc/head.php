<?php
require_once('dbconfig.php');
?>

<?php
    if (isset($_GET['id'])) {
        $id = filter_var($_GET['id'], FILTER_SANITIZE_NUMBER_INT);
        $query = "SELECT * FROM blog_posts WHERE id = $id";
        $result = mysqli_query($con, $query);
        $post = mysqli_fetch_assoc($result);
        $description = $post['description'];
        $catId = $post['catinfo'];
        $query2 = "SELECT * FROM blog_cats WHERE catID = $catId";
        $result2 = mysqli_query($con, $query2);
        $cat = mysqli_fetch_assoc($result2);
        $catTitle = $cat['catTitle'];
        $title = $description . " - " . $catTitle;
    } 
    else if (isset($_GET['catid'])) {
        $catid = filter_var($_GET['catid'], FILTER_SANITIZE_NUMBER_INT);

        $query = "SELECT * FROM blog_cats WHERE catID = $catid";
        $result = mysqli_query($con, $query);
        $cat = mysqli_fetch_assoc($result);
        $catTitle = $cat['catTitle'];
        $title = $catTitle;
    } else {
        $title = "Caption Bangladesh";
    }
?>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="utf-8" />
<title><?php echo $title ?> - Caption Bangladesh</title>
<link rel="shortcut icon" href="newimg/favicon.ico" type="image/x-icon">
<meta name="robots" content="index, follow" />
<link rel="stylesheet" href="main.css" />
<?php
require_once('meta.php');
?>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script>
    $(function(){
        $("#includedContent").load("header.html");
    });
</script>
<head>

<body>
<header>
<div class="header">
<center>
<ul class="topnav">
<div class="logo">
<a href="/"><img src="img/logo.svg" class="logo"></a>
</div>
<li><a href="/privacy.php">Privacy</a></li>
<li><a href="/terms.php">Terms</a></li>
<li><a href="/contact.php">Contact</a></li>
<li><a href="/about.php">About</a></li>

<li class="icon">
<div style="padding: 14px 16px; color: #ffffff; font-size:15px;" onclick="openNav()"><i style="font-size: 26px;" class="fa fa-reorder"></i></div>
</li>
</ul>
</center>
</div>
<div id="mySidenav" class="sidenav">
<a href="javascript:void(0)" class="closebtn" onclick="closeNav()">×</a>
<center><a href="/"><img src="img/logo.svg" width="130px"></a></center>
<a href="/about.php">About</a>
<a href="/contact.php">Contact</a>
<a href="/terms.php">Terms</a>
<a href="/privacy.php">Privacy</a>
</div>

<script>
function openNav() {
document.getElementById("mySidenav").style.width = "250px";
}
function closeNav() {
document.getElementById("mySidenav").style.width = "0";
}
</script>

</div>
</header>

<br/>