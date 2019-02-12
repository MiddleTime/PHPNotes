<?php

require 'database/QueryBuilder.php';

$db = new QueryBuilder;

$db->addTask($_POST);

header("Location: http://localhost/MyNotes0/Tasks3/"); exit;
