<?php
    require_once('conection.php');

    if (isset($_POST['nome']) && isset($_POST['msg'])){
        $nome = $_POST['nome'];
        $msg = $_POST['msg'];

        $sql = "insert into comentarios (nome, msg) values ('$nome', '$msg')";
        $result = $conn->query($sql);
        echo"<script>alert('Mensagem enviada com sucesso')
                location.href = 'contato.php'</script>";
    }