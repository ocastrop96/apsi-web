<?php
require_once "../models/ConnectAjax.php";

date_default_timezone_set('America/Lima');
$fechaRegistro = date('Y-m-d');
$tipoSeguimiento = 4;
$profesional = 1;
$dnipac = '77478995';
$hispaciente = '123';
$nombrePaciente = 'Olger Ivan Castro Palacios';
$sexoPaciente = 1;
$edadPaciente = '25 años';
$diag1pac = 1;
$diag2pac = 0;
$regCom = 'NO';


$consulta = "CALL registrar_seguimiento_sf('$fechaRegistro', $tipoSeguimiento,$profesional,'$dnipac','$hispaciente', '$nombrePaciente',$sexoPaciente,'$edadPaciente',$diag1pac,$diag2pac,'$regCom')";
echo mysqli_query($conexion, $consulta);
