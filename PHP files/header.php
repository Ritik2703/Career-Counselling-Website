<?php
session_start();
$pagename = basename($_SERVER['PHP_SELF']); 
date_default_timezone_set("Asia/Kolkata"); 
?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Online carrier guidance</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/templatemo_justified.css" rel="stylesheet">
  </head>

  <body>

    <div id="container" class="container">

        <a href="index.php" rel="nofollow"><img src="images/logo.jpg" alt="Simplex Header" width="1150" height="157" class="img-responsive" /></a>
        <img src="images/logotitle.png" alt="Simplex Header" width="1150" height="157" class="img-responsive" />
        
        <ul class="nav nav-justified">         
           
           <li
          <?php
		  if($pagename == "index.php" || $pagename == "login.php" || $pagename == "dashboard.php")
		   echo "class='active'";
		  ?>>
          <?php
		  if(isset($_SESSION[empid]))
			{
			  echo "<a href='dashboard.php'>Dashboard</a>";
			}
			else if(isset($_SESSION[regno]))
			{
			  echo "<a href='studentpanel.php'>Student Panel</a>";				
			}
			else
			{
				echo "<a href='index.php'>Index</a>";
			}
		  ?>
          </li> 
          
          <li
          <?php
		  if($pagename == "company.php")
		   echo "class='active'";
		  ?>><a href="company.php">Companies</a></li>
          <li
          <?php
		  if($pagename == "job.php")
		   echo "class='active'";
		  ?>><a href="job.php">Jobs</a></li>
          <li
          <?php
		  if($pagename == "viewselectedcandidates.php")
		   echo "class='active'";
		  ?>><a href="viewselectedcandidates.php">Selected candidates</a></li>
          <li
          <?php
		  if($pagename == "displaytrainingprogram.php")
		   echo "class='active'";
		  ?>><a href="displaytrainingprogram.php">Training program</a></li>          
          <li
          <?php
		  if($pagename == "contact.php")
		   echo "class='active'";
		  ?>><a href="contact.php">Contact</a></li>
        </ul>
