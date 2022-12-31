<?php

require_once('./headers.php');
session_start();
require_once('./functions.php');

// lisätty uusi tilaus
$tilausnro = $_POST["tilaus"];

$sql = "INSERT INTO tilaus(tilausnro) VALUES(?)";

$statement = $dbcon->prepare($sql);

$statement->execute(array($tilausnro));