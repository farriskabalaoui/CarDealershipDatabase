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
$sql = "SELECT * FROM CarFinancing";
$statement = $pdo->prepare($sql);
$statement ->execute();

echo "<h1>Financing options!<h1/><br/>";

while ($row = $statement->fetch()){
        echo "<h3>Policy nuumber: $row[finPolicyNo]<h3/><br/> <h3>Make Company Name: $row[companyName]</h3><br/>";
}
    
  $mysqli->close();

?>