<?php
//Controladores
require_once "controllers/ControladorPlantilla.php";

//Modelos
// require_once "models/ModeloUsuarios.php";

// Llamado a los objetos
$plantilla = new ControladorPlantilla();
$plantilla->ctrPlantilla();
