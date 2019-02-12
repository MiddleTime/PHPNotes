<?php

require 'database/QueryBuilder.php';

$db = new QueryBuilder;

$id = $_GET['id'];

$db->deleteTask($id);

header("Location: http://localhost/MyNotes0/Tasks3/"); exit;