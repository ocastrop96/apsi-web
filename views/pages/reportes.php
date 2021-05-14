<div class="container">
    <div class="card card-olive">
        <div class="card-header">
            <h5 class="card-title m-0 font-weight-bold">Cuadro General </h5>&nbsp;&nbsp;<i class="fas fa-chart-area"></i>
        </div>
        <div class="card-body">
            <div class="row">
                <!-- <div class="col-12 col-sm-12 col-md-12 col-lg-6 col-xl-6">
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
                </div> -->
            </div>
        </div>
    </div>
    <div class="card card-olive">
        <div class="card-header">
            <h5 class="card-title m-0 font-weight-bold">Atenciones por Profesional </h5>&nbsp;&nbsp;<i class="fas fa-briefcase-medical"></i>
        </div>
        <div class="card-body">
            <div class="row">
                <!-- <div class="col-12 col-sm-12 col-md-12 col-lg-6 col-xl-6">
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
                </div> -->
            </div>
        </div>
    </div>
    <div class="card card-olive">
        <div class="card-header">
            <h5 class="card-title m-0 font-weight-bold">Atenciones por Tipo de Seguimiento </h5>&nbsp;&nbsp;<i class="fas fa-briefcase-medical"></i>
        </div>
        <div class="card-body">
            <div class="row">
                <!-- <div class="col-12 col-sm-12 col-md-12 col-lg-6 col-xl-6">
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
                </div> -->
            </div>
        </div>
    </div>
    <div class="card card-olive">
        <div class="card-header">
            <h5 class="card-title m-0 font-weight-bold">Reportes Excel x Tipo de Seguimiento </h5>&nbsp;&nbsp;<i class="fas fa-briefcase-medical"></i>
        </div>
        <div class="card-body">
            <div class="row">
                <!-- <div class="col-12 col-sm-12 col-md-12 col-lg-6 col-xl-6">
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
                </div> -->
            </div>
        </div>
    </div>
</div>