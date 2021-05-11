<div class="container">
    <form action="" method="post" id="">
        <div class="card card-info">
            <div class="card-header">
                <h5 class="card-title m-0 font-weight-bold">1. Tipo de Seguimiento y Personal de Salud. </h5>&nbsp;&nbsp;<i class="fas fa-users"></i>
            </div>
            <div class="card-body">
                <div class="row mx-4">
                    <div class="col-12 col-md-2 col-lg-2">
                        <label for="">Tipo de Seguimiento:</label>
                    </div>
                    <div class="col-12 col-md-3 col-lg-3">
                        <div class="input-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text"><i class="fas fa-user"></i></span>
                            </div>
                            <select class="form-control" name="" id="">
                                <option value="0">Seleccione tipo</option>
                                <option value="1">ALTAS</option>
                                <option value="2">FALLECIDOS</option>
                                <option value="3">HOSPITALIZACION</option>
                                <option value="3">PERSONAL DE SALUD</option>

                            </select>
                            <input type="hidden" name="" id="" value="">
                        </div>
                    </div>
                    <div class="col-12 col-md-3 col-lg-3">
                        <label for="">Profesional que atiende:</label>
                    </div>
                    <div class="col-12 col-md-4 col-lg-4">
                        <div class="input-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text"><i class="fas fa-laptop-medical"></i></span>
                            </div>
                            <select class="form-control" name="" id="">
                                <option value="0">Seleccione profesional</option>
                                <option value="1">JUAN PEREZ</option>
                                <option value="2">PEPITO SIPAN</option>
                            </select>
                            <input type="hidden" name="" id="" value="">
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="card card-info">
            <div class="card-header">
                <h5 class="card-title m-0 font-weight-bold">2. Datos del paciente en seguimiento </h5>&nbsp;&nbsp;<i class="fas fa-users"></i>
            </div>
            <div class="card-body">
                <div class="row">
                    <div class="col-12 col-sm-12 col-md-12 col-lg-3 col-xl-3">
                        <div class="form-group">
                            <label>Número de Documento:<span class="text-danger">&nbsp;*</span></label>
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fas fa-hashtag"></i></span>
                                </div>
                                <input type="text" class="form-control" placeholder="Ingrese N° de documento" autocomplete="off" name="" id="">
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-sm-12 col-md-12 col-lg-3 col-xl-3">
                        <div class="form-group">
                            <label>Número de Historia Clínica:<span class="text-danger">&nbsp;*</span></label>
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fas fa-hashtag"></i></span>
                                </div>
                                <input type="text" class="form-control" placeholder="Ingrese N° de HC" autocomplete="off" name="" id="">
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-sm-12 col-md-12 col-lg-6 col-xl-6">
                        <div class="form-group">
                            <label>Nombres y Apellidos:<span class="text-danger">&nbsp;*</span></label>
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fas fa-signature"></i></span>
                                </div>
                                <input type="text" class="form-control" placeholder="Ingrese nombres y apellidos del paciente" autocomplete="off" id="" name="">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-12 col-sm-12 col-md-12 col-lg-3 col-xl-3">
                        <div class="form-group">
                            <label>Sexo:<span class="text-danger">&nbsp;*</span></label>
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fas fa-venus-mars"></i></span>
                                </div>
                                <select class="form-control" name="" id="">
                                    <option value="0">Seleccione sexo</option>
                                    <option value="1">Masculino</option>
                                    <option value="2">Femenino</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-sm-12 col-md-12 col-lg-4 col-xl-4">
                        <div class="form-group">
                            <label>Edad:<span class="text-danger">&nbsp;*</span></label>
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fas fa-id-card-alt"></i></span>
                                </div>
                                <input type="text" class="form-control" placeholder="Ingrese edad" autocomplete="off" name="" id="">
                            </div>
                        </div>
                    </div>

                </div>
                <div class="row">
                    <div class="col-12 col-sm-12 col-md-12 col-lg-6 col-xl-6">
                        <div class="form-group">
                            <label>Diagnóstico 1:<span class="text-danger">&nbsp;*</span></label>
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fas fa-map-marked-alt"></i></span>
                                </div>
                                <select class="form-control" id="" name="">
                                    <option value="0">Seleccione Diagnostico</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-sm-12 col-md-12 col-lg-6 col-xl-6">
                        <div class="form-group">
                            <label>Diagnóstico 2 (OPCIONAL)</label>
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fas fa-map-marked-alt"></i></span>
                                </div>
                                <select class="form-control" id="" name="">
                                    <option value="0">Seleccione Diagnostico</option>
                                </select>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="card card-info">
            <div class="card-header">
                <h5 class="card-title m-0 font-weight-bold">3. Comunicación con familiar </h5>&nbsp;&nbsp;<i class="fas fa-hands-helping"></i>
            </div>
            <div class="card-body">
                <div class="row mb-4">
                    <div class="col-12 col-sm-12 col-md-12 col-lg-4 col-xl-4">
                        <label>¿Se realiza comunicación con familiar?</label>
                    </div>
                    <div class="col-12 col-sm-12 col-md-12 col-lg-4 col-xl-4">
                        <div class="input-group">
                            <div class="icheck-dark d-inline">
                                <input type="radio" id="radiorep1" name="repCon">
                                <label for="radiorep1"> SI
                                </label>&nbsp;&nbsp;
                            </div>
                            <div class="icheck-dark d-inline">
                                <input type="radio" id="radiorep2" name="repCon">
                                <label for="radiorep2"> NO
                                </label>
                            </div>
                            <input type="hidden" name="representante" id="representante">
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-12 col-sm-12 col-md-12 col-lg-3 col-xl-3">
                        <div class="form-group">
                            <label>Número de Documento:<span class="text-danger">&nbsp;*</span></label>
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fas fa-hashtag"></i></span>
                                </div>
                                <input type="text" class="form-control" placeholder="Ingrese N° de documento" autocomplete="off" name="nDocUsuario" id="nDocUsuario">
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-sm-12 col-md-12 col-lg-6 col-xl-6">
                        <div class="form-group">
                            <label>Nombres y Apellidos:<span class="text-danger">&nbsp;*</span></label>
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fas fa-signature"></i></span>
                                </div>
                                <input type="text" class="form-control" placeholder="Ingrese nombres y apellidos del paciente" autocomplete="off" id="nomUsuario" name="nomUsuario">
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-sm-12 col-md-12 col-lg-3 col-xl-3">
                        <div class="form-group">
                            <label>Parentesco:<span class="text-danger">&nbsp;*</span></label>
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fas fa-users"></i></span>
                                </div>
                                <input type="text" class="form-control" placeholder="Ingrese parentesco" autocomplete="off" name="nDocUsuario" id="nDocUsuario">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-12 col-sm-12 col-md-12 col-lg-3 col-xl-3">
                        <div class="form-group">
                            <label>Sexo:<span class="text-danger">&nbsp;*</span></label>
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fas fa-venus-mars"></i></span>
                                </div>
                                <select class="form-control" name="sexUsuario" id="sexUsuario">
                                    <option value="0">Seleccione sexo</option>
                                    <option value="1">Masculino</option>
                                    <option value="2">Femenino</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-sm-12 col-md-12 col-lg-4 col-xl-4">
                        <div class="form-group">
                            <label>Edad:<span class="text-danger">&nbsp;*</span></label>
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fas fa-id-card-alt"></i></span>
                                </div>
                                <input type="text" class="form-control" placeholder="Ingrese edad" autocomplete="off" name="telefUsuario" id="telefUsuario">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-12 col-sm-12 col-md-12 col-lg-6 col-xl-6">
                        <div class="form-group">
                            <label>Diagnóstico 1:<span class="text-danger">&nbsp;*</span></label>
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fas fa-map-marked-alt"></i></span>
                                </div>
                                <select class="form-control" id="" name="">
                                    <option value="0">Seleccione Diagnostico</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-sm-12 col-md-12 col-lg-6 col-xl-6">
                        <div class="form-group">
                            <label>Diagnóstico 2 (OPCIONAL)</label>
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fas fa-map-marked-alt"></i></span>
                                </div>
                                <select class="form-control" id="" name="">
                                    <option value="0">Seleccione Diagnostico</option>
                                </select>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <center>
            <button type="btn" class="btn btn-primary btn-lg mb-3" id="btnEnviar">REGISTRAR</button>
        </center>
    </form>
</div>