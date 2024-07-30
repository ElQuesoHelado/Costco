
<%@page pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Payment Methods</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
    
    <link href="../styles/costco-icons.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link href="../styles/default.css" rel="stylesheet">
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

        #main-content .form-container {
            background-color: #fff;
            border: 1px solid #dee2e6;
            border-radius: 5px;
            padding: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        #main-content .form-container h2 {
            margin-bottom: 15px;
            font-size: 24px;
        }

        #main-content .form-container p {
            margin-bottom: 20px;
            font-size: 16px;
        }

        #main-content .form-container label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }

        #main-content .form-container input {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ced4da;
            border-radius: 5px;
        }

        #main-content .form-container .card-logos {
            display: flex;
            align-items: center;
        }

        #main-content .form-container .card-logos img {
            margin-left: 10px;
        }

        #main-content .form-container button {
            background-color: #007bff;
            color: #fff;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
        }

        #main-content .form-container button:hover {
            background-color: #0056b3;
        }

        #main-content .form-container .auto-renew a {
            color: #007bff;
            text-decoration: none;
        }

        #main-content .form-container .auto-renew a:hover {
            text-decoration: underline;
        }
    </style>
</head>

<body class="default-theme">
  <jsp:include page="../header.jsp"/>

  <div class="container-xxl my-3">
    <!-- URL -->
    <ul id="url" class="d-flex text-gray fs-7">
      <li><a class="url-link" href="/">Inicio</a></li>
      <li><a class="url-link" href="/">Cuenta</a></li>
      <li>Métodos de Pago</li>
    </ul>
  </div>

    <div id="main-content" class="container-fluid p-0 m-0">
        <div class="row m-0 p-0">
            <nav class="col-md-3 col-lg-2 d-md-block sidebar">
                <h2>Bienvenido!</h2>
                <ul class="nav flex-column">
                    <li class="nav-item"><a class="nav-link" href="/micuenta"><i class="fas fa-home"></i> Account
                        Home</a></li>
                    <li class="nav-item"><a class="nav-link" href="/ordenes"><i class="fas fa-box"></i> Orders
                        & Purchases</a></li>
                    <li class="nav-item"><a class="nav-link" href="/detalles_cuenta"><i class="fas fa-user"></i>
                        Detalles de Cuenta</a></li>
                    <li class="nav-item"><a class="nav-link" href="/address"><i class="fas fa-book"></i>
                        Direcciones</a></li>
                    <li class="nav-item"><a class="nav-link active" href="/pay_methods"><i class="fas fa-credit-card"></i>
                        Formas de Pago</a></li>
                    <li class="nav-item"><a class="nav-link" href="../costco_pay.jsp"><i class="fas fa-wallet"></i>
                        Costco
                        Pay</a></li>
                    <li class="nav-item"><a class="nav-link" href="/list"><i class="fas fa-list"></i> Lista</a></li>
                    <li class="nav-item"><a class="nav-link" href="/preference"><i class="fas fa-cog"></i>
                        Preferencias</a></li>
                    <li class="nav-item"><a class="nav-link" href="/" onClick="clearCookies()"><i class="fas fa-sign-out-alt"></i> Cerrar Sesión</a>
                    </li>
                </ul>
            </nav>

            <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4 main-content">
                <h1 class="mb-4">Métodos de Pago</h1>

                <div class="form-container">
                    <h2>Payment Methods</h2>
                    <p>Only one online payment method may be stored at a time. Any changes to the payment method will replace the default payment method for all future orders, refills and family accounts linked.</p>
                    <form>
                        <label for="cardNumber">Card Number</label>
                        <div class="card-logos">
                            <input type="text" id="cardNumber" name="cardNumber" value="${metodo_pago}">
                            <img src="https://www.costco.com/wcsstore/CostcoGLOBALSAS/images/payment-visa.png" alt="Visa" height="20">
                            <img src="https://www.costco.com/wcsstore/CostcoGLOBALSAS/images/payment-mc.png" alt="MasterCard" height="20">
                        </div>
                        
                        <label for="expirationDate">Expiration Date</label>
                        <input type="text" id="expirationDate" name="expirationDate" placeholder="MM/YY">
                        
                        <label for="cardholderName">Cardholder Name</label>
                        <input type="text" id="cardholderName" name="cardholderName">
                        
                        <button type="submit">Add Card</button>
                    </form>
                    <div class="auto-renew">
                        <a href="#">Set up Membership Auto Renew</a>
                    </div>
                </div>
            </main>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
  <script>
      function clearCookies(){
          document.cookie = 'usuario=; Path=/; Expires=Thu, 01 Jan 1970 00:00:01 GMT;';
      }
  </script>
    <jsp:include page="../footer.jsp"/>
</body>

</html>
