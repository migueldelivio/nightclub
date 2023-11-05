<?php
session_start();

if (!isset($_SESSION["username"])) {
    header("Location: login.html");
    exit();
}

?>
<!DOCTYPE html>
<html>
<head>
    <title>NightClub</title>
</head>
<body>
    <h2>Bem-vindo, <?php echo $_SESSION["username"]; ?>!</h2>
    <p>Este é o nosso site NightClub.</p>
    <a href="logout.php">Sair</a>
</body>
</html>
