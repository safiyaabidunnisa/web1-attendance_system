<?php
include("db_connect.php");
include("header.php");

echo "<div align=\"left\">
					<a href=\"vatte2.php\" style=\"text-decoration:none;color:white;\">View Student Attendance</a>
					</div>
					<div align=\"center\">
					<a href=\"viewprt2.php\" style=\"text-decoration:none;color:white;\">View Parent</a>
					</div>
					<div align=\"right\">	
					<a href=\"data2.php\" style=\"text-decoration:none;color:white;\">Back</a>
					</div>";
					echo "<form method=\"post\" action=\"view2.php\">
<font color=\"white\" style=\"font-family:georgia;\">
sem:<input type=\"number\" name=\"sem\" max=\"6\" required></font>
<input type=\"submit\" name=\"view\" value=\"view\"></form>";


?>