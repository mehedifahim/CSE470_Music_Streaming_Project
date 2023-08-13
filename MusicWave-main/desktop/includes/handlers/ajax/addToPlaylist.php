<?php  

	include("../../config.php");

	if (isset($_POST['playlistId']) && isset($_POST['songId'])) 
	{
		$playlistId = $_POST['playlistId'];
		$songId = $_POST['songId'];


		$orderIdQuery = mysqli_query($con, "SELECT MAX(playlistOrder) + 1 AS playlistOrder FROM playlistsongs WHERE playlistId='$playlistId'");

		$row = mysqli_fetch_array($orderIdQuery);
		$order = $row['playlistOrder'];

		if($order == '')
		{
			$order = 1;
		}

		$query = mysqli_query($con, "INSERT INTO playlistsongs VALUES('0', '$songId','$playlistId','$order')");

	}
	else
	{
		echo "PlaylistId or SongId was not passed to addToPlaylist.php";
	}

?>