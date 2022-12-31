<?php
require('./headers.php');
session_start();
require('./db_user_controller.php');

$body = file_get_contents("php://input");
$user = json_decode($body);

if(!isset($user->uname) || !isset($user->pw)){
    http_response_code(400);
    echo "Käyttäjä ei ole käytössä. Kokeile uudelleen.";
    return;
}

else {
    $username = $user->username;
    $password = $user->pw;

    $respond = 'registerUser'($username,$password);

    http_response_code('200');
    echo json_encode($respond);
}