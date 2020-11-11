<?php
    require_once('./servidor/conection.php')
?>
<!DOCTYPE html>
<html lang="pr-br">
<head>
    <?php require_once('head.html') ?>
</head>
<body class="container-sm">
    <header class="mt-3">
        <?php require('navbar.html') ?>
    </header>
    
    <main class="container mt-1">
        <div class="row mx-auto">

            <div class="col-sm-12 col-xl-6 mt-1">
                <button type="button" class="btn btn-primary btn-lg btn-block">
                    <a class="text-light" href="mailto:contato@soccershop.com?subject:Contato via site" target="_blank">
                    <img src="./images/mail.svg"> contato@soccer.com
                    </a>
                </button>
            </div>

            <div class="col-sm-12 col-xl-6 mt-1">
                <button type="button" class="btn btn-primary btn-lg btn-block">
                    <a class="text-light" href="https://api.whatsapp.com/send?l=pt_BR&phone=05511999999999&text=Oi, quero informações sobre camisas do meu time" target="_blank" class="btn btn-primary col-sm-12">
                        <img src="./images/phone.svg">
                        (11) 99999-9999
                    </a>
                </button>
            </div>
        </div>
           
        <div class="row justify-content-center mt-1">
            <h2>Fale conosco</h2>
            <form method="post" action="./servidor/sentmsg.php" class="col-12">
                <div class="form-group">
                    <label for="nome">Nome</label>
                    <input type="text" class="form-control" id="nome" name="nome" placeholder="Digite seu nome" required>
                </div>
                <div class="form-group">
                    <label for="msg">Mensagem</label>
                    <textarea class="form-control" id="msg" rows="3" name="msg" placeholder="Digite sua mensagem aqui" required></textarea>
                </div>
                <button type="submit" class="btn btn-primary col-xl-12"><img src="./images/sent.svg"> Enviar</button>
            </form>
        </div>

        <div class="mt-1">
            <?php
                    $sql = "select * from comentarios";
                    $result = $conn->query($sql);
                    if ($result->num_rows > 0) {
                        while ($rows = $result->fetch_assoc()) {

            ?>

                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title"><?php echo $rows['nome'] ?></h5>
                        <p class="card-text"><?php echo $rows['msg'] ?></p>
                        <p class="card-text"><small class="text-muted"><?php echo $rows['data'] ?></small></p>
                    </div>
                </div>

            <?php
                            }
                    }
                    else {
                        echo"Não há comentários";
                    }
            ?>
            
        </div>

    </main>

    <?php require_once('footer.html')?>
</body>
</html>