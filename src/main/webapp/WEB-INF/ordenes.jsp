<%@ page import="org.json.JSONObject" %>
<%@ page import="org.json.JSONArray" %>
<%@page pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Orders and Purchases</title>
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
            padding: 0 0;
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

        #main-content .breadcrumb {
            font-size: 14px;
            margin-bottom: 20px;
        }

        #main-content .tab-content {
            background-color: #fff;
            border: 1px solid #dee2e6;
            border-top: none;
            padding: 20px;
            border-radius: 0 0 5px 5px;
        }

        #main-content .dropdown-menu {
            right: 0;
            left: auto;
        }

        #main-content .nav-tabs .nav-link {
            border: 1px solid #dee2e6;
            border-radius: 5px 5px 0 0;
        }

        #main-content .nav-tabs .nav-link.active {
            color: #495057;
            background-color: #fff;
            border-color: #dee2e6 #dee2e6 #fff;
        }

        #main-content .btn-link {
            color: #007bff;
            text-decoration: none;
        }

        #main-content .btn-link:hover {
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
        <li><a class="url-link" href="micuenta.jsp">Cuenta</a></li>
        <li>Ordenes & Pedidos</li>
    </ul>
    <div id="main-content" class="container-fluid p-0 m-0">
        <div class="row m-0 p-0">
            <nav class="col-md-3 col-lg-2 d-md-block sidebar">
                <h2>Bienvenido!</h2>
                <ul class="nav flex-column">
                    <li class="nav-item"><a class="nav-link" href="/micuenta"><i class="fas fa-home"></i> Account
                        Home</a></li>
                    <li class="nav-item"><a class="nav-link active" href="/ordenes"><i class="fas fa-box"></i> Pedidos & Compras</a></li>
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
                    <li class="nav-item"><a class="nav-link" href="/" onClick="clearCookies()"><i class="fas fa-sign-out-alt"></i> Cerrar Sesión</a>
                    </li>
                </ul>
            </nav>

            <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4 main-content">
                <h1 class="mb-4">Órdenes y Pedidos</h1>

                <ul class="nav nav-tabs" id="myTab" role="tablist">
                    <li class="nav-item" role="presentation">
                        <button class="nav-link active" id="online-tab" data-bs-toggle="tab" data-bs-target="#online"
                                type="button" role="tab" aria-controls="online" aria-selected="true">Online
                        </button>
                    </li>
                    <li class="nav-item" role="presentation">
                        <button class="nav-link" id="in-warehouse-tab" data-bs-toggle="tab"
                                data-bs-target="#in-warehouse" type="button" role="tab" aria-controls="in-warehouse"
                                aria-selected="false">In-Warehouse
                        </button>
                    </li>
                </ul>

                <div class="tab-content" id="myTabContent">
                    <div class="tab-pane fade show active" id="online" role="tabpanel" aria-labelledby="online-tab">
                        <p>Sus nuevos pedidos aparecerán poco después de la confirmación..</p>
                        <div class="row">
                            <%
                                JSONArray ordenes = (JSONArray) request.getAttribute("ordenes");

                                for (Object e : ordenes) {
                                    JSONObject orden = (JSONObject) e;
//                                    System.out.println(orden.get("numero_orden"));

                            %>

                            <div class="col col-md-4 col-lg-4 col-xl-3 col-xxl-3 mb-4">
                                <div class="card product-card">
                                    <img src="img/productos/<%=orden.get("imgpath1")%>" class="card-img-top"
                                         alt="<%=orden.get("producto_nombre")%>">
                                    <div class="card-body">
                                        <h5 class="card-title">#: <%=orden.get("numero_orden")%>
                                        </h5>
                                        <h5 class="card-title"><%=orden.get("producto_nombre")%>
                                        </h5>
                                        <p class="card-text"><strong>Código:</strong> <%=orden.get("codigo_producto")%>
                                        </p>
                                        <p class="card-text"><strong>Nombre:</strong> <%=orden.get("producto_nombre")%>
                                        </p>
                                        <p class="card-text"><strong>Cantidad:</strong> <%=orden.get("cantidad")%>
                                        </p>
                                        <p class="card-text"><strong>Precio:</strong> <%=orden.get("precio")%>
                                        </p>
                                        <p class="card-text"><strong>Total:</strong> <%=orden.get("total")%>
                                        </p>
                                        <p class="card-text"><strong>Direccion:</strong> <%=orden.get("direccion")%>
                                        </p>
                                        <p class="card-text"><strong>Estado:</strong> <%=orden.get("estado")%>
                                        </p>
                                        <p class="card-text"><strong>Fecha envio:</strong> <%=orden.get("fecha_envio")%>
                                        </p>
                                        <p class="card-text"><strong>Fecha entrega:</strong> <%
                                            if (orden.has("fecha_entrega"))
                                                orden.get("fecha_entrega");
                                        %>
                                        </p>
                                        <p class="card-text"><strong>Total:</strong> <%=orden.get("total")%>
                                        </p>
                                    </div>
                                </div>
                            </div>


                            <% } %>
                        </div>

                        <a href="#" class="btn btn-link mb-3">View Flexible Spending Account (FSA) Purchases</a>
                        <div class="dropdown d-flex justify-content-end mb-3">
                            <button class="btn btn-outline-secondary dropdown-toggle" type="button"
                                    id="dropdownMenuButton" data-bs-toggle="dropdown" aria-expanded="false">
                                Showing: <span id="selected-period">Ulitmo 6 Mesess </span>
                            </button>
                            <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                <li><a class="dropdown-item" href="#" onclick="selectPeriod('Last 6 Months')">Ultimos 6 Meses</a></li>
                                <li><a class="dropdown-item" href="#" onclick="selectPeriod('2024 Enero-Junio')">2024
                                    January-June</a></li>
                                <li><a class="dropdown-item" href="#" onclick="selectPeriod('2023 Julio-Diciembre')">2023
                                    July-December</a></li>
                                <li><a class="dropdown-item" href="#" onclick="selectPeriod('2023 Enero-Junio')">2023
                                    January-June</a></li>
                                <li><a class="dropdown-item" href="#" onclick="selectPeriod('2022 Julio-Diciembre')">2022
                                    July-December</a></li>
                                <li><a class="dropdown-item" href="#" onclick="selectPeriod('2022 Enero-Junio')">2022
                                    January-June</a></li>
                            </ul>
                        </div>
                        <p>No hay pedidos disponibles para el rango de fechas seleccionado.</p>
                    </div>
                    <div class="tab-pane fade" id="in-warehouse" role="tabpanel" aria-labelledby="in-warehouse-tab">
                        <!-- Content for In-Warehouse tab -->
                    </div>
                </div>
            </main>
        </div>
    </div>
</div>

<script>
    function selectPeriod(period) {
        document.getElementById('selected-period').textContent = period;
    }

    function clearCookies(){
        document.cookie = 'usuario=; Path=/; Expires=Thu, 01 Jan 1970 00:00:01 GMT;';
    }


</script>
<jsp:include page="../footer.jsp"/>

</body>

</html>
