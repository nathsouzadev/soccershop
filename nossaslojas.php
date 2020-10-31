<!DOCTYPE html>
<html lang="pr-br">
<head>
    <?php require_once('head.html') ?>
</head>
<body class="container-fluid">
    <?php require('navbar.html') ?>
    <header class="col-12 text-left mt-3">
        <h2>Nossas lojas</h2>
        <hr>
    </header>
    
    <main class="container">

        <div class="row justify-content-center">
            <div class="card col-sm-12 col-lg-3 m-1">
                <div class="card-body">
                    <h5 class="card-title">Rio de Janeiro</h5>
                    <p class="card-text">Av. Presidente Vargas, 5000</p>
                    <p class="card-text">10º andar</p>
                    <p class="card-text">Centro</p>
                    <p class="card-text">(21) 11111-1111</p>
                </div>
            </div>

            <div class="card col-sm-12 col-lg-3 m-1">
                <div class="card-body">
                    <h5 class="card-title">São Paulo</h5>
                    <p class="card-text">Avenida Paulista, 985</p>
                    <p class="card-text">3º andar</p>
                    <p class="card-text">Jardins</p>
                    <p class="card-text">(11) 22222-2222</p>
                </div>
            </div>

            <div class="card col-sm-12 col-lg-3 m-1">
                <div class="card-body">
                <h5 class="card-title">Santa Catarina</h5>
                    <p class="card-text">Avenida Major Ávila, 370</p>
                    <p class="card-text">Vila Mariana</p>
                    <p class="card-text">(47) 55555-5555</p>
                </div>
            </div>
        </div>
    </main>

    <?php require_once('footer.html')?>
</body>
</html>