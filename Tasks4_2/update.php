<?php

require 'database/QueryBuilder.php';

$db = new QueryBuilder;

$data = [
    "id"    =>  $_GET['id'],
    "title" =>  $_POST['title'],
    "comment"   =>  $_POST['comment'],
    "date"   =>  $_POST['date']
];

$db->update("posts", $data);

header("Location:./"); exit;