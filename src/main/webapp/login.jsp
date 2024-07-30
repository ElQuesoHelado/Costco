<%@page pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Iniciar Sesión</title>
    <link rel="stylesheet" href="styles/sign.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
    <nav class="navbar navbar-expand-xxl" style="background-color: #eee;">
        <div class="container-fluid justify-content-center py-1">
          <img width="200" src="img/logo3.png">
        </div>
      </nav>
    
    <div id="main-container">
        <h1>Iniciar Sesión</h1>
        <div class="form-group">
            <label for="email">Dirección de Correo Electrónico</label>
            <input type="email" id="email" required>
        </div>
        <div class="form-group password-group">
            <label for="password">Contraseña</label>
            <input type="password" id="password" required>
            <span class="toggle-password" onclick="togglePassword('password')"></span>
        </div>
        <div class="form-group">
            <a href="forgot_password.html" class="forgot-link">¿Olvidaste tu Contraseña?</a>
        </div>
        <div class="form-group">
            <input class="form-check-input" type="checkbox" id="keep-signed-in">
            <label class="form-label" for="keep-signed-in">Mantenerme Conectado</label>
            <p class="info-text">Marca esta casilla solo cuando estés en un dispositivo privado.</p>
        </div>
        <button type="submit">Iniciar Sesión</button>
        <div class="new-account">
            <span>¿Nuevo en Costco?</span>
            <a href="registrar.jsp">Crear Cuenta</a>
        </div>
    </div>
    <script src="scripts/sign.js"></script>
</body>
</html>
