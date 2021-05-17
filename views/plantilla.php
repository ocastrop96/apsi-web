<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <link rel="shortcut icon" type="image/x-icon" href="views/icons/sti-icon.ico" />
  <title>Acompañamiento Psicologico:.. HNSEB</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!--==============================================
  PLUGINS DE CSS
  ===============================================-->
  <link rel="stylesheet" href="views/plugins/fontawesome-free/css/all.min.css">
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <link rel="stylesheet" href="views/dist/css/adminlte.css">
  <link rel="stylesheet" href="views/dist/css/loader.css">
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
  <link rel="stylesheet" href="views/plugins/datatables-bs4/css/dataTables.bootstrap4.css">
  <link rel="stylesheet" href="views/plugins/datatables-responsive/css/responsive.bootstrap4.min.css">
  <link rel="stylesheet" href="views/plugins/datatables-bs4/css/dataTables.bootstrap4.css">
  <link rel="stylesheet" href="views/dist/css/own.css">
  <!-- iCheck for checkboxes and radio inputs -->
  <link rel="stylesheet" href="views/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <link rel="stylesheet" href="views/plugins/sweetalert2-theme-bootstrap-4/bootstrap-4.min.css">
  <link rel="stylesheet" href="views/plugins//daterangepicker/daterangepicker.css">
  <!-- <link rel="stylesheet" href="views/plugins/bootstrap-datepicker/bootstrap-datepicker.css">
  <link rel="stylesheet" href="views/plugins/bootstrap-datepicker/bootstrap-datepicker.min.css.map"> -->
  <link rel="stylesheet" href="views/plugins/toastr/toastr.min.css">
  <!-- Select2 -->
  <link rel="stylesheet" href="views/plugins/select2/css/select2.min.css">
  <link rel="stylesheet" href="views/plugins/select2-bootstrap4-theme/select2-bootstrap4.min.css">
  <!-- overlayScrollbars -->
  <link rel="stylesheet" href="views/plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
  <!--==============================================
  PLUGINS DE JS
  ===============================================-->
  <script src="views/plugins/jquery/jquery.min.js"></script>
  <script src="views/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="views/plugins/datatables/jquery.dataTables.js"></script>
  <script src="views/plugins/datatables-bs4/js/dataTables.bootstrap4.js"></script>
  <script src="views/plugins/datatables-responsive/js/dataTables.responsive.min.js"></script>
  <script src="views/plugins/datatables-responsive/js/responsive.bootstrap4.min.js"></script>
  <script src="views/plugins/sweetalert2/sweetalert2.min.js"></script>
  <!-- <script src="views/plugins/bootstrap-datepicker/bootstrap-datepicker.js"></script>
  <script src="views/plugins/bootstrap-datepicker/bootstrap-datepicker.es.min.js"></script> -->

  <script src="views/plugins/toastr/toastr.min.js"></script>
  <script src="views/dist/js/adminlte.min.js"></script>
  <script src="views/plugins/select2/js/select2.full.min.js"></script>
  <!-- overlayScrollbars -->
  <script src="views/plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
  <!-- jquery-validation -->
  <script src="views/plugins/jquery-validation/jquery.validate.min.js"></script>
  <script src="views/plugins/jquery-validation/additional-methods.min.js"></script>
  <!-- InputMask -->
  <script src="views/plugins/moment/moment.min.js"></script>
  <script src="views/plugins/inputmask/jquery.inputmask.min.js"></script>
  <script src="views/plugins/daterangepicker/daterangepicker.js"></script>
</head>

<body class="hold-transition">
  <div class="contenedor_loader">
    <div class="loader">
    </div>
  </div>
  <?php
  echo '<div class="wrapper">';
  include "pages/cabecera.php";

  if (isset($_GET["ruta"])) {

    if (
      $_GET["ruta"] == "registro-acompanamiento" ||
      $_GET["ruta"] == "reportes" ||
      $_GET["ruta"] == "index"
    ) {
      include "pages/" . $_GET["ruta"] . ".php";
    } else {
      include "pages/404.php";
    }
  } else {
    include "pages/index.php";
  }
  include "pages/pie.php";
  echo '</div>';
  ?>
  <script type="text/javascript" src="views/dist/js/registro.js"></script>
</body>

</html>