$(document).ready(function () {
    // Envío de datos vía ajax
    $("#btnRegistraSeg").click(function (e) {
        e.preventDefault();
        var form1 = $("#formSeguimiento");
        validacion = form1.valid();
        if (validacion == true) {
            
        }
        else {
            Swal.fire({
                icon: "error",
                title:
                    "Error al registrar, ingrese correctamente los datos. Aségurese de completar todos los campos requeridos",
                showConfirmButton: false,
                timer: 1400,
            });
        }
    });
    // Envío de datos vía ajax

});