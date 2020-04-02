<?php
session_start();
if(!isset($_SESSION['username'])){
   header("Location:index.php");
}
?>
<html>

<<<<<<< HEAD
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
=======
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    </head>
>>>>>>> b1497a807f7372fcefc46a279f4b86d9ae63d76b

    <body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="#">Navbar</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">Link</a>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                Dropdown
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                <a class="dropdown-item" href="#">Action</a>
                <a class="dropdown-item" href="#">Another action</a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="#">Something else here</a>
                </div>
            </li>
            <li class="nav-item">
                <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
            </li>
            </ul>
            <form class="form-inline my-2 my-lg-0">
            <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
            </form>
        </div>
    </nav>

        <form action="/WebApplication/index.php" method="get">
            <input type="submit" name="submit" value="Log Out." action="http://localhost/Log_out.php" id="Logout">
        </form>
    </body>
    
</html>
<?php

?>