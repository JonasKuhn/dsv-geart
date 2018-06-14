<?php
    require './bd/connection.php';
    $sql= "Select * "
            . " from usuario";
    $query =$mysqli->query($sql);
    $dados = $query->fetch_array();
    $nome = $dados ['nome'];
    $email = $dados ['email'];
?>
<h4>Corrente: <?=$nome;?></h4>
<h4>Potencia: <?=$email;?></h4>
