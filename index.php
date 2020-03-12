<!DOCTYPE html>
<html>
<head>
</head>
<body>
<h1>LOGIN</h1>
<form action=index.php method=POST>
    user name: <input type="text" name="utente" id=""> <br>
    password: <input type="password" name="psw" id=""> <br>
    <input type="submit" value="LOGIN">
</form>
    <a href=RegisterSuff.php>Registrati</a>

<?php
//echo count($_POST);
if(isset($_POST) && count($_POST)>0)
  {
  require('connection.php');
  $conn = mysqli_connect($servername, $username, $password, $dbname)
              or die ('An error occured while choosing the database. Check MySql database name.');

  $utente= $_POST["utente"];
  $psw= $_POST["psw"];
  $checkQuery="SELECT nome, cognome FROM votante WHERE n_utente='$utente' AND password='".md5($psw)."'";
//  echo "<p>".$checkQuery;
  $checkTable=mysqli_query($conn, $checkQuery) or die ('<p>Error:'.$checkQuery);
//  echo "numero righe=".mysqli_num_rows ($checkTable);
  if ($checkTable && mysqli_num_rows ($checkTable)==1)
    {
    $row=mysqli_fetch_array($checkTable, MYSQLI_ASSOC);
    $ans='Benvenuto '.$row['nome']." ".$row['cognome'];
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
