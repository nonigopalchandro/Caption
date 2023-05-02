<?php
require_once('head.php');
?>

<center>
<div class="aboutbox">

<?php
$sql = "DELETE FROM webterms WHERE id='" . $_GET["id"] . "'";
if (mysqli_query($conn, $sql)) {
    echo "<div class='success-msg'><h4><center>Record deleted successfully! please wait a few second to get back</center></h4></div>";
} else {
    echo "<div class='error-msg'><h4><center>Something went wrong while trying to delete. please try again.!</center></h4></div>" . mysqli_error($conn);
}
mysqli_close($conn);
?>
</div>
</center>

<script>setTimeout(function() { location.replace("add-terms.php")},2000);</script>