<?php
	include("detector.php");
	include("includes/includedFiles.php");

	if($username == "guest")
	{
		header("Location: guest.php");
		//echo "<script>guestRedirect()</script>";
	}
?>

<div class="entityInfo">

	<div class="centerSection">
		<div class="userInfo">
			<h1><?php echo $userLoggedIn->getFirstAndlastName(); ?></h1>
		</div>
	</div>

	<div class="buttonItems">
		<button class="button" onclick="openPage('updateDetails.php')">USER DETAILS</button>
		<button class="button" onclick="logout()">LOGOUT</button>
	</div>


</div>
