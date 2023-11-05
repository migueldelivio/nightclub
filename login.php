<?php
session_start();

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $username = "seu_usuario";
    $password = "sua_senha";

    $input_username = $_POST["username"];
    $input_password = $_POST["password"];

    if ($input_username === $username && $input_password === $password) {
        $_SESSION["username"] = $username;
        header("Location: dashboard.php"); 
        echo "Login ou senha inválidos. Tente novamente.";
    }
}
?>
