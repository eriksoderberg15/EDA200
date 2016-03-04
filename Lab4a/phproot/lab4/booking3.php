<?php
  require_once('database.inc.php');
  session_start();

  $db = $_SESSION['db'];
  $userId = $_SESSION['userId'];
  $movieName = $_REQUEST['movieName'];
  $thedate = $_REQUEST['thedate'];
  $db->openConnection();
  $performanceInfo = $db->getPerformance($movieName, $thedate); // En vektor med theaterName och freeSeats för det performance

  $db->closeConnection();
?>

<html>
<head><title>Booking 3</title><head>
<body><h1>Booking 3</h1>
  Current user: <?php print $userId ?>
  <p>
    Movie: <?php print $movieName ?>
  <p>
    Date: <?php print $thedate ?>
  <p>
    Theater: <?php print $performanceInfo[0] ?>   
  <p>
    Seats: <?php print $performanceInfo[1] ?>
  <form method=post action="booking4.php">
    <input name="movieName" type="hidden" value="<?php print $_REQUEST['movieName'] ?>">
    <input name="thedate" type="hidden" value="<?php print $_REQUEST['thedate'] ?>">
    <input type=submit value="Book ticket">
  </form>
</body>
</html>