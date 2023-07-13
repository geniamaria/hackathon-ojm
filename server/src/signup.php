<?php
require "../config/connect.php";
session_start();

$name = $_POST["name"];
$cell = $_POST["cell"];
$email = $_POST["email"];
$address = $_POST["address"];
$password = md5($_POST["password"]);

//verificar se o usuario ja foi cadastrado
$fetchDataQuery = "SELECT * FROM $database_name.users WHERE email = '$email' OR cell = $cell";
$dataResult = $dbcon->query($fetchAdminDataQuery);

if ($dataResult->rowCount() == 0) {
    $_SESSION['isSucessful'] = false;
    $_SESSION['register-status'] = "Ja existe um usuario cadastrado com o mesmo email ou numero de celular!";
    header("location: ../../signup/");
} else {
    try {
        $insertQuery = "INSERT INTO $database_name.users (name, cell, email, address, password) VALUES (?, ?, ?, ?)";
        $stmt = $dbcon->prepare($insertQuery);
        $stmt->execute([$name, $cell, $email, $address, $password]);
        $_SESSION['isSucessful'] = true;
    } catch (PDOException $ex) {
        echo $ex->getMessage();
    }
}

//Terminar a conexao PDO
$dbcon = null;

?>