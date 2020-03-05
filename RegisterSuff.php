<!DOCTYPE html>
<html>
<head>
<title>Register</title>
</head>
<body>
<form action="#" method="POST">
<h1>Nome <input type="text" name="nome"></h1>
<h1>Cognome <input type="text" name="cognome"></h1>
<h1>CF <input type="text" name="CF" minlength="16" maxlength="16"></h1>
<h1>E-mail <input type="email" name="email"></h1>
<h1>Indirizzo <input type="text" name="indirizzo"></h1>
<h1>Data di nascita <input type="date" name="data_di_nascita"></h1>
<h1>Username <input type="text" name="username"></h1>
<h1>Password <input type="password" name="password" minlength="8" maxlength="20"></h1>
<input type="submit" name="enter" value="Registrati">
</form>
<?php
if(isset($_POST["enter"]))
{
$servername = "localhost";
$username = "suffragium";
$password = "Px3PVKmsyt9V";
$dbname = "my_suffragium";
$conn = new mysqli($servername, $username, $password, $dbname);
$us = $_POST["username"];
$pw = $_POST["password"];
$nome = $_POST["nome"];
$cognome = $_POST["cognome"];
$CF = $_POST["CF"];
$mail = $_POST["email"];
$address = $_POST["indirizzo"];
$birth = $_POST["data_di_nascita"];
$id = hash('sha512', $CF);
$sql = "INSERT INTO votante (n_utente, password, nome, cognome, CF, email, indirizzo, data_di_nascita, id, abilitato) VALUES ('$us', '$pw','$nome','$cognome','$CF','$mail','$address','$birth','$id',false)";
if ($conn->query($sql) === TRUE) 
	{
    echo "New record created successfully";
	} 
else 
	{
    echo "Error: " . $sql . "<br>" . $conn->error;
    }
$conn->close();
}
?>
</body>
</html>