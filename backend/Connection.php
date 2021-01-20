<?php
    
abstract class Connection
{
    protected static function getDb()
    {
        $conn = new PDO("mysql:host=localhost;dbname=soccershop;charset=utf8",
        "root",
        ""
        );

        if ($conn) {
            return $conn;
        } else {
            echo "<h1>Connection error!</h1>";
        }
    }
}