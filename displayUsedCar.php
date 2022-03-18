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
$sql = "SELECT * FROM UsedCar ";
$statement = $pdo->prepare($sql);
$statement ->execute();
echo "<h1>Our Old Cars!<h1/><br/>";
while ($row = $statement->fetch()){
        echo "<h3>Year Built $row[year]<h3/><br/> <h1>Make $row[make]</h1><h1>Model $row[model]</h1><br/>";
}
    
  $mysqli->close();

?>