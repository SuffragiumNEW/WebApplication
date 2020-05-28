<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>
</head>
<body>
    <form method="POST" action="#">
    <p>Nome della votazione</p><input type="text" name="nvot">
    <p>Testo votazione</p><textarea name="tvot" rows="25" cols="100"></textarea>
    <p>Opzione 1</p><input type="text" name="op1">
    <p>Opzione 2</p><input type="text" name="op2">
    <p>Opzione 3</p><input type="text" name="op3" placeholder="Opzionale">
    <p>Opzione 4</p><input type="text" name="op4" placeholder="Opzionale">
    <input type="submit" name="invia" value="invia">
    </form>

    <?php
    if(isset($_POST["invia"]))
    {
    require('../connection.php');  
    $conn = mysqli_connect($servername, $username, $password, $dbname);
    $nome = $_POST["nvot"];
    $testo = $_POST["tvot"];
    $opzione1 = $_POST["op1"];
    $opzione2 = $_POST["op2"];
    $opzione3 = $_POST["op3"];
    $opzione4 = $_POST["op4"];
    $data = date("Y/m/d");
    $sql = "INSERT INTO quesito (testo_Q, n_quesito, data) VALUES ('$testo','$nome','$data')";
    if ($conn->query($sql)) 
        {
        echo "-";
        $checkQuery="SELECT id FROM quesito WHERE n_quesito='$nome' AND testo_Q='$testo'";
        $checkTable=mysqli_query($conn, $checkQuery) or die ('<p>Error:'.$checkQuery);
        if ($checkTable && mysqli_num_rows ($checkTable)==1)
            {
            $row=mysqli_fetch_array($checkTable, MYSQLI_ASSOC);
            $sql = "INSERT INTO ha (risposta, quesito) VALUES ('$opzione1','$row[id]')";
            if ($conn->query($sql)) 
                {
                echo "-";
                }
            $sql = "INSERT INTO ha (risposta, quesito) VALUES ('$opzione2','$row[id]')";
            if ($conn->query($sql)) 
                {
                echo "-";
                }
            $sql = "INSERT INTO ha (risposta, quesito) VALUES ('$opzione3','$row[id]')";
            if ($conn->query($sql)) 
                {
                echo "-";
                }
            $sql = "INSERT INTO ha (risposta, quesito) VALUES ('$opzione4','$row[id]')";
            if ($conn->query($sql)) 
                {
                echo "-";
                }
            }
        } 
     else 
        {
        echo "Error: " . $sql . "<br>" . $conn->error;
        }
    }
    ?>
</body>
</html>