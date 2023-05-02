<?php

	$hostname = 'localhost'; 	// Host Name
	
	$user = 'noni_caption'; // username of host
	
	$password = '93Kj#un.i%!)'; // password of host
	
	$dbname = 'noni_caption'; 	//database name
	
	$blogname = 'Caption'; // Name of Your Blog
	
	$admin = 'admin';  	// blog admin username for login
	
	$adminpass = 'admin';  // password for blog admin
			
	$con = new mysqli($hostname,$user,$password,$dbname);
	if (mysqli_connect_errno())
		{
	  		echo "Failed to connect to MySQL: " . mysqli_connect_error();
	  		die();
	  	}
	
	define('BLOG', $blogname);
	require_once('head.php');

?>