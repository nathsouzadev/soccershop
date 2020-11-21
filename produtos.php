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
                    <ul class="list-group">
                        <button class="dropdown-item list-group-item d-flex justify-content-between align-items-center"
                            type="button" onclick="allCategories()">
                            Todas as categorias
                            <span class="badge badge-success badge-pill">12</span>
                        </button>
                        <button class="dropdown-item list-group-item d-flex justify-content-between align-items-center"
                            type="button" onclick="showCategories('nacional')">
                            Clubes brasileiros
                            <span class="badge badge-success badge-pill">3</span>
                        </button>
                        <button class="dropdown-item list-group-item d-flex justify-content-between align-items-center"
                            type="button" onclick="showCategories('europeu')">
                            Clubes europeus<span class="badge badge-success badge-pill">3</span>
                        </button>
                        <button class="dropdown-item list-group-item d-flex justify-content-between align-items-center"
                            type="button" onclick="showCategories('historica')">
                            Camisas históricas<span class="badge badge-success badge-pill">2</span>
                        </button>
                        <button class="dropdown-item list-group-item d-flex justify-content-between align-items-center"
                            type="button" onclick="showCategories('selecao')">
                            Seleções nacionais<span class="badge badge-success badge-pill">2</span>
                        </button>
                        <button class="dropdown-item list-group-item d-flex justify-content-between align-items-center"
                            type="button" onclick="showCategories('casual')">
                            Casuais<span class="badge badge-success badge-pill">2</span>
                        </button>
                    </ul>
                </div>
            </div>
        </div>

        <div class="col-lg-9 mt-1">
            <div class="row">

                <?php
                    $data_json = file_get_contents('http://localhost/soccershop/backend/apisoccer.php?table=produtos');
                    $data = json_decode($data_json, true);
                    foreach ($data as $key => $rows){
                        
                ?>
                
                    <div class="card col-sm-12 col-md-6 col-lg-3 border-light box-item" id="<?php echo $rows[0]['categoria'];?>">
                        <img src="<?php echo $rows[0]['imagem'];?>" class="card-img-top img-thumbnail" alt="<?php echo $rows[0]['descricao'];?>" id="image" onmouseover="overItem(this)">
                        <div class="card-body">
                            <h5 class="card-title"><?php echo $rows[0]['descricao'];?></h5>
                            <p class="card-text text-danger"><strike>R$ <?php echo $rows[0]['preco'];?></strike></p>
                            <p class="card-text">R$ <?php echo $rows[0]['preco_venda'];?></p>
                        </div>
                    </div>
                
                <?php
                            }
                ?>             
            </div>
        </div>

    </main>
    
    <?php require_once('footer.html')?>
    
</body>
</html>