<?php





if(isset($_POST['action']) && !empty($_POST['action'])) {
    $action = $_POST['action'];
    $params = $_POST['params'];
    switch($action) {
        case 'obtenerCasas' : test();break;
        case 'jalarDatos' : echo jalarDatos($params);break;
    }
}

function jalarDatos($idCasa)
{
    include 'db.php';
    $info='';
    $conn = new mysqli($servername, $username, $password, $dbname);
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }
    $sql = "SELECT * FROM casas WHERE id ='".$idCasa."'";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        // output data of each row
        while($row = $result->fetch_assoc()) {
        $info = 'Imagen de la fachada: <img class="materialboxed modal-trigger" width="100px" height="100px" data-target="modalpic" src="'.$row["urlImagen"].'" >';
        }
    } else {
        echo "0 results";
    }
    $conn->close();
    return $info;
}

?>