<?php
//Controladores
require_once "controllers/ControladorPlantilla.php";
require_once "controllers/ControladorSeguimiento.php";


//Modelos
require_once "models/ModeloSeguimiento.php";

// Llamado a los objetos
$plantilla = new ControladorPlantilla();
$plantilla->ctrPlantilla();
