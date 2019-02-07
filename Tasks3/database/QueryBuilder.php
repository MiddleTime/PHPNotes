<?php

class QueryBuilder
{
    //Список задач
    function getAllTasks()
    {
        // 1. Подключиться к БД
        $pdo = new PDO("mysql:host=localhost; dbname=test", "root", "");
        // CRUD
        //2. Подготовить запрос
        $sql = "SELECT * FROM tasks";
        $statement = $pdo->prepare($sql); //подготовить
        $result = $statement->execute(); //true || false
        $tasks = $statement->fetchAll(PDO::FETCH_ASSOC);

        return $tasks;
    }

    //Сохранение новой задачи
    function addTask($data)
    {
        $pdo = new PDO("mysql:host=localhost; dbname=test", "root", "");
        $sql = "INSERT INTO tasks (title, content) VALUES (:title, :content)";
        $statement = $pdo->prepare($sql);
        $statement->execute($data); //true || false
    }

    // Вывод одной задачи
    function getTask($id)
    {
        $pdo = new PDO("mysql:host=localhost; dbname=test", "root", "");
        $statement = $pdo->prepare("SELECT * FROM tasks WHERE id=:id");
        $statement->bindParam(":id", $id);
        $statement->execute();
        $task = $statement->fetch(PDO::FETCH_ASSOC);

        return $task;
    }

    //Изменение\обновление существующей задачи
    function updateTask($data)
    {
        $pdo = new PDO("mysql:host=localhost;dbname=test", "root", "");
        $sql = 'UPDATE tasks SET title=:title, content=:content WHERE id=:id';
        $statement = $pdo->prepare($sql);
        $statement->execute($data); // true || false
    }

    //Удаление задачи
    function deleteTask($id)
    {
        $pdo = new PDO("mysql:host=localhost; dbname=test", "root", "");

        $sql = 'DELETE FROM tasks WHERE id=:id';
        $statement = $pdo->prepare($sql);
        $statement->bindParam(":id", $id);
        $statement->execute();
    }
}