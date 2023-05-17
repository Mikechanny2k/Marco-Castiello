<?php
session_start();

// Connessione al database
require_once'config.php';
$conn = new mysqli(
    $config['mysql_host'],
    $config['mysql_user'],
    $config['mysql_password'],
    $config['mysql_db']
);
if($conn->connect_error)
die("Errore connesione al database.<br>");

    // Controllo se l'utente ha inviato il form di login
    if (isset($_POST["username"]) && isset($_POST["password"])) {

    // Prevenzione di attacchi SQL Injection e XSS
    $username = mysqli_real_escape_string($db, $_POST["username"]);
    $password = mysqli_real_escape_string($db, $_POST["password"]);



    // Criptazione della password con MD5 (sicurezza)
    $password = md5($password);



    // Query per verificare se l'utente esiste nel database
    $query = "SELECT * FROM users WHERE username='$username' AND password='$password'";
    $result = mysqli_query($db, $query);

    if (mysqli_num_rows($result) == 1) {
       
        $_SESSION["username"] = $username;

       //Impostato un cookie per la sessione nel runtime
        setcookie("username", $username, time() + (86400 * 30), "/");

       
        header("Location: index.html");
    } 
    else {
        // Login fallito
        echo "Username o password non validi";
    }
}
?>

<!DOCTYPE html>
<html lang="it">
<html>
<head>
  <title>Login</title>
</head>
<body>
<form method="post" action>
    <label for="username">Username:</label>
    <input type="text" name="username" id="username">
    <br>
    <label for="password">Password:</label>
    <input type="password" name="password" id="password">
    <br>
    <label for="submit">Loggati</label>
    <input type="submit" value="Login">
</form>
</body>
</html>