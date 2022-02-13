<?php
include("db_connect.php");
include("header.php");echo"
<div align=\"center\">
<a href=\"data3.php\" style=\"text-decoration:none;color:white;\">Back</a>
</div>";
echo "<form method=\"post\" action=\"remnc2.php\">
<font color=\"white\" style=\"font-family:georgia;\">
Notice ID:<input type=\"text\" name=\"pin\" required></font>
<input type=\"submit\" name=\"remove\" value=\"remove\">";



?>