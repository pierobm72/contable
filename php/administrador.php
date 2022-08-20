<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <!--  link de css  -->
    
    <link rel="stylesheet" href="../estilos/principa.css">
</head>
<body>
    <?php
    include("../plantilla/dasboar.html");
    ?>
    <div class="hola">
        <div id="con_admin">
            <form class="row g-3"  action="../php_sql/administrador.php" method="post">
                <h1>Administrador</h1>
                <div class="col-md-6">
                    <label for="inputAddress" class="form-label">Nombre</label>
                    <input type="text" class="form-control" name="nombre" id="inputAddress" placeholder="Ingrese Nombre">
                </div>
                <div class="col-md-6">
                    <label for="inputAddress" class="form-label">Apellido</label>
                    <input type="text" class="form-control" name="apellido" id="inputAddress" placeholder="Ingrese Apellido">
                </div>
                <div class="col-md-6">
                    <label for="inputEmail4" class="form-label">DNI</label>
                    <input type="text" class="form-control" name="dni" id="inputEmail4"  placeholder="Ingrese DNI">
                </div>
                <div class="col-6">
                    <label for="inputAddress2" class="form-label">Correo</label>
                    <input type="text" class="form-control" name="correo" id="inputAddress2" placeholder="Ingrese Correo">
                </div>
                <div class="col-md-6">
                    <label for="inputPassword4" class="form-label">Contraseña</label>
                    <input type="password" class="form-control" name="contra" id="inputPassword4" placeholder="Ingrese Contraseña">
                </div>
                <div class="col-12">
                    <input type="hidden" name="accion" value="guardar">
                    <button type="submit" class="btn btn-primary"> <i class="bi bi-person-plus"></i> Agregar</button>
                </div>
            </form>
        </div>
        <div>
            <h1>lista de Administrador</h1>
            <table class="table">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">First</th>
      <th scope="col">Last</th>
      <th scope="col">Handle</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">1</th>
      <td>Mark</td>
      <td>Otto</td>
      <td>@mdo</td>
    </tr>
    <tr>
      <th scope="row">2</th>
      <td>Jacob</td>
      <td>Thornton</td>
      <td>@fat</td>
    </tr>
    <tr>
      <th scope="row">3</th>
      <td colspan="2">Larry the Bird</td>
      <td>@twitter</td>
    </tr>
  </tbody>
</table>
        </div>
    </div>
  

    
</body>
</html>