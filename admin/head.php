<?php 
$conn = mysqli_connect('localhost','noni_caption','93Kj#un.i%!)','noni_caption');
 
if(!$conn)
{
	die(mysqli_error());
}
?>

<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="utf-8" />
<title>Admin Dashboard</title>
<link rel="shortcut icon" href="newimg/favicon.ico" type="image/x-icon">
<meta name="robots" content="index, follow" />
<link rel="stylesheet" href="../main.css" />


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
<a href="/admin"><img src="../img/logo.svg" class="logo"></a>
</div>
<li>
<div class="submenu">
<a href="javascript:void(0)" class="dropbtn">Web Settings</a>
<div class="submenu-content">
<button onclick="location.href='add-about.php'">Add About Us</button>
<br>
<button onclick="location.href='add-contact.php'">Add Contact</button>
<br>
<button onclick="location.href='add-privacy.php'">Add Privacy</button>
<br>
<button onclick="location.href='add-terms.php'">Add Terms</button>
</div>
</div>
</li>

<li><a href="add-writter.php">Add Writter</a></li>
<li><a href="writter.php">Writters List</a></li>
<li><a href="new-post.php">New Content</a></li>

<li class="icon">
<div style="padding: 14px 16px; color: #ffffff; font-size:15px;" onclick="openNav()"><i style="font-size: 30px;" class="fa fa-reorder"></i></div>
</li>
</ul>
</center>
</div>
<div id="mySidenav" class="sidenav" align="left">
<a href="javascript:void(0)" class="closebtn" onclick="closeNav()">×</a>
<center><a href="/"><img src="img/logo.svg" width="130px"></a></center>

<a href="/freefont.html">Birthday</a>
<a href="/premiumfont.html">Profile</a>
<a href="/symbolfont.html">About</a>
<a href="/keyboard.html">Contact</a>
<a href="/catalog.html">Privacy</a>
<a href="/designer.html">Terms</a>
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