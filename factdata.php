<?php
include("db_connect.php");

include("header.php");
session_start();
$query = "select name,mailid from faculty where name='".$_SESSION['facun']."';" ;
		$result = mysqli_query($con,$query);
		$num_rows = mysqli_num_rows($result);
		if($num_rows >0)
		{   
			$row = mysqli_fetch_assoc($result);
			
					echo "&nbsp
					<div align=\"left\">
					<a href=\"factdata1.php\" style=\"text-decoration:none;color:white;\">Student</a></div>
					<div align=\"center\">
					<a href=\"factdata2.php\" style=\"text-decoration:none;color:white;\">Attendance</a></div>
					<div align=\"right\">
					<a href=\"factdata3.php\" style=\"text-decoration:none;color:white;\">Upload and Feedback</a>";
					echo "<br><center>";
					echo "<hr><font style=\"font-family:Lexia;color:red;size=10;\">".$row["name"]." &nbsp&nbsp&nbsp&nbsp|&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp|&nbsp&nbsp&nbsp ";
					
					//echo "  <img src=\"masab tank college.jpg\" style=\"width: 100%; display: none;\" align=\"middle\">";
					
					echo $row["mailid"]."&nbsp&nbsp&nbsp&nbsp  |   &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</font><hr>";
					echo "<form name=\"logout\" action=".htmlentities($_SERVER['PHP_SELF'])." method=\"post\" /> 
					<input type=\"submit\" name=\"logout\" value=\"Logout\" /></form>";
					echo "<br>";
					if(isset($_REQUEST["logout"]))
					{
						session_destroy();
						
						echo "<script> window.location.replace(\" /safiya_project/web_html/home.php \") </script> ";
	
}
			
					
		}
		


?>>