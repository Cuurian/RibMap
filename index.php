<?php
    include 'db.php';
    $css = array('ui/materialize.min.css');
    include 'navbar.php';
    include 'modal.php';
 ?>
  <script src="js/jquery-3.3.1.min.js"></script> 
  <script src="js/materialize.min.js"></script>
<head>
<link rel="stylesheet" type="text/css" href="ui\ribmap.css">
</head> 

<body>
<div class="mapArea"> 
<?php

function agregarMargen($originalY)
{
    return intval($originalY) + 30;
}

function obtenerIcono($idIcono) {
    $urlImagen="";
    switch ($idIcono) {
        case 0:
            $urlImagen="ui/icons/A.svg";
            break;
        case 1:
            $urlImagen="ui/icons/B.svg";
            break;
    } 
    return $urlImagen;
} 

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT * FROM casas";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
    echo '<div class="casa modal-trigger" data-target="modal1" id="'. $row["id"] .'" style="position: absolute !important; left: '.$row["posicionX"].' !important; top:'. $row["posicionY"] .' !important; transform: rotate(90deg); " >'.'<a href="#modal-one"><img id="myBtn" src="'.obtenerIcono($row["idIcono"]). '"  width="200" height="150"></a></div>';
    }
} else {
    echo "0 results";
}
$conn->close();
?>
</div>

<script>





$(".casa").on("click", function(e) {
    idcasa = $(this).attr("id");
    e.preventDefault();
    $.ajax({
    type: "POST",
    url: 'ribAPI.php',
    data: {action: 'jalarDatos',
            params: idcasa},
    success: function(data){
        window.location.href = "#modal1";
        $(".modal-content").html("<p>"+ data +"</p>");
    }
});
});








</script>


<script>
  $(document).ready(function(){
    $('.modal').modal();
  });

        


</script>

</body>

