<!DOCTYPE html>
<html lang="pr-br">
<head>
    <?php require_once('head.html') ?>
</head>
<body class="container-fluid">
    <header>
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
            <form method="post" action="./backend/sentmsg.php" class="col-12">
                <div class="form-group">
                    <label for="nome">Nome</label>
                    <input type="text" class="form-control" id="nome" name="name" placeholder="Digite seu nome" required>
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
                
                $data_json = file_get_contents('http://localhost/soccershop/backend/apisoccer.php?table=comentarios');
                $data = json_decode($data_json, true);
                foreach ($data as $key => $rows){

            ?>

                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title"><?php echo $rows[0]['nome'] ?></h5>
                        <p class="card-text"><?php echo $rows[0]['msg'] ?></p>
                        <p class="card-text"><small class="text-muted"><?php echo $rows[0]['data'] ?></small></p>
                    </div>
                </div>

            <?php
                            }
            ?>
            
        </div>

    </main>

    <?php require_once('footer.html')?>
</body>
</html>