<?php
  require_once('database.inc.php');
  session_start();
  $db = $_SESSION['db'];
  $userId = $_SESSION['userId'];
  $movieName = $_REQUEST['movieName'];
  $db->openConnection();
  $moviePerformanceDates = $db->getPerformanceDates($movieName);
  $db->closeConnection();
?>

<html>
<head><title>Movie performance</title><head>
<body><h1>Movie performance</h1>
  Current user: <?php print $userId ?>
  <p>
  MoviePerformances for <?php print $movieName ?>:
  <p>
  <form method=post action="booking3.php">
    <select name="thedate" size=10>
    <?php
      $first = true;
      foreach ($moviePerformanceDates as $thedate) {
        if ($first) {
          print "<option selected>";
          $first = false;
        } else {
          print "<option>";
        }
        print $thedate;
      }
    ?>
    </select>
    <input name="movieName" type="hidden" value="<?php print $_REQUEST['movieName'] ?>">
    <input type=submit value="Select date">
  </form>
</body>
</html>