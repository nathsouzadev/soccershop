<?php

require_once ("./Connection.php");

class Msg extends Connection
{
    private $name;
    private $msg;

    public function Msg($name, $msg){
        $this->name = $name;
        $this->msg = $msg;
    }

    public function getName(){
        return $this->name;
    }
    
    public function setName($name){
        $this->name =$name;
    }
    
    public function getMsg() {
        return $this->msg;
    }
    
    public function setMsg($msg){
        $this->msg =$msg;
    }
    

    public static function getAll()
    {
        $conn = Connection::getDb();
        $i = 0;

        $stmt = $conn->prepare("SELECT * FROM comments");
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

    public function sentMsg()
    {
        $conn = Connection::getDb();
        $stmt = $conn->query("INSERT INTO comments(name_msg, msg) VALUES ('$this->name', '$this->msg')");
        
        if ($stmt->rowCount() > 0) {
            return true;
        } else {
            return false;
        }
    }
}
