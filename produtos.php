<?php
    require_once('./servidor/conection.php')
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
    
    <main class="container row m-auto">

        <div class="col-sm-12 col-lg-3 mt-1">
            <div class="dropdown mt-1">
                <button class="col-sm-12 btn btn-secondary dropdown-toggle" type="button" id="dropdownMenu2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Categorias
                </button>
                <div class="dropdown-menu col-sm-12" aria-labelledby="dropdownMenu2">
                    <button class="dropdown-item" type="button" onclick="allCategories()">Todas as categorias</button>
                    <button class="dropdown-item" type="button" onclick="showCategories('nacional')">Clubes brasileiros</button>
                    <button class="dropdown-item" type="button" onclick="showCategories('europeu')">Clubes europeus</button>
                    <button class="dropdown-item" type="button" onclick="showCategories('historica')">Camisas históricas</button>
                    <button class="dropdown-item" type="button" onclick="showCategories('selecao')">Seleções nacionais</button>
                    <button class="dropdown-item" type="button" onclick="showCategories('casual')">Casuais</button>
                </div>
            </div>
        </div>

        <div class="col-lg-9 mt-1">
            <div class="row">

                <?php
                    $sql = "select * from produtos";
                    $result = $conn->query($sql);
                    if ($result->num_rows > 0) {
                        while ($rows = $result->fetch_assoc()) {

                ?>
                
                    <div class="card col-sm-12 col-md-6 col-lg-3 border-light box-item" id="<?php echo $rows['categoria'];?>">
                        <img src="<?php echo $rows['imagem'];?>" class="card-img-top img-thumbnail" alt="<?php echo $rows['descricao'];?>" id="image" onmouseover="overItem(this)">
                        <div class="card-body">
                            <h5 class="card-title"><?php echo $rows['descricao'];?></h5>
                            <p class="card-text text-danger"><strike>R$ <?php echo $rows['preco'];?></strike></p>
                            <p class="card-text">R$ <?php echo $rows['preco_venda'];?></p>
                        </div>
                    </div>
                
                <?php
                            }
                    }
                    else {
                        echo"Não há produtos cadastrados";
                    }
                ?>             
            </div>
        </div>

    </main>
    
    <?php require_once('footer.html')?>
    
</body>
</html>