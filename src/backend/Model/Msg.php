<?php

require_once ("./Connection.php");

class Msg extends Connection
{
    private $name;
    private $msg;

    public function Message($name, $msg){
        $this->name = $name;
        $this->msg = $msg;
    }
    

    public static function getAll($table)
    {
        $conn = Connection::getDb();

        $stmt = $conn->query("SELECT * FROM {$table}");
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }

    public static function newMsg($name, $msg)
    {
        $conn = Connection::getDb();
        $stmt = $conn->prepare("INSERT INTO comentarios(nome, msg) VALUES (?, ?)");
        $stmt->bindParam(1, $name);
        $stmt->bindParam(2, $msg);
        $stmt->execute();
    }
}
