<?php

require("../conexion/conexion.php");

$accion =$_REQUEST["accion"];

switch ($accion) {
    case 'guardar':
        $nombre=$_POST["nombre"];
        $apellido=$_POST["apellido"];
        $dni=$_POST["dni"];
        $correo=$_POST["correo"];
        $pasword=$_POST["contra"];
        
        $insertar="INSERT INTO administrador( dni_admin, nombre, apellido, correo) 
         VALUES ('$dni','$nombre','$apellido','$correo')";

        $resultado=mysqli_query($cbd, $insertar);

        if($resultado){
        echo "<script>alert('Datos guardados correctamente');
        window.location='../php/administrador.php'</script>";
        }else{
        echo "<script>alert('Datos No se Guardaron Intente Nuevamente');
        window.location='../php/administrador.php'</script>";
        }
        break;
    
    default:
        # code...
        break;
}




?>