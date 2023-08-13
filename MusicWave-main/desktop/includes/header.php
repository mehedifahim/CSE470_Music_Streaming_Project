<?php  

   include("includes/config.php");
   include("includes/classes/User.php");
   include("includes/classes/Artist.php");
   include("includes/classes/Album.php");
   include("includes/classes/Song.php");
   include("includes/classes/Playlist.php");

   //session_destroy(); to logout manually

   if (isset($_SESSION['userLoggedIn'])) 
   {
        $userLoggedIn = new User($con, $_SESSION['userLoggedIn']);
        $username = $userLoggedIn->getUsername();
        $nam = $userLoggedIn->getFirstAndLastName();
        echo "<script>userLoggedIn ='".$username."';</script>";
   }
   else
   {
     	//header("Location: register.php");
      $temp = "guest";
      $_SESSION['userLoggedIn'] = $temp;
      $userLoggedIn = new User($con, $_SESSION['userLoggedIn']);
      $username = $userLoggedIn->getUsername();
      $nam = $userLoggedIn->getFirstAndLastName();
      echo "<script>userLoggedIn ='".$username."';</script>";
   }

?>


<html>
<head>
	<title>Welcome to MusicWave</title>
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=Edge" />
    <link rel="icon" href="assets/images/icons/logo.ico" type="image/x-icon" />
    <link rel="shortcut icon" href="assets/images/icons/logo.ico" type="image/x-icon" />
   <link rel="stylesheet" type="text/css" href="assets/css/style.css">
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
   <script src="assets/js/script.js"></script>
  <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
<script>
  (adsbygoogle = window.adsbygoogle || []).push({
    google_ad_client: "ca-pub-1863551484557567",
    enable_page_level_ads: true
  });
</script>
</head>

<body>
   
   <div id="mainContainer">

      <div id="topContainer">
         
         <?php include("includes/navBarContainer.php") ?>

         <div id="mainViewContainer">
            
         <div id="mainContent">