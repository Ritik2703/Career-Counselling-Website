<?php
$con=mysqli_connect("localhost","root","technology","careerguidance");
if(mysqli_connect_error($con))
{
	echo "Failed to connect MySQl:" . mysqli_connect_error();
}
?>