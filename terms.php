<?php 
// Protect against SQL injection attacks by using prepared statements
require_once('inc/dbconfig.php');
$stmt = $con->prepare("SELECT terms FROM webterms");
$stmt->execute();
$result = $stmt->get_result();
?>

<?php
if ($result->num_rows > 0) {
  // output data of each row
  while($row = $result->fetch_assoc()) {
    // Escape output to protect against XSS attacks
    $terms = htmlspecialchars($row['terms']);
?>

<center>
<div class="aboutbox"><center><i><?php echo $terms ?></i></center></div>
</center>

<?php
  }
}
?>

<?php 
// Prevent session fixation attacks by regenerating session ID
session_regenerate_id();
require_once('inc/footer.php');
?>