<!DOCTYPE html>
<html>
<head>
</head>
<body>
<h1>LOGIN</h1>
<form action="POST">
    email: <input type="email" name="email" id=""> <br>
    password: <input type="password" name="psw" id=""> <br>
    <input type="submit" value="LOGIN">
</form>

<?php
require('connection.php');
if(isset($_POST))
    {
    $conn = new mysqli($servername, $username, $password, $dbname);

    $email= $_POST['email'];
    $psw= $_POST['psw'];
    $sql="SELECT email, password FROM votante WHERE email=$email AND password=$password";
    
    $checkTable=mysqli_query($dbname, $checkQuery);
    $row=mysqli_fetch_array($checkTable, MYSQLI_ASSOC);
    if($row!==NULL)
    	echo "<script type='text/javascript'>alert('Benvenuto');</script>";
       else
       	echo "<script type='text/javascript>alert('Nome utente e/o password errati');</script>";
     }
?>
</body>
</html>
