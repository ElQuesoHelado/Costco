<%@ page import="org.json.JSONArray" %>
<%@ page import="org.json.JSONObject" %>
<%@page pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lists</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">

    <link href="../styles/costco-icons.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link href="../styles/default.css" rel="stylesheet">
    <style>
        #main-content {
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

        #main-content .form-group {
            margin-bottom: 15px;
        }

        #main-content .form-group label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }

        #main-content .form-group input {
            width: calc(100% - 110px);
            padding: 5px;
            margin-right: 10px;
            display: inline-block;
        }

        #main-content .form-group button {
            display: inline-block;
        }

        /* New styles for Lists section */
        #main-content .container {
            margin: 20px;
        }

        #main-content .box {
            background-color: #fff;
            border: 1px solid #dee2e6;
            border-radius: 5px;
            padding: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: center;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        #main-content .box:hover {
            background-color: #e9ecef;
        }

        #main-content .box span {
            display: block;
            font-size: 2em;
            margin-bottom: 10px;
            color: #007bff;
        }

        #main-content .box p {
            margin: 0;
            font-size: 1.2em;
            color: #333;
        }

        /* Modal styles */
        #main-content .modal {
            display: none;
            position: fixed;
            z-index: 1;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            overflow: auto;
            background-color: rgba(0, 0, 0, 0.4);
            padding-top: 60px;
        }

        #main-content .modal-content {
            background-color: #fff;
            margin: 5% auto;
            padding: 20px;
            border: 1px solid #dee2e6;
            border-radius: 5px;
            width: 80%;
            max-width: 500px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
        }

        #main-content .modal-header {
            padding: 10px;
            border-bottom: 1px solid #dee2e6;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        #main-content .modal-body {
            padding: 20px;
        }

        #main-content .modal-footer {
            padding: 10px;
            border-top: 1px solid #dee2e6;
            display: flex;
            justify-content: flex-end;
        }

        #main-content .modal-footer button {
            margin-left: 10px;
        }

        #main-content .modal-header h2 {
            margin: 0;
        }

        #main-content .close {
            color: #aaa;
            font-size: 1.5em;
            font-weight: bold;
            cursor: pointer;
        }

        .close:hover,
        .close:focus {
            color: #000;
            text-decoration: none;
        }

        .cancel-button {
            background-color: #6c757d;
            color: #fff;
        }

        .create-button {
            background-color: #007bff;
            color: #fff;
        }

        .cancel-button:hover {
            background-color: #5a6268;
        }

        .create-button:hover {
            background-color: #0056b3;
        }
    </style>
</head>

<body class="default-theme">
<jsp:include page="../header.jsp"/>


<div class="container-xxl my-3">
    <!-- URL -->
    <ul id="url" class="d-flex text-gray fs-7">
        <li><a class="url-link" href="/">Inicio</a></li>
        <li><a class="url-link" href="micuenta.jsp">Cuenta</a></li>
        <li>Listas</li>
    </ul>
    <div id="main-content" class="container-fluid m-0 p-0">
        <div class="row m-0 p-0">
            <nav class="col-md-3 col-lg-2 d-md-block sidebar">
                <h2>Bienvenido!</h2>
                <ul class="nav flex-column">
                    <li class="nav-item"><a class="nav-link" href="/micuenta"><i class="fas fa-home"></i> Account
                        Home</a></li>
                    <li class="nav-item"><a class="nav-link active" href="/ordenes"><i class="fas fa-box"></i> Orders
                        & Purchases</a></li>
                    <li class="nav-item"><a class="nav-link" href="/detalles_cuenta"><i class="fas fa-user"></i>
                        Detalles de Cuenta</a></li>
                    <li class="nav-item"><a class="nav-link" href="/address"><i class="fas fa-book"></i>
                        Direcciones</a></li>
                    <li class="nav-item"><a class="nav-link" href="/pay_methods"><i class="fas fa-credit-card"></i>
                        Formas de Pago</a></li>
                    <li class="nav-item"><a class="nav-link" href="../costco_pay.jsp"><i class="fas fa-wallet"></i>
                        Costco
                        Pay</a></li>
                    <li class="nav-item"><a class="nav-link" href="/list"><i class="fas fa-list"></i> Lista</a></li>
                    <li class="nav-item"><a class="nav-link" href="../preference.jsp"><i class="fas fa-cog"></i>
                        Preferencias</a></li>
                    <li class="nav-item"><a class="nav-link" href="/" onClick="clearCookies()"><i
                            class="fas fa-sign-out-alt"></i> Cerrar Sesión</a>
                    </li>
                </ul>
            </nav>

            <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4 main-content">
                <div class="container">
                    <h1>Lists</h1>
                    <%
                        JSONArray lista = (JSONArray) request.getAttribute("lista");

                        for (Object e : lista) {
                            JSONObject elemento = (JSONObject) e;
//                                    System.out.println(orden.get("numero_orden"));
                    %>


                    <div class="row box">
                        <div class="col-3">
                            <img src="img/productos/<%=elemento.get("imgpath1")%>" class="card-img-top"
                                 alt="<%=elemento.get("producto_nombre")%>">
                        </div>
                        <div class="col">
                            <span>
                                <%=elemento.get("codigo_producto")%>
                            </span>
                            <span>
                                <%=elemento.get("producto_nombre")%>
                            </span>
                        </div>

                    </div>


                    <%}%>
                    <div class="box" onclick="openModal()">
                        <span>+</span>
                        <p>Create New List</p>
                    </div>
                </div>

                <div id="myModal" class="modal">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h2>Create List</h2>
                            <span class="close" onclick="closeModal()">&times;</span>
                        </div>
                        <div class="modal-body">
                            <label for="listName">List Name</label>
                            <input type="text" id="listName" name="listName">
                        </div>
                        <div class="modal-footer">
                            <button class="cancel-button" onclick="closeModal()">Cancel</button>
                            <button class="create-button">Create List</button>
                        </div>
                    </div>
                </div>
            </main>
        </div>
    </div>

</div>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
<script>
    function clearCookies() {
        document.cookie = 'usuario=; Path=/; Expires=Thu, 01 Jan 1970 00:00:01 GMT;';
    }

    function enableEdit(id) {
        var input = document.getElementById(id);
        input.removeAttribute('readonly');
        input.focus();
    }

    function openModal() {
        document.getElementById('myModal').style.display = 'block';
    }

    function closeModal() {
        document.getElementById('myModal').style.display = 'none';
    }

    window.onclick = function (event) {
        var modal = document.getElementById('myModal');
        if (event.target == modal) {
            modal.style.display = 'none';
        }
    }
</script>
<jsp:include page="../footer.jsp"/>
</body>

</html>
