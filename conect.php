<?php
$servername = "localhost"; 
$username = "seu_usuario";
$password = "sua_senha"; 
$database = "seu_banco_de_dados"; 


$conn = new mysqli($servername, $username, $password, $database);


if ($conn->connect_error) {
    die("Erro de conexão: " . $conn->connect_error);
}
?>
