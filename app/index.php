<?php
require 'config.php';
require 'vendor/autoload.php';

// For PHP 7
V3WareHouse::getInstance("v3MongoDB", $hostname, $username, $password, $dbname, $port);

// Init Application
$app = new V3Application($dbname, $key);

// Add Custom Route
$app->addRoute('/hello', function () {
          $app = \Slim\Slim::getInstance();

          $app->response()->header('Content-Type', 'application/json');
          $app->response()->status(200);

          $msg = array("msg" => "Hello Docker !!!");
          
          echo json_encode($msg);
        });

// Start V3ctor Application
$app->start();

?>