<?php
    session_start();
    require_once('../servidor/conection.php');
    require_once('../head.html');

    if(isset($_SESSION['nome'])) {
        $sql = "insert into pedidos (nome, endereco, telefone, produto, valor_unitario, quantidade, valor_total) 
        values ('{$_SESSION['nome']}', '{$_SESSION['end']}', '{$_SESSION['tel']}', '{$_SESSION['prod']}', {$_SESSION['preco']}, {$_SESSION['qtd']}, {$_SESSION['total']})";
        //echo $sql;
        $result = $conn->query($sql);
        session_destroy();
        echo "<script>alert('Pedido finalizado')
             location.href ='../index.php'</script>";
    }
    