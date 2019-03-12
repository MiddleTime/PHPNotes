<?php
/**
 * Created by PhpStorm.
 * User: gleb
 * Date: 01/02/2019
 * Time: 15:44
 */
var_dump($_REQUEST);
phpinfo();

$drincs = [
    1 => "Cola",
    2 => "Sprite",
    3 => "fanta"
];
echo "$drincs[2] <br>";

$peoples = [
    [
        "name" => "Иван",
        "surname" => "Петров",
        "age" => '27'
    ],
    [
        "name" => "Дима",
        "surname" => "Петров",
        "age" => '27'
    ],
    [
        "name" => "Саша",
        "surname" => "Петров",
        "age" => '27'
    ],
    [
        "name" => "Вася",
        "surname" => "Петров",
        "age" => '27'
    ],
];
echo $peoples[2]["name"] . "<br>";

$a = 1;
$b = 5;
$c = $a + $b;
echo $c . "<br>";

foreach ($peoples as $people) {
    echo  $people['name'] . PHP_EOL;
}
