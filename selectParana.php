<?php

try {
  	$conn = new PDO('mysql:host=localhost;dbname=teste', 'root', '');
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    $name = 'parana';

    $data = $conn->query('SELECT nome_estado FROM estado WHERE nome_estado = ' . $conn->quote($name));

    foreach($data as $row) {
        print_r($row);
    }

} catch(PDOException $e) {
    echo 'ERROR: ' . $e->getMessage();
}


?>
