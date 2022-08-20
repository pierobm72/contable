<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../plantilla//line-awesome/css/line-awesome.min.css">
    <link rel="stylesheet" href="../estilos/dashboard_new.css">
    <link rel="stylesheet" href="../estilos/administrador.css">

    <title>Panel Admin</title>

<body>

    <div class="sidebar">
        <div class="sidebar-brand">
            <h2> <span class="lab la-accusoft"></span>Sistema contable</h2>
        </div>

        <div class="sidebar-menu">
            <ul>
                <li>
                    <a href="./administrador_new.php" class="active"><span class="las la-igloo"></span>Administrador<span></span></a>
                </li>

                <li>
                    <a href="./cliente.php"><span class="las la-users"></span>Cliente<span></span></a>
                </li>

                <li>
                    <a href="./ingresos.php"><span class="las la-wallet"></span>Ingresos<span></span></a>
                </li>

                <li>
                    <a href="./egresos.php"><span class="las la-money-check"></span>Egresos<span></span></a>
                </li>

                <li>
                    <a href="./caja.php"><span class="las la-copy"></span>Caja<span></span></a>
                </li>
            </ul>
        </div>
    </div>


    <div class="main-content">
        <?php include("../plantilla/header.html"); ?>

        <main>

            <form class="administrador" action="../php_sql/administrador.php" method="post">
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
                    <input type="text" class="form-control" name="dni" id="inputEmail4" placeholder="Ingrese DNI">
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


        </main>



    </div>

</body>

</html>