<?php
  require_once('database.inc.php');
  session_start();
  $db = $_SESSION['db'];
  $userId = $_SESSION['userId'];
  $movieName = $_REQUEST['movieName'];
  $thedate = $_REQUEST['thedate'];
  $db->openConnection();

  //1. Skapa reservation
  //2. Hämta reservatiosNummer för den reservation som precis gjordes
  $booked = $db->bookTicket($movieName, $thedate, $userId);
  $db->closeConnection();
?>

<html>
<head><title>Booking 4</title><head>
<body><h1>Ticket Reservation</h1>
  <a href="booking1.php">New booking</a>
  <p>
    <?php
      if ($booked >0) {
        print "Reservation number: {$booked}";
      } else if ($booked == -1){
        print "Unable to book a ticket";
        
      } else {
        print "Sorry all tickets are booked or you have already booked a ticket.";
      }
    ?>
  </p>
    <input name="movieName" type="hidden" value="<?php print $_REQUEST['movieName'] ?>">
    <input name="thedate" type="hidden" value="<?php print $_REQUEST['thedate'] ?>">
</body>
</html>