<?php
// $_POST

$pdo = new PDO("mysql:host=localhost; dbname=test", "root", "");
$sql = "INSERT INTO tasks (title, content) VALUES (:title, :content)";  //ставим местки внутрь, от sq иньекций
$statement = $pdo->prepare($sql);

/*
 * один вариант связывания меток
 *  $statement->bindParam
 

$statement->bindParam(':title', $_POST['title']);
$statement->bindParam(':content', $_POST['content']);
 * $result = $statement->execute();
*/

$statement->execute($_POST); //true || false

//отправки письма

//отправки СМС

//уведомления админа

//уведомления определенного пользователя



header("Location: http://localhost/MyNotes0/Tasks2/"); exit;



