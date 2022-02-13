<?php
include("db_connect.php");
include("header.php");echo"
<div align=\"center\">
<a href=\"data2.php\" style=\"text-decoration:none;color:white;\">Back</a>
</div>";
echo "<form method=\"post\" action=\"remstd2.php\">
<font color=\"white\" style=\"font-family:georgia;\">
PIN:<input type=\"text\" name=\"pin\" required><br><br>SEM:<input type=\"number\" name=\"sem\" required></font>
<input type=\"submit\" name=\"remove\" value=\"remove\"></form>";



?>