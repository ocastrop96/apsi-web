<?php
class ControladorSeguimiento
{
    static public function ctrListarTipSeguimiento()
    {
        $repuesta = ModeloSeguimiento::mdlListarTipSeguimiento();
        return $repuesta;
    }

    static public function ctrListarDiagnosticos()
    {
        $repuesta = ModeloSeguimiento::mdlListarDiagnosticos();
        return $repuesta;
    }

    static public function ctrListarProfesionales()
    {
        $repuesta = ModeloSeguimiento::mdlListarProfesionales();
        return $repuesta;
    }

    static public function ctrListarTipoSexo()
    {
        $repuesta = ModeloSeguimiento::mdlListarTipoSexo();
        return $repuesta;
    }
    static public function ctrListarParentesco()
    {
        $repuesta = ModeloSeguimiento::mdlListarParentesco();
        return $repuesta;
    }
}
