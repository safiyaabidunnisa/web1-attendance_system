<?php
include("db_connect.php");

include("header.php");
$un=$_POST["uname"];
$p=$_POST["pass"];
$query="select * from  admin where username='".$un."' and password='".$p."'";
$check = mysqli_query($con,$query);
if(mysqli_num_rows($check) == 1)
{
	
	$row = mysqli_fetch_assoc($check);
	echo "<script> alert('logged in successfully!') </script>";
	$query = "select username,email from admin;" ;
		$result = mysqli_query($con,$query);
		$num_rows = mysqli_num_rows($result);
		if($num_rows >0)
		{   
			$row = mysqli_fetch_assoc($result);
		echo "<script>window.location.replace(\"/safiya_project/web_html/data.php \");</script>";
	
	}
	}
else{ echo "<script>alert('Username or Password incorrect'); </script>"; 
echo "<script>window.location.replace(\"/safiya_project/web_html/admin1.php \");</script>";
	}
?>