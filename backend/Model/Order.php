<?php

require_once ("../Connection.php");

class Order extends Connection
{
    private $name;
    private $adress;
    private $phone;
    private $prod;
    private $qtd;
    private $price;
    private $price_final;

        public function Order($name, $adress, $phone, $prod, $qtd, $price, $price_final)
        {
            $this->name = $name;
            $this->adress = $adress;
            $this->phone = $phone;
            $this->prod = $prod;
            $this->qtd = $qtd;
            $this->price = $price;
            $this->price_final = $price_final;
        }

        public static function getPrice()
        {
            $conn = Connection::getDb();

            $stmt = $conn->prepare("SELECT * FROM produtos");
            $stmt->execute();
            return $stmt->fetchAll(PDO::FETCH_ASSOC);
        }

}

$info = Order::getPrice();
print_r($info);