<?php
	ob_start();
	session_start();

	$timezone = date_default_timezone_set("Europe/London");

	//$con = mysqli_connect("sql310.epizy.com", "epiz_21198344", "061902018", "epiz_21198344_MusicWave");
	$con = mysqli_connect("localhost", "root", "", "cse470Project_db");

	if(mysqli_connect_errno()) {
		echo "Failed to connect: " . mysqli_connect_errno();
	}

?>
