<?php

try {
  	$conn = new PDO('mysql:host=localhost;dbname=teste', 'root', '');
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);


    $data = $conn->query('SELECT * FROM estado
	INNER JOIN pais ON estado.id = pais.id');

    foreach($data as $row) {
        print_r($row);
    }

} catch(PDOException $e) {
    echo 'ERROR: ' . $e->getMessage();
}


?>
