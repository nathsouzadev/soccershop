<?php
    session_start();
    require_once('conection.php');
    $nome = $_POST['nome'];
    $end = $_POST['end'];
    $tel = $_POST['tel'];
    $prod = $_POST['prod'];
    $qtd = $_POST['qtd'];

    $sql = "select preco, preco_venda from produtos where descricao = '$prod'";
    $result = $conn->query($sql);
    $rows = $result->fetch_assoc();
    
    $preco = $rows['preco_venda'];
    $total = ($preco * $qtd);
    //print_r($_SESSION);
?>

<!DOCTYPE html>
<html lang="pr-br">
<head>
    <?php require_once('head.html') ?>
</head>
<body class="container-fluid">
    <header>
        <?php require('navbar.html') ?>
    </header>
    
        <main class="container-fluid mt-1">
        <h2 class="text-center m-1">Detalhes do pedido</h2>
        <form method="post" action="pedidoconfirm.php">
            <fieldset disabled>
                <div class="form-row">
                    <div class="col-lg-6 mb-3">
                        <label for="disabledTextInput">Nome</label>
                        <input name="nome" type="text" id="disabledTextInput" class="form-control" placeholder="<?php echo $nome; ?>" value="<?php echo $nome; ?>">
                    </div>
                    <div class="col-lg-6 mb-3">
                        <label for="disabledTextInput">Telefone</label>
                        <input name="tel" type="text" id="disabledTextInput" class="form-control" placeholder="<?php echo $tel; ?>" value="<?php echo $tel; ?>">
                    </div>
                </div>
                <div class="form-row">
                    <div class="col-12 mb-3">
                        <label for="disabledTextInput">Endereço</label>
                        <input name="end" type="text" id="disabledTextInput" class="form-control" placeholder="<?php echo $end; ?>" value="<?php echo $end; ?>">
                </div>
                </div>
                <div class="form-row">
                    <div class="col-lg-6 mb-3">
                        <label for="disabledTextInput">Produto</label>
                        <input name="prod" type="text" id="disabledTextInput" class="form-control" placeholder="<?php echo $prod; ?>" value="<?php echo $prod; ?>">
                    </div>
                    <div class="col-lg-6 mb-3">
                        <label for="disabledTextInput">Quantidade</label>
                        <input name="qtd" type="text" id="disabledTextInput" class="form-control" placeholder="<?php echo $qtd; ?>" value="<?php echo $qtd; ?>">
                    </div>    
                </div>
                <div class="form-row">
                    <div class="col-lg-6 mb-3">
                        <label for="disabledTextInput">Valor unitário</label>
                        <input nome="v_unit" type="text" id="disabledTextInput" class="form-control" placeholder="R$ <?php echo $preco; ?>" value="<?php echo $preco; ?>">
                    </div>
                    <div class="col-lg-6 mb-3">
                        <label for="disabledTextInput">Valor total</label>
                        <input nome="v_total" type="text" id="disabledTextInput" class="form-control" placeholder="R$ <?php echo $total; ?>" value="<?php echo $total; ?>">
                    </div>    
                </div>
            </fieldset>
            <div class="form-row">
                <div class="col-lg-6 mb-3">
                    <a class="btn btn-secondary col-12" href="pedidos.php" role="button">Voltar</a>    
                </div>
                <div class="col-lg-6 mb-3">
                    <button class="btn btn-info col-12" type="submit">Fazer pedido</button>
                </div>
            </div>
        </form>
    
    </main>

    
    <?php require_once('footer.html')?>
    
</body>
</html>