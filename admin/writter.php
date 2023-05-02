<?php
	$title = 'Writter List';
	session_start();
	require_once('../inc/dbconfig.php');
	if(!isset($_SESSION['username']))
	{
		echo '<script>setTimeout(function () { window.location.href = "../admin/login.php";}, 5);</script>';
		die();
	}
?>
<center>
<div class="aboutbox">
    <center>
			<div class="text-center">
				<p><a class="btn btn-primary btn-sm" href='../admin/add-writter.php'>Add Writter</a></p>
			</div>

			<?php
		    	$per_page = 10;
	$page = isset($_GET['page']) ? intval($_GET['page']) : 1;
	$start = ($page - 1) * $per_page;

	$query = "SELECT catID, catTitle, catSlug, image, birthday, facebook, twitter, linkdin, youtube, about, birthplace, deathdate, profession, nationality, zodiac FROM blog_cats ORDER BY catID DESC LIMIT $start, $per_page";
	$result = mysqli_query($con, $query);
	$total = mysqli_num_rows(mysqli_query($con, "SELECT * FROM blog_cats"));

	if ($total > 0) {
					echo '<table class="rwd-table"><tr class="info"><th>Image</th><th>Name</th><th>Birthday</th><th>Location</th><th>Profession</th><th>Nationality</th><th>Zodiac</th><th>Action</th></tr>';
					while($row = mysqli_fetch_assoc($result))
					{    
						
						echo '<tr>';
						echo '<td><img style="margin:10px;border-radius:10px;border:2px solid #DCDCDC;" height="50px" width="50px" src="images/'.$row['image'].'"</td>';
						echo '<td>'.$row['catTitle'].'</td>';
						echo '<td>'.$row['birthday'].'</td>';
						echo '<td>'.$row['birthplace'].'</td>';
						echo '<td>'.$row['profession'].'</td>';
						echo '<td>'.$row['nationality'].'</td>';
						echo '<td>'.$row['zodiac'].'</td>';
						?>
						<td>
                    		<a href="edit-writter.php?id=<?php echo $row['catID'];?>">Edit</a> | 
                    		<a href="delcat.php?id=<?php echo $row['catID'];?>">Delete</a>
                		</td>

                		<?php
                		echo '</tr>';

					}

					echo '</table>';
			$total_pages = ceil($total / $per_page);
		if ($total_pages > 1) {
			echo '<div>';
			if ($page > 1) {
				echo '<a href="?page='.($page-1).'">Previous</a> ';
			}
			for ($i = 1; $i <= $total_pages; $i++) {
				if ($i == $page) {
					echo $i.' ';
				} else {
					echo '<a href="?page='.$i.'">'.$i.'</a> ';
				}
			}
			if ($page < $total_pages) {
				echo '<a href="?page='.($page+1).'">Next</a>';
			}
			echo '</div>';
		}
	} else {
		echo '<div>No writers found!</div>';
	}
		?>
		</center>
	</div>
	</center>
	<style>
	    .rwd-table {
  margin: auto;
  min-width: 300px;
  max-width: 100%;
  border-collapse: collapse;
}

.rwd-table tr:first-child {
  border-top: none;
  background: red;
  color: #fff;
}

.rwd-table tr {
  border-top: 1px solid #ddd;
  border-bottom: 1px solid #ddd;
  background-color: #f5f9fc;
}

.rwd-table tr:nth-child(odd):not(:first-child) {
  background-color: #ebf3f9;
}

.rwd-table th {
  display: none;
}

.rwd-table td {
  display: block;
}

.rwd-table td:first-child {
  margin-top: .5em;
}

.rwd-table td:last-child {
  margin-bottom: .5em;
}

.rwd-table td:before {
  content: attr(data-th);
  font-weight: bold;
  width: 120px;
  display: inline-block;
  color: #000;
}

.rwd-table th,
.rwd-table td {
  text-align: left;
}
.rwd-table td img {
  width:50px;
  height:50px;
  margin-top:10px;
}

.rwd-table {
  color: #333;
  border-radius: .4em;
  overflow: hidden;
}

.rwd-table tr {
  border-color: #bfbfbf;
}

.rwd-table th,
.rwd-table td {
  padding: .5em 1em;
}
@media screen and (max-width: 601px) {
  .rwd-table tr:nth-child(2) {
    border-top: none;
  }
}
@media screen and (min-width: 600px) {
  .rwd-table tr:hover:not(:first-child) {
    background-color: #d8e7f3;
  }
  .rwd-table td:before {
    display: none;
  }
  .rwd-table th,
  .rwd-table td {
    display: table-cell;
    padding: .25em .5em;
  }
  .rwd-table th:first-child,
  .rwd-table td:first-child {
    padding-left: 0;
  }
  .rwd-table th:last-child,
  .rwd-table td:last-child {
    padding-right: 0;
  }
  .rwd-table th,
  .rwd-table td {
    padding: 1em !important;
  }
}

@-webkit-keyframes leftRight {
  0%    { -webkit-transform: translateX(0)}
  25%   { -webkit-transform: translateX(-10px)}
  75%   { -webkit-transform: translateX(10px)}
  100%  { -webkit-transform: translateX(0)}
}
@keyframes leftRight {
  0%    { transform: translateX(0)}
  25%   { transform: translateX(-10px)}
  75%   { transform: translateX(10px)}
  100%  { transform: translateX(0)}
}
	</style>

<?php
require_once('footer.php');
?>