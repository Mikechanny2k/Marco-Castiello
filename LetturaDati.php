<?php
require_once 'config.php';
$sql = "SELECT Nome, PunteggioMax FROM Giocatore WHERE IDGiocatore=1";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
  // output dei dati di ogni riga
  while($row = $result->fetch_assoc()) {
    echo "Nome: " . $row["Nome"]. " - Punteggio massimo: " . $row["PunteggioMax"]. "<br>";
  }
} else {
  echo "Nessun risultato";
}
?>
