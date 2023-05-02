<?php

	$title = "Sarch Results";
	require_once('inc/dbconfig.php');
	$key = $_GET['term'];

	$query = "SELECT * FROM blog_cats WHERE catTitle LIKE '%".$_GET['term']."%' OR birthday LIKE '%".$_GET['term']."%' OR profession LIKE '%".$_GET['term']."%' OR nationality LIKE '%".$_GET['term']."%' OR zodiac LIKE '%".$_GET['term']."%' OR birthplace LIKE '%".$_GET['term']."%' OR deathdate  LIKE '%".$_GET['term']."%'";
	$result = mysqli_query($con,$query);

	echo '<div class="fontboxcontainer" style="height: auto !important;display:inline-table;">';

		if(mysqli_num_rows($result) > 0)
		{

			echo '<center>Results Contain "<b>'.$_GET['term'].'</b>"</center><hr class="hr">';

			while($row = mysqli_fetch_assoc($result))
			{
				echo '<div class="fontbox">';
				$search_title = '<div class="fonttitle"><a href="writter.php?catid='.$row['catID'].'">Name: '.$row['catTitle'].'</a></div>';
				echo preg_replace("/\w*?$key\w*/i", "<mark>$0</mark>", $search_title);
			    
			    $search_description = '<div class="preview" style="font-family: ManowarNihar; font-size: 20px"><fontpriview>Place Of Birth: '.$row['birthplace'].'<fontpriview></div>';
			    echo preg_replace("/\w*?$key\w*/i", "<mark>$0</mark>", $search_description);
			    
			    $search_birthday = '<div class="preview" style="font-family: ManowarNihar; font-size: 20px"><fontpriview>Birthday: '.$row['birthday'].'<fontpriview></div>';
			    echo preg_replace("/\w*?$key\w*/i", "<mark>$0</mark>", $search_birthday);
			    
			    $search_profession = '<p><div class="preview" style="font-family: ManowarNihar; font-size: 20px"><fontpriview>Profession: '.$row['profession'].'<fontpriview></div>';
			    echo preg_replace("/\w*?$key\w*/i", "<mark>$0</mark>", $search_profession);
			    
			    $search_nationality = '<div class="preview" style="font-family: ManowarNihar; font-size: 20px"><fontpriview>Nationality: '.$row['nationality'].'<fontpriview></div>';
			    echo preg_replace("/\w*?$key\w*/i", "<mark>$0</mark>", $search_nationality);
			    
			    $search_nationality = '<div class="preview" style="font-family: ManowarNihar; font-size: 20px"><fontpriview>Zodiac sign: '.$row['zodiac'].'<fontpriview></div>';
			    echo preg_replace("/\w*?$key\w*/i", "<mark>$0</mark>", $search_nationality);
			    
			    $search_deathdate = '<div class="preview" style="font-family: ManowarNihar; font-size: 20px"><fontpriview>Death Of Birth: '.$row['deathdate'].'<fontpriview></div>';
			    echo preg_replace("/\w*?$key\w*/i", "<mark>$0</mark>", $search_deathdate);
			    
			    echo '</div>';
			}
		}
  		
  		if(mysqli_num_rows($result) == 0)
  		{
  		}

?>

<?php
// Retrieve tags for post with specific ID
$id = filter_var($_GET['id'], FILTER_SANITIZE_NUMBER_INT);
$key = $_GET['term'];
$query = "SELECT id, tags FROM blog_posts WHERE tags LIKE '%".$_GET['term']."%' ORDER BY id";
$result = mysqli_query($con, $query);

echo '<div class="topspace container-fluid">';

		if(mysqli_num_rows($result) > 0)
		{

			echo '<center>Results Contain "<b>'.$_GET['term'].'</b>"</center><hr class="hr">';

			while($row = mysqli_fetch_assoc($result))
			{
				echo '<div class="cards"><div class="card">';
				$search_tags = '<h1 id="posttitle"><a href="viewpost.php?id='.$row['id'].'">Name: '.$row['tags'].'</a></h1>';
				echo preg_replace("/\w*?$key\w*/i", "<mark>$0</mark>", $search_tags);

			    echo '</div></div>';
			}
		}
  		
  		if(mysqli_num_rows($result) == 0)
  		{
  		}

?>

<style>
    .card {
  background-color: white; 
  background-image: url("https://lipighor.com/newimg/fontbox.svg");
  background-repeat: no-repeat;
  color: black;
  padding: 1rem;
  border-radius: 20px;
  margin:5px;
  box-shadow: 4px 4px 30px 0px rgba(0,0,0,0.2);
	transition: padding 0.5s;
}

.cards {
  max-width: auto;
  margin: 0 auto;
  display: grid;
  gap: 1rem;
  grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
}
</style>