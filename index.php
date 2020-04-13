<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
<div class="jumbotron text-center">
<h1>LOGIN</h1>
<form action=index.php method=POST>
    nome: <input type="text" name="utente" id="utente"> <br>
    password: <input type="password" name="psw" id="psw"> <br>
    <a href=pagine/PasswordRecovery.php>Hai dimenticato la password?</a>
    <input type="submit" value="LOGIN">
</form>
    <a href=pagine/RegisterSuff.php>Registrati</a>
</div>
<?php
//echo count($_POST);
session_start();
if(isset($_POST) && count($_POST)>0)
  {
  require('connection.php');
  $conn = mysqli_connect($servername, $username, $password, $dbname)
              or die ('An error occured while choosing the database. Check MySql database name.');

  $utente= $_POST["utente"];
  $psw= $_POST["psw"];
  $checkQuery="SELECT * FROM votante WHERE nome='$utente' AND password='".md5($psw)."'";
//  echo "<p>".$checkQuery;
  $checkTable=mysqli_query($conn, $checkQuery) or die ('<p>Error:'.$checkQuery);
//  echo "numero righe=".mysqli_num_rows ($checkTable);
  if ($checkTable && mysqli_num_rows ($checkTable)==1)
    {
    $row=mysqli_fetch_array($checkTable, MYSQLI_ASSOC);
    $ans='Benvenuto '.$row['nome']." ".$row['cognome'];
    $_SESSION['username'] = $utente;
    $_SESSION['password'] = md5($psw);

    header('Location: /WebApplication/pagine/MainPage.php');
    }
   else
    $ans='Nome utente e/o password errati';
  echo "<p>".$ans;
  echo "<script type='text/javascript'>alert($ans);</script>";
  }
?>
<script type='text/javascript'>
echo "prova";
alert("prova");
</script>
</body>
</html>
