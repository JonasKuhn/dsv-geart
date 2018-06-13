<?php
$dsn = "mysql:dbname=geart;host=177.125.243.108:3305";
$dbuser = "geart";
$dbpasswd = "geart1011-$$";

try {
    $pdo = new PDO($dsn, $dbuser, $dbpasswd);
} catch (PDOException $e) {
    echo "Falhou: " . $e->getMessage();
}