<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%--<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>--%>
<%--<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>--%>
<%--<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>--%>
<%--<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>--%>
<html>
<head>
    <%--    <meta http-equiv="Content-Type" content="text/html; charset='UTF-8'">--%>
    <%--    <link rel="stylesheet" href="../webjars/bootstrap/4.0.0/css/bootstrap.css">--%>
    <%--    <link rel="stylesheet" href="../stylesBootstrap/bootstrap-superhero-dorado.css">--%>
    <%--    <script type="text/javascript" src="../webjars/jquery/3.3.1/jquery.js"></script>--%>
    <%--    <script type="text/javascript" src="../webjars/bootstrap/4.0.0/js/bootstrap.js"></script>--%>
    <%--    <script type="text/javascript" src="../webjars/bootstrap/4.0.0/js/bootstrap.js"></script>--%>
    <title>Login</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/registrar" method="post">
    <h2><label>Iniciar sesión:</label></h2>
    <label for="username">Email:</label>
    <input id="username" name="username"/>
    <label for="password">Contraseña:</label>
    <input id="password" name="password" type="password"/>
    <label for="metodo_pago">Contraseña:</label>
    <input id="metodo_pago" name="metodo_pago"/>
    <input type="submit" value="Crear cuenta">
</form>
</body>
</html>