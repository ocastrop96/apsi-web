// $('#tipSeg').select2();
window.addEventListener('load', () => {
    const contenedor_loader = document.querySelector('.contenedor_loader')
    contenedor_loader.style.opacity = 0
    contenedor_loader.style.visibility = 'hidden'
});
// CAMPOS INICIALES
$("#ndocpac").keyup(function () {
    this.value = (this.value + "").replace(/[^0-9]/g, "");
});
$("#nhispac").keyup(function () {
    this.value = (this.value + "").replace(/[^0-9]/g, "");
});
$("#nombApPac").keyup(function () {
    this.value = (this.value + "").replace(/[^a-zA-ZñÑáéíóúÁÉÍÓÚÜü ]/g, "");
});
$("#edadPac").keyup(function () {
    this.value = (this.value + "").replace(/[^a-zA-Z0-9ñÑáéíóúÁÉÍÓÚÜü ]/g, "");
});
$("#edadFam").keyup(function () {
    this.value = (this.value + "").replace(/[^a-zA-Z0-9ñÑáéíóúÁÉÍÓÚÜü ]/g, "");
});
$("#ndocfam").keyup(function () {
    this.value = (this.value + "").replace(/[^0-9]/g, "");
});
$("#nombApFam").keyup(function () {
    this.value = (this.value + "").replace(/[^a-zA-ZñÑáéíóúÁÉÍÓÚÜü ]/g, "");
});
$("#edadPac").keyup(function () {
    var st21 = $(this).val();
    var mayust21 = st21.toUpperCase();
    $("#edadPac").val(mayust21);
});
$("#edadFam").keyup(function () {
    var st21 = $(this).val();
    var mayust21 = st21.toUpperCase();
    $("#edadFam").val(mayust21);
});
$("#nombApPac").change(function () {
    var name1 = $("#nombApPac").val();
    var rechange1 = name1
        .toLowerCase()
        .trim()
        .split(" ")
        .map((v) => v[0].toUpperCase() + v.substr(1))
        .join(" ");
    $("#nombApPac").val(rechange1);
});
$("#nombApFam").change(function () {
    var name1 = $("#nombApFam").val();
    var rechange1 = name1
        .toLowerCase()
        .trim()
        .split(" ")
        .map((v) => v[0].toUpperCase() + v.substr(1))
        .join(" ");
    $("#nombApFam").val(rechange1);
});
// CAMPOS INICIALES
$("#radioCom2").prop("checked", true);
$("#comFami").val("NO");
// Selecciona tipo seguimiento
$("#tipSeg").on("change", function () {
    let comboTipSeg = $(this).val();
    if (comboTipSeg > 0) {
        if (comboTipSeg == 1 || comboTipSeg == 2) {
            $("#bloqueComFam").removeClass("d-none");
            $("#radioCom1").prop("checked", true);
            $("#comFami").val("SI");
        }
        else {
            $("#bloqueComFam").addClass("d-none");
            $("#radioCom2").prop("checked", true);
            $("#comFami").val("NO");
        }
    }
    else {
        $("#radioCom2").prop("checked", true);
        $("#comFami").val("NO");
        $("#bloqueComFam").addClass("d-none");
    }
});
// Selecciona tipo seguimiento
// Validacion de seleccion de diagnostico
$("#diagpac1").on("change", function () {
    var existe = $(this).val();
    $("#diagpac2")[0].selectedIndex = 0;
    if (existe > 0) {
        $.ajax({
            type: "POST",
            url: "lib/comboDiagnosticos.php",
            data: "existe=" + existe,
            success: function (html) {
                $("#diagpac2").html(html);
            },
        });
    }
});

$("#diag1Fam").on("change", function () {
    var existe = $(this).val();
    $("#diag2Fam")[0].selectedIndex = 0;
    if (existe > 0) {
        $.ajax({
            type: "POST",
            url: "lib/comboDiagnosticos.php",
            data: "existe=" + existe,
            success: function (html) {
                $("#diag2Fam").html(html);
            },
        });
    }
});
// Validacion de seleccion de diagnostico
// Validacion de campos de formulario
$.validator.addMethod(
    "valueNotEquals",
    function (value, element, arg) {
        return arg !== value;
    },
    "Value must not equal arg."
);

$("#btnRegistraSeg").on("click", function () {
    var TipSeg = $("#tipSeg").val();

    if (TipSeg == 1 || TipSeg == 2) {
        $("#formSeguimiento").validate({
            rules: {
                profPsi: {
                    valueNotEquals: "0",
                },
                ndocpac: {
                    required: true,
                },
                nhispac : {
                    required: true,
                },
                nombApPac  : {
                    required: true,
                },
                sexPac: {
                    valueNotEquals: "0",
                },
                edadPac  : {
                    required: true,
                },
                diagpac1: {
                    valueNotEquals: "0",
                },
            },
            messages: {
                profPsi: {
                    valueNotEquals: "Seleccione Profesional Psicologo",
                },
                ndocpac: {
                    required: "Ingresa N° Documento del Paciente",
                },
                nhispac : {
                    required: "Ingresa N° Historia del Paciente",
                },
                nombApPac  : {
                    required: "Ingresa Nombres y Apellidos de Paciente",
                },
                sexPac: {
                    valueNotEquals: "Seleccione Sexo del Paciente",
                },
                edadPac  : {
                    required: "Ingresa Nombres y Apellidos de Paciente",
                },
                diagpac1: {
                    valueNotEquals: "Seleccione al menos un diagnóstico",
                },
            },
            errorElement: "span",
            errorPlacement: function (error, element) {
                error.addClass("invalid-feedback");
                element.closest(".form-group").append(error);
            },
            highlight: function (element, errorClass, validClass) {
                $(element).addClass("is-invalid");
            },
            unhighlight: function (element, errorClass, validClass) {
                $(element).removeClass("is-invalid");
            },
        });
    }
    else if(TipSeg == 3 || TipSeg == 4){

    }
    else{
        $("#formSeguimiento").validate({
            rules: {
                tipSeg: {
                    valueNotEquals: "0",
                },
                profPsi: {
                    valueNotEquals: "0",
                },
                ndocpac: {
                    required: true,
                },
                
            },
            messages: {
                tipSeg: {
                    valueNotEquals: "Seleccione Tipo de Seguimiento",
                },
                profPsi: {
                    valueNotEquals: "Seleccione Profesional Psicologo",
                },
                ndocpac: {
                    required: "Ingresa tu N° Documento Paciente",
                },
            },
            errorElement: "span",
            errorPlacement: function (error, element) {
                error.addClass("invalid-feedback");
                element.closest(".form-group").append(error);
            },
            highlight: function (element, errorClass, validClass) {
                $(element).addClass("is-invalid");
            },
            unhighlight: function (element, errorClass, validClass) {
                $(element).removeClass("is-invalid");
            },
        });
    }
});

// Validacion de campos de formulario
