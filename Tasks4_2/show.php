<?php
require 'database/QueryBuilder.php';

$db = new QueryBuilder;

$id = $_GET['id'];

//$task = $db->getTask($id);
$task = $db->getOne("posts", $id);

?>

<!doctype html>
<html lang="en">
<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <h1><?= $task['title'];?></h1>
            <p>
                <?= $task['comment'];?>
            </p>
            <p>
                <?= $task['date'];?>
            </p>
            <a href="./">Go Back</a>
        </div>
    </div>
</div>
</body>
</html>