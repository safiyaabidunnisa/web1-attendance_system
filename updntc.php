<?php
include("db_connect.php");
include("header.php");
echo "<link rel=\"stylesheet\" type=\"text/css\" href=\"register.css\"><style>
textarea
{
resize:none;
width:50%;
    padding: 1%;
    margin: 1% 0 2% 0;
    border: none;
    background: #f1f1f1;
}

font
{
	color:white;
}

</style>
<center>
<a href=\"factdata3.php\" style=\"text-decoration:none;color:white;\">Back</a><hr><br/>

<form action=\"upc.php\" method=\"post\">
<font>Notice ID:<br/><input type=\"text\" name=\"id\"><br/>
Semester:<br/><input type=\"text\" name=\"sem\"><br/> 
Title:<br/><input type=\"text\" name=\"txt\"><br/>
Description:<br/><textarea name=\"desc\" rows=\"6\" cols=\"100\" min=\"1\"></textarea><br/><br/> 
<!--by: <input type=\"text\" name=\"by\"><br/><br/>-->
<button type=\"submit\"  name=\"submit\" class=\"registerbtn\">Upload</button></font>
</form></center>

";


?>