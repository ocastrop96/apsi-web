<?php
require_once "../models/ConnectAlter.php";
if (isset($_POST["existe"]) && !empty($_POST["existe"])) {
    $qstmt = $db->query("CALL LISTAR_DIAGNOSTICO_NO_SELECCIONADO(" . $_POST["existe"] . ")");
    $rowCount = $qstmt->num_rows;
    if ($rowCount > 0) {
        echo '<option value="0">Seleccione Diagnostico 2 (Opcional)</option>';
        while ($row = $qstmt->fetch_assoc()) {
            echo '<option value="' . $row['idDiagnostico'] . '">' . $row['descripcion'] . '</option>';
        }
    } else {
        echo '<option value="0">No hay diagnósticos existentes</option>';
    }
}
