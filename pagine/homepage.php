<?php
session_start();
if(!isset($_SESSION['username'])){
   header("Location:index.php");
}
?>
<html>
<head>

</head>
    <body>
    <?php
    require('C:\xampp\htdocs\WebApplication\connection.php');
    $connessione = mysqli_connect($servername, $username, $password, $dbname);
    $stringa_di_username = $_SESSION["username"];
    $stringa_di_password = md5($_SESSION["password"]);
    $stringa_di_query = "SELECT admin FROM votante WHERE nome='$stringa_di_username' AND password='$stringa_di_password'";
    $stringa_di_conversione = mysqli_query($connessione, $stringa_di_query);
    $stringa_di_result = mysqli_fetch_array($stringa_di_conversione, MYSQLI_ASSOC);
    if($stringa_di_result)
    {
    echo "ciao Admin";
    }
    else
    {
    echo "ciao utente plebeo";
    }
    $connessione -> close();
    ?>
            <div id="div1">

                <a href="index.php" id="home">Home</a>
                <a href="Login.php" id="login2">Login</a>
                <a href="register.php" id="register">Register</a> 


        </div>
        <form action="/Log_out.php" method="get">
            <input type="submit" name="submit" value="Log Out." action="http://localhost/Log_out.php" id="Logout">
        </form>
    </body>
</html>
<?php

?>