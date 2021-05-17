<div class="container">
    <div class="row mb-3">
        <div class="col-sm-12 col-md-12 col-12">
            <span class="text-danger font-weight-bold">(*) Completa correctamente los campos requeridos en el formulario.</span>
        </div>
    </div>
    <form action="" method="post" id="formSeguimiento">
        <div class="card card-olive">
            <div class="card-header">
                <h5 class="card-title m-0 font-weight-bold">1. Tipo de Seguimiento y Personal de Salud. </h5>&nbsp;&nbsp;<i class="fas fa-users"></i>
            </div>
            <div class="card-body">
                <div class="row">
                    <div class="col-12 col-sm-12 col-md-12 col-lg-6 col-xl-6">
                        <div class="form-group">
                            <label for="tipSeg"> Tipo de Seguimiento:<span class="text-danger">&nbsp;*</span></label>
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fas fa-user"></i></span>
                                </div>
                                <select class="form-control" name="tipSeg" id="tipSeg">
                                    <option value="0">Seleccione tipo</option>
                                    <?php
                                    $tipSeg = ControladorSeguimiento::ctrListarTipSeguimiento();
                                    foreach ($tipSeg as $key => $value) {
                                        echo '<option value="' . $value["idTipSeg"] . '">' . $value["descTipSeg"] . '</option>';
                                    }
                                    ?>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-sm-12 col-md-12 col-lg-6 col-xl-6">
                        <div class="form-group">
                            <label for="profPsi"> Profesional que atiende:<span class="text-danger">&nbsp;*</span></label>
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fas fa-laptop-medical"></i></span>
                                </div>
                                <select class="form-control" name="profPsi" id="profPsi">
                                    <option value="0">Seleccione profesional</option>

                                    <?php
                                    $personalPsi = ControladorSeguimiento::ctrListarProfesionales();
                                    foreach ($personalPsi as $key => $value) {
                                        echo '<option value="' . $value["idProfesional"] . '">' . $value["apellidos_nombres"] . '</option>';
                                    }
                                    ?>
                                </select>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="card card-olive">
            <div class="card-header">
                <h5 class="card-title m-0 font-weight-bold">2. Datos del paciente en seguimiento </h5>&nbsp;&nbsp;<i class="fas fa-users"></i>
            </div>
            <div class="card-body">
                <div class="row">
                    <div class="col-12 col-sm-12 col-md-12 col-lg-3 col-xl-3">
                        <div class="form-group">
                            <label for="ndocpac">Número de Documento:<span class="text-danger">&nbsp;*</span></label>
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fas fa-hashtag"></i></span>
                                </div>
                                <input type="text" class="form-control" placeholder="Ingrese N° de documento" autocomplete="off" name="ndocpac" id="ndocpac">
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-sm-12 col-md-12 col-lg-3 col-xl-3">
                        <div class="form-group">
                            <label for="nhispac">Número de Historia Clínica:<span class="text-danger">&nbsp;*</span></label>
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fas fa-hashtag"></i></span>
                                </div>
                                <input type="text" class="form-control" placeholder="Ingrese N° de HC" autocomplete="off" name="nhispac" id="nhispac">
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-sm-12 col-md-12 col-lg-6 col-xl-6">
                        <div class="form-group">
                            <label for="nombApPac">Nombres y Apellidos:<span class="text-danger">&nbsp;*</span></label>
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fas fa-signature"></i></span>
                                </div>
                                <input type="text" class="form-control" placeholder="Ingrese nombres y apellidos del paciente" autocomplete="off" id="nombApPac" name="nombApPac">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-12 col-sm-12 col-md-12 col-lg-3 col-xl-3">
                        <div class="form-group">
                            <label for="sexPac">Sexo:<span class="text-danger">&nbsp;*</span></label>
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fas fa-venus-mars"></i></span>
                                </div>
                                <select class="form-control" name="sexPac" id="sexPac">
                                    <option value="0">Seleccione sexo</option>
                                    <?php
                                    $tipSex = ControladorSeguimiento::ctrListarTipoSexo();
                                    foreach ($tipSex as $key => $value) {
                                        echo '<option value="' . $value["idTipSexo"] . '">' . $value["desctipSexo"] . '</option>';
                                    }
                                    ?>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-sm-12 col-md-12 col-lg-4 col-xl-4">
                        <div class="form-group">
                            <label for="edadPac">Edad:<span class="text-danger">&nbsp;*</span></label>
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fas fa-id-card-alt"></i></span>
                                </div>
                                <input type="text" class="form-control" placeholder="Ingrese edad" autocomplete="off" name="edadPac" id="edadPac">
                            </div>
                        </div>
                    </div>

                </div>
                <div class="row">
                    <div class="col-12 col-sm-12 col-md-12 col-lg-6 col-xl-6">
                        <div class="form-group">
                            <label for="diagpac1">Diagnóstico 1:<span class="text-danger">&nbsp;*</span></label>
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fas fa-map-marked-alt"></i></span>
                                </div>
                                <select class="form-control" id="diagpac1" name="diagpac1">
                                    <option value="0">Seleccione Diagnostico 1</option>

                                    <?php
                                    $diagPaci = ControladorSeguimiento::ctrListarDiagnosticos();
                                    foreach ($diagPaci as $key => $value) {
                                        echo '<option value="' . $value["idDiagnostico"] . '">' . $value["descripcion"] . '</option>';
                                    }
                                    ?>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-sm-12 col-md-12 col-lg-6 col-xl-6">
                        <div class="form-group">
                            <label for="diagpac2">Diagnóstico 2 (OPCIONAL)</label>
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fas fa-map-marked-alt"></i></span>
                                </div>
                                <select class="form-control" id="diagpac2" name="diagpac2">
                                    <option value="0" id="diagpac2_1">Seleccione Diagnostico 2 (Opcional)</option>
                                </select>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="card card-olive d-none" id="bloqueComFam">
            <div class="card-header">
                <h5 class="card-title m-0 font-weight-bold">3. Comunicación con familiar </h5>&nbsp;&nbsp;<i class="fas fa-hands-helping"></i>
            </div>
            <div class="card-body">
                <div class="row mb-4">
                    <div class="col-12 col-sm-12 col-md-12 col-lg-4 col-xl-4">
                        <label for="comFam">¿Se realiza comunicación con familiar?</label>
                    </div>
                    <div class="col-12 col-sm-12 col-md-12 col-lg-4 col-xl-4">
                        <div class="input-group clearfix">
                            <div class="icheck-dark d-inline">
                                <input type="radio" id="comSi" name="comunicaFamilia" value="SI">
                                <label for="comSi">
                                    SI
                                </label>
                            </div>
                            <div class="icheck-dark d-inline">
                                &nbsp;
                                <input type="radio" id="comNo" name="comunicaFamilia" value="NO" checked>
                                <label for="comNo">
                                    NO
                                </label>
                            </div>
                        </div>
                        <input type="hidden" name="comFami" id="comFami" value="NO">
                    </div>
                </div>
                <div class="row block1">
                    <div class="col-12 col-sm-12 col-md-12 col-lg-3 col-xl-3">
                        <div class="form-group">
                            <label for="ndocfam">Número de Documento:<span class="text-danger">&nbsp;*</span></label>
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fas fa-hashtag"></i></span>
                                </div>
                                <input type="text" class="form-control" placeholder="Ingrese N° de documento" autocomplete="off" name="ndocfam" id="ndocfam">
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-sm-12 col-md-12 col-lg-6 col-xl-6">
                        <div class="form-group">
                            <label for="nombApFam">Nombres y Apellidos:<span class="text-danger">&nbsp;*</span></label>
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fas fa-signature"></i></span>
                                </div>
                                <input type="text" class="form-control" placeholder="Ingrese nombres y apellidos del familiar" autocomplete="off" id="nombApFam" name="nombApFam">
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-sm-12 col-md-12 col-lg-3 col-xl-3">
                        <div class="form-group">
                            <label for="parentFam">Parentesco:<span class="text-danger">&nbsp;*</span></label>
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fas fa-users"></i></span>
                                </div>
                                <select class="form-control" name="parentFam" id="parentFam">
                                    <option value="0">Seleccione parentesco</option>
                                    <?php
                                    $tipparent = ControladorSeguimiento::ctrListarParentesco();
                                    foreach ($tipparent as $key => $value) {
                                        echo '<option value="' . $value["idParentesco"] . '">' . $value["descParent"] . '</option>';
                                    }
                                    ?>
                                </select>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row block2">
                    <div class="col-12 col-sm-12 col-md-12 col-lg-3 col-xl-3">
                        <div class="form-group">
                            <label for="sexFam">Sexo:<span class="text-danger">&nbsp;*</span></label>
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fas fa-venus-mars"></i></span>
                                </div>
                                <select class="form-control" name="sexFam" id="sexFam">
                                    <option value="0">Seleccione sexo</option>
                                    <?php
                                    $tipSex2 = ControladorSeguimiento::ctrListarTipoSexo();
                                    foreach ($tipSex2 as $key => $value) {
                                        echo '<option value="' . $value["idTipSexo"] . '">' . $value["desctipSexo"] . '</option>';
                                    }
                                    ?>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-sm-12 col-md-12 col-lg-4 col-xl-4">
                        <div class="form-group">
                            <label for="edadFam">Edad:<span class="text-danger">&nbsp;*</span></label>
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fas fa-id-card-alt"></i></span>
                                </div>
                                <input type="text" class="form-control" placeholder="Ingrese edad de familiar" autocomplete="off" name="edadFam" id="edadFam">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row block3">
                    <div class="col-12 col-sm-12 col-md-12 col-lg-6 col-xl-6">
                        <div class="form-group">
                            <label for="diag1Fam">Diagnóstico 1:<span class="text-danger">&nbsp;*</span></label>
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fas fa-map-marked-alt"></i></span>
                                </div>
                                <select class="form-control" id="diag1Fam" name="diag1Fam">
                                    <option value="0">Seleccione Diagnostico 1</option>
                                    <?php
                                    $diagPaci3 = ControladorSeguimiento::ctrListarDiagnosticos();
                                    foreach ($diagPaci3 as $key => $value) {
                                        echo '<option value="' . $value["idDiagnostico"] . '">' . $value["descripcion"] . '</option>';
                                    }
                                    ?>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-sm-12 col-md-12 col-lg-6 col-xl-6">
                        <div class="form-group">
                            <label for="diag2Fam">Diagnóstico 2 (OPCIONAL)</label>
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fas fa-map-marked-alt"></i></span>
                                </div>
                                <select class="form-control" id="diag2Fam" name="diag2Fam">
                                    <option value="0" id="diagfam2_1">Seleccione Diagnostico 2 (Opcional)</option>
                                </select>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <center>
            <button type="btn" class="btn btn-success btn-lg mb-3 btnRegistraSeg" id="btnRegistraSeg">REGISTRAR</button>
        </center>
    </form>
</div>