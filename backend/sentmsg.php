<?php
    require_once('./Model/Msg.php');

    if (isset($_POST['name']) && isset($_POST['msg'])){
        $name = $_POST['name'];
        $msg = $_POST['msg'];

        $msg = Msg::newMsg($name, $msg);
    }