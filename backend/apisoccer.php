<?php

require_once ("./Model/GetContent.php");
$table = $_GET["table"];
$data = Content::getAll($table);
