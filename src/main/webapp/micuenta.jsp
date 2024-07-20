<%@ page import="org.dbp.entity.Usuario" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Costco</title>
    <link rel="stylesheet" href="resources/styles/style.css">
</head>
<body>
<%--<%@ page import="org.dbp.entity.Producto" %>--%>
<%
    Usuario usuario = (Usuario) request.getAttribute("usuario");
    out.println(usuario.getId() + "\n");
    out.println(usuario.getEmail() + "\n");
    out.println(usuario.getPassword() + "\n");
%>
<script src="scripts.js"></script>
</body>
</html>
