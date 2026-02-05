
<?php

//config.php

//Include Google Client Library for PHP autoload file
require_once 'vendor/autoload.php';

//Make object of Google API Client for call Google API
$google_client = new Google_Client();

//Set the OAuth 2.0 Client ID
$google_client->setClientId('1059481411909-n0780q31krt8i318cmq23c26tvfe42s9.apps.googleusercontent.com');

//Set the OAuth 2.0 Client Secret key
$google_client->setClientSecret('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');

//Set the OAuth 2.0 Redirect URI
$google_client->setRedirectUri('http://localhost/anycall/check.php');
//
$google_client->addScope('email');

$google_client->addScope('profile');

//start session on web page
session_start();

?>