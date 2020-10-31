<?php
    require_once('conection.php')
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
        <h2 class="text-center m-1">Faça seu pedido</h2>
        <form class="needs-validation" method="post" action="pedido_final.php" novalidate>
            <div class="form-row">
                <div class="col-sm-12 col-lg-6 mb-3">
                    <label for="validationTooltip01">Nome</label>
                    <input name="nome" type="text" class="form-control" id="validationTooltip01" placeholder="Digite seu nome" required>
                </div>
                <div class="col-sm-12 col-lg-6 mb-3">
                    <label for="validationTooltip02">Telefone</label>
                    <input name="tel" type="number" class="form-control" id="validationTooltip02" placeholder="(11) 99999-9999" required>
                </div>
            </div>
            <div class="form-row">
                <div class="col-sm-12 mb-3">
                    <label for="validationTooltip03">Endereço</label>
                    <input name="end" type="text" class="form-control" id="validationTooltip03" placeholder="Digite um endereço válido"required>
                </div>
                <div class="col-sm-6 mb-3">
                <label for="validationTooltip04">Selecione o produto</label>
                <select name="prod" class="custom-select" id="validationTooltip04" required>
                <option selected disabled value="">Escolha o produto</option>
                    <?php
                        $sql = "select descricao from produtos";
                        $result = $conn->query($sql);
                        while ($rows = $result->fetch_assoc()) {
                    ?>
                    
                        <option value="<?php echo $rows['descricao'] ?>"><?php echo $rows['descricao'] ?></option>"
                    
                    <?php
                        }
                    ?>
                </select>
            </div>
            <div class="col-sm-6 mb-3">
                <label for="validationTooltip05">Quantidade</label>
                <input name="qtd" type="number" class="form-control" id="validationTooltip05" required>
            </div>
        </div>
        <button class="btn btn-primary col-sm-12" type="submit">Fazer pedido</button>
      </form> 

    
    <?php require_once('footer.html')?>
    
</body>
</html>