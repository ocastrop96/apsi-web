<?php
require_once "ConnectPDO.php";
class ModeloSeguimiento
{
    static public function mdlListarTipSeguimiento()
    {
        $stmt = Conexion::conectar()->prepare("CALL listar_tipSeguimiento()");
        $stmt->execute();
        return $stmt->fetchAll();
        $stmt->close();
        $stmt = null;
    }
    static public function mdlListarTipoSexo()
    {
        $stmt = Conexion::conectar()->prepare("CALL listar_tipoSexo()");
        $stmt->execute();
        return $stmt->fetchAll();
        $stmt->close();
        $stmt = null;
    }
    static public function mdlListarDiagnosticos()
    {
        $stmt = Conexion::conectar()->prepare("CALL listar_diagnosticos()");
        $stmt->execute();
        return $stmt->fetchAll();
        $stmt->close();
        $stmt = null;
    }

    static public function mdlListarProfesionales()
    {
        $stmt = Conexion::conectar()->prepare("CALL listar_profesionales()");
        $stmt->execute();
        return $stmt->fetchAll();
        $stmt->close();
        $stmt = null;
    }

    static public function mdlListarParentesco()
    {
        $stmt = Conexion::conectar()->prepare("CALL listar_parentesco()");
        $stmt->execute();
        return $stmt->fetchAll();
        $stmt->close();
        $stmt = null;
    }
}
