<?php
$server = "localhost";
$user = "apsi-admin";
$pass = "d_&Eu()VD#b74!(";
$db = "apsi-web";
$conexion = mysqli_connect($server, $user, $pass, $db);
mysqli_set_charset($conexion, "utf8");

if (!$conexion) {
    die("Connection failed: " . mysqli_connect_error());
}
