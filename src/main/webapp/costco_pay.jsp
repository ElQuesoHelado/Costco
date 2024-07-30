<%@page pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Costco Pay</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">

    <link href="styles/costco-icons.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link href="styles/default.css" rel="stylesheet">
    <style>
        #main-content {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
        }

        #main-content .header-placeholder {
            height: 60px;
            background-color: #f1f1f1;
        }

        #main-content .sidebar {
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            height: calc(100vh - 60px);
            padding-top: 20px;
            border-right: 1px solid #dee2e6;
        }

        #main-content .sidebar h2 {
            text-align: center;
            margin-bottom: 20px;
            color: #333;
        }

        #main-content .sidebar .nav-link {
            color: #333;
            padding: 10px 20px;
            border-left: 3px solid transparent;
        }

        #main-content .sidebar .nav-link:hover {
            background-color: #e9ecef;
        }

        #main-content .sidebar .nav-link.active {
            background-color: #f8f9fa;
            border-left-color: #007bff;
        }

        #main-content .sidebar .nav-link i {
            margin-right: 10px;
        }

        #main-content .main-content {
            padding: 20px 40px;
        }

        #main-content .content-container {
            background-color: #fff;
            border: 1px solid #dee2e6;
            border-radius: 5px;
            padding: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        #main-content .content-container h1 {
            margin-bottom: 15px;
            font-size: 24px;
        }

        #main-content .content-container p {
            margin-bottom: 20px;
            font-size: 16px;
        }

        #main-content .content-container ul {
            list-style-type: none;
            padding: 0;
        }

        #main-content .content-container ul li {
            margin-bottom: 10px;
        }

        #main-content .content-container ul li a {
            color: #007bff;
            text-decoration: none;
        }

        #main-content .content-container ul li a:hover {
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
        <li><a class="url-link" href="/micuenta">Cuenta</a></li>
        <li>Costco Play</li>
    </ul>
    <div id="main-content" class="container-fluid m-0 p-0">
        <div class="row m-0 p-0">
            <nav class="col-md-3 col-lg-2 d-md-block sidebar">
                <h2>Bienvenido!</h2>
                <ul class="nav flex-column">
                    <li class="nav-item"><a class="nav-link" href="/micuenta"><i class="fas fa-home"></i> Account Home</a></li>
                    <li class="nav-item"><a class="nav-link" href="/ordenes"><i class="fas fa-box"></i> Pedidos & Compras </a></li>
                    <li class="nav-item"><a class="nav-link" href="/detalles_cuenta"><i class="fas fa-user"></i> Detalles de Cuenta</a></li>
                    <li class="nav-item"><a class="nav-link" href="/address"><i class="fas fa-book"></i> Direcciones</a></li>
                    <li class="nav-item"><a class="nav-link" href="/pay_methods"><i class="fas fa-credit-card"></i> Formas de Pago</a></li>
                    <li class="nav-item"><a class="nav-link active" href="/costco_pay"><i class="fas fa-wallet"></i> Costco Pay</a></li>
                    <li class="nav-item"><a class="nav-link" href="/list"><i class="fas fa-list"></i> Lista</a></li>
                    <li class="nav-item"><a class="nav-link" href="/preference"><i class="fas fa-cog"></i> Preferencias</a></li>
                    <li class="nav-item"><a class="nav-link" href="/logout"><i class="fas fa-sign-out-alt"></i> Cerrar Sesión</a></li>
                </ul>
            </nav>

            <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4 main-content">
                <div class="content-container">
                    <h1>Costco Pay</h1>
                    <p><em>No hay llaveros nuevos disponibles para recoger o registrar.</em></p>
                    <ul>
                        <li><a href="/costco_pay" target="_blank">¿Qué es Costco Pay</a></li>
                        <li><a href="/costco_pay" target="_blank">¿Dónde puedo recoger y utilizar el Costco Pay Fob?</a></li>
                        <li><a href="faqs.html">Costco Pay FAQs</a></li>
                    </ul>
                </div>
            </main>
        </div>
    </div>
  </div>

    

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
    <jsp:include page="footer.jsp"/>
</body>

</html>
