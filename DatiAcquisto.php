<?php
require_once'config.php';
$conn = new mysqli(
    $config['mysql_host'],
    $config['mysql_user'],
    $config['mysql_password'],
    $config['mysql_db']
);
if($conn->connect_error)
die("Errore connesione al database.<br>");

$sql = "INSERT INTO Acquisto (IDGiocatore, IDSeme, Data) VALUES (1, 1, '2023-05-18')";
if ($conn->query($sql) === TRUE) {
  echo "Acquisto effettuato con successo";
} else {
  echo "Errore nell'acquisto: " . $conn->error;
}
?>