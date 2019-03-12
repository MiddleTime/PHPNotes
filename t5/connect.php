<?php
/**
 * Created by PhpStorm.
 * User: gleb
 * Date: 13/02/2019
 * Time: 16:17
 */
$pdo = new PDO('mysql:host=localhost;dbname=marl;charset=utf8',
    'root',
    '',
    array(PDO::MYSQL_ATTR_INIT_COMMAND => 'SET NAMES \'UTF8\''));
session_start();