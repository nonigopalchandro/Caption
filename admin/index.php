<?php	
	session_start();
	$title = 'Admin Panel';
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
				<p><a class="btn btn-primary btn-sm" href='new-post.php'>Add Content</a> | <a class="btn btn-primary btn-sm" href='add-writter.php'>Add Writter</a> | <a class="btn btn-primary btn-sm" href='writter.php'>Writter Lists</a></p>
		</div>
			<?php
    $query = "SELECT id, postTitle, description, post_date, auther, catinfo FROM blog_posts ORDER BY id DESC";
    $result = mysqli_query($con, $query);

    $posts_per_page = 20; // Set the number of posts per page
    $total_posts = mysqli_num_rows($result);
    $total_pages = ceil($total_posts / $posts_per_page);

    if (isset($_GET['page'])) {
        $page = $_GET['page'];
    } else {
        $page = 1;
    }

    $start_post = ($page - 1) * $posts_per_page;

    $query = "SELECT id, postTitle, description, post_date, auther, catinfo FROM blog_posts ORDER BY id DESC LIMIT $start_post, $posts_per_page";
    $result = mysqli_query($con, $query);

    if (mysqli_num_rows($result) > 0) {
        echo '<table class="rwd-table"><tr class="info"><th>Content</th><th>Writter</th><th>Action</th></tr>';
        while ($row = mysqli_fetch_assoc($result)) {
            echo '<tr>';
            echo '<td><h4><a href="../viewpost.php?id=' . $row['id'] . '&title=' . $row['description'] . '">' . $row['description'] . '</a></h4></td>';

            //*********************************** category ************************************************************

            $forcat = "SELECT catID, catTitle, catSlug FROM blog_cats WHERE catID = " . $row['catinfo'] . "";
            $result1 = mysqli_query($con, $forcat);

            if (mysqli_num_rows($result1) > 0) {
                while ($row1 = mysqli_fetch_assoc($result1)) {
                    echo '<td><a href="../writter.php?catid=' . $row1['catID'] . '&category=' . $row1['catTitle'] . '">' . $row1['catTitle'] . '</a></td>';
                }
            } else {
                echo '<td> - </td>';
            }
            //*********************************** category end ************************************************************


            ?>

            <td>
                <?php
                echo '<a href="edit.php?id=' . $row['id'] . '">Edit</a>';
                echo ' | ';
                echo '<a href="delete.php?id=' . $row['id'] . '">Delete</a>';
                echo '</td>';
                echo '</tr>';
            }

            echo '</table>';

            // Add pagination links
            echo '<div class="pagination">';
            echo '<ul>';
            for ($i = 1; $i <= $total_pages; $i++) {
                echo '<li><a href="?page=' . $i . '">' . $i . '</a></li>';
            }
            echo '</ul>';
            echo '</div>';
        } else {
            echo '<div class="alert alert-warning text-center"><h3>no posts found, visit after sometime!</h3></div>';
            die();
        }

        mysqli_close($con);

?>

			</center>
		</div>
		</center>
	<script src="/js/bootstrap.min.js"></script>
	<style>
	.pagination {
  display: flex;
  justify-content: center;
  align-items: center;
  margin-top: 20px;
}

.pagination ul {
  display: flex;
  justify-content: center;
  align-items: center;
  list-style: none;
  margin: 0;
  padding: 0;
  border-radius:10px;
}

.pagination li {
  display: flex;
  justify-content: center;
  align-items: center;
  margin: 0 10px;
}

.pagination li.active a {
  background-color: red;
  color: #fff;
  border-color: white;
}

.pagination li a {
  display: flex;
  justify-content: center;
  align-items: center;
  color: #007bff;
  border: 1px solid white;
  padding: 5px 10px;
  text-decoration: none;
  transition: all 0.3s ease;
}

.pagination li a:hover {
  background-color: red;
  color: #fff;
  border-color: white;
  cursor: pointer;
}

.pagination li.disabled a {
  opacity: 0.5;
  pointer-events: none;
}
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