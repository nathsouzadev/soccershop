<?php

require_once('./Model/Msg.php');

$name = $_POST['name'];
$msg = $_POST['msg'];
$message = new Msg($name, $msg);

$validate = $message->sentMsg(); 

header('Access-Control-Allow-Origin: *');
header('Content-type: application/json');

if ($validate ){
    echo json_encode(true);
} else {
    echo json_encode(false);
}
