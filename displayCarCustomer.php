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
$sql = "SELECT * FROM CarCustomer ";
$statement = $pdo->prepare($sql);
$statement ->execute();

while ($row = $statement->fetch()){
  echo "<h3>First Name $row[firstName]<h3/><br/> <h3>Last Name $row[lastName]<h3/><h3>Id $row[custId]<h3/><br/><br/>";       
        
}
    
  $mysqli->close();

?>