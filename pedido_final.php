<?php
    session_start();
    require_once('./backend/Connection.php');
    $conn = new Connection;
    $_SESSION['nome'] = $_POST['nome'];
    $_SESSION['end'] = $_POST['end'];
    $_SESSION['tel'] = $_POST['tel'];
    $_SESSION['prod'] = $_POST['prod'];
    $_SESSION['qtd'] = $_POST['qtd'];

    /*
    $sql = "select preco, preco_venda from produtos where descricao = '{$_SESSION['prod']}'";
    $result = $conn->query($sql);
    $rows = $result->fetch_assoc();
    */
    
    $_SESSION['preco'] = $rows['preco_venda'];
    $_SESSION['total'] = ($_SESSION['preco'] * $_SESSION['qtd']);
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
        <form method="post" action="./servidor/pedidoconfirm.php">
            <fieldset disabled>
                <div class="form-row">
                    <div class="col-lg-6 mb-3">
                        <label for="disabledTextInput">Nome</label>
                        <input name="nome" type="text" id="disabledTextInput" class="form-control" placeholder="<?php echo $_SESSION['nome']; ?>" value="<?php echo $_SESSION['nome']; ?>">
                    </div>
                    <div class="col-lg-6 mb-3">
                        <label for="disabledTextInput">Telefone</label>
                        <input name="tel" type="text" id="disabledTextInput" class="form-control" placeholder="<?php echo $_SESSION['tel']; ?>" value="<?php echo $_SESSION['tel']; ?>">
                    </div>
                </div>
                <div class="form-row">
                    <div class="col-12 mb-3">
                        <label for="disabledTextInput">Endereço</label>
                        <input name="end" type="text" id="disabledTextInput" class="form-control" placeholder="<?php echo $_SESSION['end']; ?>" value="<?php echo $_SESSION['end']; ?>">
                </div>
                </div>
                <div class="form-row">
                    <div class="col-lg-6 mb-3">
                        <label for="disabledTextInput">Produto</label>
                        <input name="prod" type="text" id="disabledTextInput" class="form-control" placeholder="<?php echo $_SESSION['prod']; ?>" value="<?php echo $_SESSION['prod']; ?>">
                    </div>
                    <div class="col-lg-6 mb-3">
                        <label for="disabledTextInput">Quantidade</label>
                        <input name="qtd" type="text" id="disabledTextInput" class="form-control" placeholder="<?php echo $_SESSION['qtd']; ?>" value="<?php echo $_SESSION['qtd']; ?>">
                    </div>    
                </div>
                <div class="form-row">
                    <div class="col-lg-6 mb-3">
                        <label for="disabledTextInput">Valor unitário</label>
                        <input nome="v_unit" type="text" id="disabledTextInput" class="form-control" placeholder="R$ <?php echo $_SESSION['preco']; ?>" value="<?php echo $_SESSION['preco']; ?>">
                    </div>
                    <div class="col-lg-6 mb-3">
                        <label for="disabledTextInput">Valor total</label>
                        <input nome="v_total" type="text" id="disabledTextInput" class="form-control" placeholder="R$ <?php echo $_SESSION['total']; ?>" value="<?php echo $_SESSION['total']; ?>">
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