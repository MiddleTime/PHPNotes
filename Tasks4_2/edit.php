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
            <h1>Edit Post</h1>
            <form action="update.php?id=<?= $task['id'];?>" method="post">

                <div class="form-group">
                    <input type="text" name="title" class="form-control" value="<?= $task['title'];?>">
                </div>

                <div class="form-group">
                    <textarea name="comment" class="form-control"><?= $task['comment'];?></textarea>
                </div>
                <div class="form-group">
                    <input type="date" name="date" class="form-control" value="<?= $task['date'];?>">
                </div>

                <div class="form-group">
                    <button class="btn btn-warning" type="submit">Submit</button>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>