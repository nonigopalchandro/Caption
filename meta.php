<?php
 $sql = "SELECT * FROM blog_posts INNER JOIN blog_cats ON blog_posts.catinfo = blog_cats.catID ORDER BY id DESC LIMIT 1";  
 $result = mysqli_query($con, $sql);  
 ?>  
 
<?php  
if(mysqli_num_rows($result) > 0)  
{  
while($row = mysqli_fetch_array($result))  
{  
?> 
<meta name="description" content="<?php echo $row['description']?>">
<meta name="keywords" content="<?php echo $row['catTitle']?>">
<meta name="author" content="<?php echo $row['auther']?>">

<?php
}
}
?>