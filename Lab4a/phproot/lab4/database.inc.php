<?php
/*
 * Class Database: interface to the movie database from PHP.
 *
 * You must:
 *
 * 1) Change the function userExists so the SQL query is appropriate for your tables.
 * 2) Write more functions.
 *
 */
class Database {
	private $host;
	private $userName;
	private $password;
	private $database;
	private $conn;
/**
	 * Constructs a database object for the specified user.
	 */
public function __construct($host, $userName, $password, $database) {
	$this->host = $host;
	$this->userName = $userName;
	$this->password = $password;
	$this->database = $database;
}

	/** 
	 * Opens a connection to the database, using the earlier specified user
	 * name and password.
	 *
	 * @return true if the connection succeeded, false if the connection 
	 * couldn't be opened or the supplied user name and password were not 
	 * recognized.
	 */
	public function openConnection() {
		try {
			$this->conn = new PDO("mysql:host=$this->host;dbname=$this->database", 
				$this->userName,  $this->password);
			$this->conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
		} catch (PDOException $e) {
			$error = "Connection error: " . $e->getMessage();
			print $error . "<p>";
			unset($this->conn);
			return false;
		}
		return true;
	}
	
	/**
	 * Closes the connection to the database.
	 */
	public function closeConnection() {
		$this->conn = null;
		unset($this->conn);
	}

	/**
	 * Checks if the connection to the database has been established.
	 *
	 * @return true if the connection has been established
	 */
	public function isConnected() {
		return isset($this->conn);
	}
	
	/**
	 * Execute a database query (select).
	 *
	 * @param $query The query string (SQL), with ? placeholders for parameters
	 * @param $param Array with parameters 
	 * @return The result set
	 */
	private function executeQuery($query, $param = null) {
		try {
			$stmt = $this->conn->prepare($query);
			$stmt->execute($param);
			$result = $stmt->fetchAll();
		} catch (PDOException $e) {
			$error = "*** Internal error: " . $e->getMessage() . "<p>" . $query;
			die($error);
		}
		return $result;
	}
	
	
	/**
	 * Execute a database update (insert/delete/update).
	 *
	 * @param $query The query string (SQL), with ? placeholders for parameters
	 * @param $param Array with parameters 
	 * @return The number of affected rows
	 */
	private function executeUpdate($query, $param = null) {
		try {
			$stmt = $this->conn->prepare($query);
			$result = $stmt->execute($param);
			//$result = $stmt->fetchAll();
		} catch (PDOException $e) {
			$error = "*** Internal error: " . $e->getMessage() . "<p>" . $query;
			die($error);
		}
		return count($result);
	}
	
	/**
	 * Check if a user with the specified user id exists in the database.
	 * Queries the Users database table.
	 *
	 * @param userId The user id 
	 * @return true if the user exists, false otherwise.
	 */
	public function userExists($userId) {
		$sql = "SELECT userName FROM users WHERE userName = ?";
		$result = $this->executeQuery($sql, array($userId));
		return count($result) == 1; 
	}

	//Return an arrya of the movies available in the DB
	public function getMovies(){
		$query = "SELECT name FROM Movies";
		$rs = $this->executeQuery($query);
		$movies = [];
		for ($i=0; $i < count($rs); $i++){
			array_push($movies, $rs[$i]["name"]);
		}
		return $movies;
	}

	public function getPerformance($movieName, $date){
		$sql = "SELECT * FROM performances WHERE performances.movieName =  ? AND thedate = ?";
		$resultSet = $this->executeQuery($sql, array($movieName, $date));
		$performance = [];
			array_push($performance, $resultSet[0]["theaterName"]);
			array_push($performance, $resultSet[0]["freeSeats"]);

		return $performance;
	}

	public function getPerformanceDates($movieName){
		$sql = "SELECT thedate FROM performances WHERE performances.movieName =  ?";
		$resultSet = $this->executeQuery($sql, array($movieName));
		$dates = [];
		for($i=0; $i < count($resultSet); $i++){
			array_push($dates, $resultSet[$i]["thedate"]);
		}
		return $dates;
	}

	public function remainingSeats($movieName, $date){
		$query = "SELECT freeSeats FROM Performances WHERE thedate = ? AND movieName = ?";
		$rs = $this->executeQuery($query, array($date, $movieName));
			return $rs;
	}

		public function bookTicket ($movieName, $date, $UID){
			$querySeats = "UPDATE Performances SET freeSeats = (freeSeats - 1) WHERE movieName = ? and theDate = ?";
			$queryReserve = "INSERT into Reservations(perdate, movieName, userName) values(?, ?, ?)";

			if($this -> isReserved($movieName, $date, $UID)){
				return -3;
			}
			if($this->userExists($UID) && ($this->remainingSeats($movieName, $date) > 0)){
			//all good -> boka biljett-fan
				$resultSet1 = $this->executeUpdate($querySeats, array($movieName, $date));
				$resultSet2 = $this->executeUpdate($queryReserve, array($date, $movieName, $UID));

			//Med tanke på att det bara är DB updateringar kan vi flush:a våra resultsets
				var_dump($resultSet1);
				var_dump($resultSet2);
				return $this->getReservationNbr($movieName, $date, $UID)[0]["id"];
			}
			return -2;
		}

		public function isReserved($movieName, $date, $uID){
			$query = "SELECT * FROM Reservations WHERE userName = ? AND movieName = ? AND perdate = ?";
			$resultset = $this->executeQuery($query, array($uID, $movieName, $date));

		//returnerar om det finns en sådan reservation false om det inte finns (?)
			return count($resultset)==1;
		}

		public function getReservationNbr($movieName, $date, $userName){
			$query = "SELECT id FROM Reservations WHERE perdate =? and movieName = ? and userName = ?";
			$resultSet = $this -> executeQuery($query, array($date, $movieName, $userName));
			if(count($resultSet)==1){
				return $resultSet;
			}
			//shit went south
				return -1; //Vad ska vi annars returnera?
			
		}

	}
	
?>
