<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <form action="PasswordRecovery.php" method="POST">
        <p>Per recuperare la password inserisci il tuo indirizzo email:</p>
        <input type="text" name="email">
        <input type="submit" name="invia" value="invia">
    </form>
    <?php
    
    if(isset($_POST["invia"]))
    {
        try{

            $payer_email = $_POST["email"];
            $subject = "Your Subject";
            $message = 'recovery';
            $from = "noreply@gmail.com";
            $headers = 'From: ' .$from. "\r\n" .'Reply-To: ' .$from . "\r\n";
            $headers  .= 'MIME-Version: 1.0' . "\r\n";
            $headers  .= "Content-Type: text/html; charset=iso-8859-1 ";
            
            //mail to buyer
            $ret = mail( $payer_email , $subject, $message, $headers );
            echo $ret;

            //echo("___".$_POST["email"]."___");
            //mail($_POST["email"], 'recupero', 'recupero');
        }catch(error $e){
            echo($e);
        }
        
    }
    ?>
</body>
</html>