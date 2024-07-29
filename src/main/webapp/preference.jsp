<%@page pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Preferences</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">

    <link href="styles/costco-icons.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link href="styles/default.css" rel="stylesheet">
    <style>
        #main-content body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
        }

        #main-content .header-placeholder {
            height: 60px; /* Adjust this value as needed */
            background-color: #f1f1f1; /* Temporary background color */
        }

        #main-content .sidebar {
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            height: calc(100vh - 60px); /* Subtract header height */
            padding-top: 20px;
            border-right: 1px solid #dee2e6; /* Added border */
        }

        #main-content .sidebar h2 {
            text-align: center;
            margin-bottom: 20px;
            color: #333;
        }

        #main-content .sidebar .nav-link {
            color: #333;
            padding: 10px 20px;
            border-left: 3px solid transparent; /* Indicator for active link */
        }

        #main-content .sidebar .nav-link:hover {
            background-color: #e9ecef;
        }

        #main-content .sidebar .nav-link.active {
            background-color: #f8f9fa;
            border-left-color: #007bff; /* Active indicator color */
        }

        #main-content .sidebar .nav-link i {
            margin-right: 10px;
        }

        #main-content .main-content {
            padding: 20px 40px;
        }

        #main-content .section {
            background-color: #fff;
            border: 1px solid #dee2e6;
            border-radius: 5px;
            padding: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        #main-content .checkbox-group {
            margin-bottom: 15px;
        }

        #main-content .checkbox-group label {
            margin-left: 10px;
        }

        #main-content .btn {
            background-color: #007bff;
            color: #fff;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
        }

        #main-content .btn:hover {
            background-color: #0056b3;
        }

        #main-content .info {
            margin-top: 20px;
        }

        #main-content .info p {
            margin-bottom: 10px;
        }

        #main-content .info a {
            color: #007bff;
            text-decoration: none;
        }

        #main-content .info a:hover {
            text-decoration: underline;
        }
    </style>
</head>

<body class="default-theme">
  <jsp:include page="header.jsp"/>

    <div class="container-xxl my-3">
        <!-- URL -->
        <ul id="url" class="d-flex text-gray fs-7">
          <li><a class="url-link" href="/">Inicio</a></li>
          <li><a class="url-link" href="micuenta.jsp">Cuenta</a></li>
          <li>Preferencias</li>
        </ul>
        <div id="main-content" class="container-fluid m-0 p-0">
            <div class="row m-0 p-0">
                <nav class="col-md-3 col-lg-2 d-md-block sidebar">
                    <h2>Bienvenido!</h2>
                    <ul class="nav flex-column">
                        <li class="nav-item"><a class="nav-link" href="micuenta.jsp"><i class="fas fa-home"></i> Account Home</a></li>
                        <li class="nav-item"><a class="nav-link" href="ordens.jsp"><i class="fas fa-box"></i> Orders & Purchases</a></li>
                        <li class="nav-item"><a class="nav-link" href="datelles_cuenta.jsp"><i class="fas fa-user"></i> Detalles de Cuenta</a></li>
                        <li class="nav-item"><a class="nav-link" href="adress.jsp"><i class="fas fa-book"></i> Direcciones</a></li>
                        <li class="nav-item"><a class="nav-link" href="pay_methods.jsp"><i class="fas fa-credit-card"></i> Formas de Pago</a></li>
                        <li class="nav-item"><a class="nav-link" href="costco_pay.jsp"><i class="fas fa-wallet"></i> Costco Pay</a></li>
                        <li class="nav-item"><a class="nav-link" href="list.jsp"><i class="fas fa-list"></i> Lista</a></li>
                        <li class="nav-item"><a class="nav-link active" href="preference.jsp"><i class="fas fa-cog"></i> Preferencias</a></li>
                        <li class="nav-item"><a class="nav-link" href="/"><i class="fas fa-sign-out-alt"></i> Cerrar Sesión</a></li>
                    </ul>
                </nav>
    
                <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4 main-content">
                    <div class="section">
                        <h2>Preferencias</h2>
                        <div class="checkbox-group">
                            <input type="checkbox" id="promotion" checked>
                            <label for="promotion">Quiero recibir promociones exclusivas y beneficios para miembros de Costco por correo electrónico.</label>
                        </div>
                        <div class="checkbox-group">
                            <input type="checkbox" id="recommendations">
                            <label for="recommendations">Quiero ver recomendaciones de productos de Costco.com.</label>
                        </div>
                        <button class="btn">Guardar Preferencias</button>
                    </div>
                    <div class="info">
                        <p>Preferencias adicionales están disponibles para miembros verificados. Por favor, <a href="#">verifica tu membresía en línea</a> o visita el mostrador de membresías en tu <a href="#">almacén local de Costco</a> para seleccionar tus preferencias.</p>
                        <p><a href="#">Tus derechos de privacidad</a></p>
                        <p><a href="#">Tus opciones de privacidad</a></p>
                    </div>
                </main>
            </div>
        </div>
      </div>
    

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
  <jsp:include page="footer.jsp"/>
</body>

</html>
