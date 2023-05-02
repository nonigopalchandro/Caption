<?php 
require_once('inc/dbconfig.php');

// Use prepared statement to protect against SQL injection
$stmt = $con->prepare("SELECT contact FROM webcontact");
$stmt->execute();
$result = $stmt->get_result();

if ($result->num_rows > 0) {
  // output data of each row
  while($row = $result->fetch_assoc()) {
    // Use htmlspecialchars to prevent XSS attacks
    $contact = htmlspecialchars($row['contact']);
?>

<center>
<div class="aboutbox"><center><i><?php echo $contact ?></i></center></div>
</center>

<?php
  }
}
?>

<?php 
require_once('inc/footer.php');
?>