<?php
    /**
     * Este ficheiro de configuracao usa o PDO.
     * Ver https://www.phptutorial.net/php-pdo/ para saber mais sobre o PDO.
     */


    require_once 'config.php'; // Importar as constantes de configuracao

    $dns = "mysql:$host_name;dbname=$database_name;charset=UTF8";

    try {
        $dbcon = new PDO($dns, $user_name, $password);
    } catch (PDOException $e) {
        echo $e->getMessage();
    }
    
?>