<?php
require_once "../models/ConnectAjax.php";

date_default_timezone_set('America/Lima');
$fechaRegistro = date('Y-m-d');
$tipoSeguimiento = $_POST["tipSeg"];
$profesional = $_POST["profPsi"];
$dnipac = $_POST["ndocpac"];
$hispaciente = $_POST["nhispac"];
$nombrePaciente = $_POST["nombApPac"];
$sexoPaciente = $_POST["sexPac"];
$edadPaciente = $_POST["edadPac"];
$diag1pac = $_POST["diagpac1"];
$diag2pac = $_POST["diagpac2"];
$regCom =  $_POST["comunicaFamilia"];
$dnifam = $_POST["ndocfam"];
$nombreFamiliar = $_POST["nombApFam"];
$parentesco = $_POST["parentFam"];
$sexoFamiliar = $_POST["sexFam"];
$edadFamiliar = $_POST["edadFam"];
$diag1fam = $_POST["diag1Fam"];
$diag2fam = $_POST["diag2Fam"];


if (isset($tipoSeguimiento) && $tipoSeguimiento == "1") {
    $consulta = "CALL registrar_seguimiento_cf('$fechaRegistro', $tipoSeguimiento,$profesional,'$dnipac','$hispaciente', '$nombrePaciente',$sexoPaciente,'$edadPaciente',$diag1pac,$diag2pac,'$regCom','$dnifam','$nombreFamiliar',$parentesco,$sexoFamiliar,'$edadFamiliar',$diag1fam,$diag2fam)";
    echo mysqli_query($conexion, $consulta);
}
if (isset($tipoSeguimiento) && $tipoSeguimiento == "2") {
    $consulta = "CALL registrar_seguimiento_cf('$fechaRegistro', $tipoSeguimiento,$profesional,'$dnipac','$hispaciente', '$nombrePaciente',$sexoPaciente,'$edadPaciente',$diag1pac,$diag2pac,'$regCom','$dnifam','$nombreFamiliar',$parentesco,$sexoFamiliar,'$edadFamiliar',$diag1fam,$diag2fam)";
    echo mysqli_query($conexion, $consulta);
}
if (isset($tipoSeguimiento) && $tipoSeguimiento == "3") {
    $consulta = "CALL registrar_seguimiento_sf('$fechaRegistro', $tipoSeguimiento,$profesional,'$dnipac','$hispaciente', '$nombrePaciente',$sexoPaciente,'$edadPaciente',$diag1pac,$diag2pac,'$regCom')";
    echo mysqli_query($conexion, $consulta);
}

if (isset($tipoSeguimiento) && $tipoSeguimiento == "4") {
    $consulta = "CALL registrar_seguimiento_sf('$fechaRegistro', $tipoSeguimiento,$profesional,'$dnipac','$hispaciente', '$nombrePaciente',$sexoPaciente,'$edadPaciente',$diag1pac,$diag2pac,'$regCom')";
    echo mysqli_query($conexion, $consulta);
}
