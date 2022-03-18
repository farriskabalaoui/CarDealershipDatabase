<?php
  $db_host ='127.0.0.1';
  $db_user = 'sqluser';
  $db_password = 'sqluserpw';
  $db_name = 'CarDealership';
  $db_port = 3306;
    try{
        $pdo = new PDO("mysql:host=$db_host;dbname=$db_name", $db_user,$db_password);
        $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        echo "Connected successfully";
    }
    catch(PDOException $e){
        echo "Connected failed" . $e->getMessage();
    }
$sql = "SELECT * FROM CarWarrantee ";
$statement = $pdo->prepare($sql);
$statement ->execute();
echo "<h1>Our Warrantee options!<h1/><br/>";
while ($row = $statement->fetch()){
        echo "<h3>Type: $row[warType]<h3/><br/><h3>Cost: $row[cost]<h3/><br/>";
}
    
  $mysqli->close();

?>