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