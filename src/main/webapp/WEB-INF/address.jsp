<%@ page import="java.util.ArrayList" %>
<%@page pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Shipping and Billing</title>
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

        #main-content .tab-container {
            display: flex;
            border-bottom: 1px solid #dee2e6;
        }

        #main-content .tab {
            padding: 10px 20px;
            cursor: pointer;
            background-color: #f8f9fa;
            border: 1px solid #dee2e6;
            border-bottom: none;
        }

        #main-content .tab.active {
            background-color: #fff;
            border-top: 2px solid #007bff;
            border-bottom: 2px solid #fff;
        }

        #main-content .content-container {
            display: none;
            padding: 20px;
            background-color: #fff;
            border: 1px solid #dee2e6;
            border-top: none;
        }

        #main-content .content-container.active {
            display: block;
        }

        #main-content .address-box {
            padding: 20px;
            border: 1px dashed #007bff;
            cursor: pointer;
            text-align: center;
            margin-bottom: 20px;
        }

        #main-content .address-box:hover {
            background-color: #f8f9fa;
        }

        #main-content .modal {
            display: none;
            position: fixed;
            z-index: 10;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            overflow: auto;
            background-color: rgba(0, 0, 0, 0.5);
        }

        #main-content .modal-content {
            background-color: #fff;
            margin: 10% auto;
            padding: 20px;
            border: 1px solid #dee2e6;
            width: 80%;
            max-width: 500px;
        }

        #main-content .close {
            color: #aaa;
            float: right;
            font-size: 28px;
            font-weight: bold;
        }

        #main-content .close:hover,
        #main-content .close:focus {
            color: #000;
            text-decoration: none;
            cursor: pointer;
        }

        #main-content .form-container {
            margin-top: 20px;
        }

        #main-content .form-container form label {
            font-weight: bold;
            margin-top: 10px;
        }

        #main-content .form-container form input,
        #main-content .form-container form select {
            width: 100%;
            padding: 8px;
            margin-top: 5px;
            border: 1px solid #ccc !important;
            border-radius: 4px;
        }

        #main-content .form-container form .cancel-button,
        #main-content .form-container form .save-button {
            margin-top: 20px;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
        }

        #main-content .form-container form .cancel-button {
            background-color: #6c757d;
            color: #fff;
            margin-right: 10px;
        }

        #main-content .form-container form .save-button {
            background-color: #007bff;
            color: #fff;
        }
    </style>

<body class="default-theme">
<jsp:include page="../header.jsp"/>

<div class="container-xxl my-3">
    <!-- URL -->
    <ul id="url" class="d-flex text-gray fs-7">
        <li><a class="url-link" href="/">Inicio</a></li>
        <li><a class="url-link" href="micuenta.jsp">Cuenta</a></li>
        <li>Direcciones</li>
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
                <h1 class="mb-4">Shipping & Billing</h1>

                <div class="tab-container">
                    <div class="tab active" onclick="showContent('shipping')">Shipping</div>
                    <div class="tab" onclick="showContent('billing')">Billing</div>
                </div>

                <div id="shipping" class="content-container active">
                    <%
                        //                        ArrayList<String> arrayDirecciones = (ArrayList<String>) request.getAttribute("direcciones");

                        for (String direccion : (ArrayList<String>) request.getAttribute("direcciones")) {
                    %>
                    <div class="address-box">
                        <span><%=direccion%></span>
                    </div>
                    <%}%>
                    <%--                    <div class="address-box">--%>
                    <%--                        <span>${usuario}</span>--%>
                    <%--                    </div>--%>
                    <div class="address-box" onclick="openModal()">
                        <span>Add New Address</span>
                    </div>
                </div>
                <div id="billing" class="content-container">
                    <div class="address-box" onclick="openModal()">
                        <span>Add New Address</span>
                    </div>
                </div>

                <!-- The Modal -->
                <div id="addressModal" class="modal">
                    <div class="modal-content">
                        <span class="close" onclick="closeModal()">&times;</span>
                        <div class="form-container">
                            <h2>Add New Address</h2>
                            <form>
                                <label for="firstName">First Name</label>
                                <input type="text" id="firstName" name="firstName">

                                <label for="lastName">Last Name</label>
                                <input type="text" id="lastName" name="lastName">

                                <label for="companyName">Company Name (optional)</label>
                                <input type="text" id="companyName" name="companyName">

                                <label for="streetAddress">Street Address</label>
                                <input type="text" id="streetAddress" name="streetAddress">

                                <label for="apt">Apt., Suite, Unit, Etc. (optional)</label>
                                <input type="text" id="apt" name="apt">

                                <label for="zipCode">Zip Code</label>
                                <input type="text" id="zipCode" name="zipCode" pattern="\d*"
                                       title="Only numbers are allowed">

                                <label for="city">City</label>
                                <input type="text" id="city" name="city">

                                <label for="state">State</label>
                                <select id="state" name="state">
                                    <option value="">Select</option>
                                    <option value="AL">Alabama</option>
                                    <option value="AK">Alaska</option>
                                    <!-- Other states omitted for brevity -->
                                </select>

                                <label for="email">Email Address</label>
                                <input type="email" id="email" name="email" value="jorgerivas9725@gmail.com">

                                <label for="phone">Phone</label>
                                <input type="text" id="phone" name="phone" pattern="\d*"
                                       title="Only numbers are allowed">

                                <div>
                                    <button type="button" class="cancel-button" onclick="cancel()">Cancel</button>
                                    <button type="submit" class="save-button">Save Address</button>
                                </div>
                            </form>
                            <p>Changes made here to your shipping or billing address will not update the address
                                associated with your membership.</p>
                        </div>
                    </div>
                </div>

                <script>
                    function clearCookies() {
                        document.cookie = 'usuario=; Path=/; Expires=Thu, 01 Jan 1970 00:00:01 GMT;';
                    }

                    function showContent(contentId) {
                        var contents = document.querySelectorAll('.content-container');
                        contents.forEach(function (content) {
                            content.classList.remove('active');
                        });
                        document.getElementById(contentId).classList.add('active');

                        var tabs = document.querySelectorAll('.tab');
                        tabs.forEach(function (tab) {
                            tab.classList.remove('active');
                        });
                        document.querySelector('.tab[onclick="showContent(\'' + contentId + '\')"]').classList.add('active');
                    }

                    function openModal() {
                        document.getElementById('addressModal').style.display = 'block';
                    }

                    function closeModal() {
                        document.getElementById('addressModal').style.display = 'none';
                    }

                    function cancel() {
                        document.querySelector('form').reset();
                        closeModal();
                    }

                    window.onclick = function (event) {
                        var modal = document.getElementById('addressModal');
                        if (event.target == modal) {
                            closeModal();
                        }
                    }
                </script>
            </main>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"></script>
<jsp:include page="../footer.jsp"/>
</body>

</html>
