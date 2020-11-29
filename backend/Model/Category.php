<?php

require_once ("./Connection.php");

class Category extends Connection
{
    private $name;

    public function Message($name){
        $this->name = $name;
    }
    

    public static function getAll()
    {
        $conn = Connection::getDb();
        $i = 0;

        $stmt = $conn->prepare("SELECT * FROM categorys");
        $stmt-> execute();
        while($row = $stmt->fetch(PDO::FETCH_OBJ)){
            $json[$i]= 
                $row
            ;
            $i++;
        }

        header('Access-Control-Allow-Origin: *');
        header('Content-type: application/json');
        echo json_encode($json);
    }

    public static function newCategory($name)
    {
        $conn = Connection::getDb();
        $stmt = $conn->prepare("INSERT INTO comentarios(name_category) VALUES (?)");
        $stmt->bindParam(1, $name);
        $stmt->execute();
    }
}
