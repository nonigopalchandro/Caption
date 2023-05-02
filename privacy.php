<?php 
require_once('inc/dbconfig.php');
?>

<?php
// Prepare SQL statement with parameterized query
$stmt = $con->prepare("SELECT privacy FROM webprivacy");
$stmt->execute();

// Bind result variables
$stmt->bind_result($privacy);

// Fetch values
if ($stmt->fetch()) {
?>
  <center>
    <div class="aboutbox"><center><i><?php echo htmlspecialchars($privacy) ?></i></center></div>
  </center>
<?php
}

// Close statement and database connection
$stmt->close();
$con->close();

require_once('inc/footer.php');
?>