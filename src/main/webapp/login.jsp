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

      <div class="toast-container position-absolute start-50">
        <div id="error-toast" class="toast" role="alert">
          <div class="d-flex justify-content-between toast-body">
            <strong id="toast-text" class="text-danger"></strong>
            <button type="button" class="btn-close" data-bs-dismiss="toast"></button>
          </div>
        </div>
      </div>
    
    <div id="main-container">
        <h1>Iniciar Sesión</h1>
        <form method="post" action="/login">
            <div class="form-group">
                <label for="email">Dirección de Correo Electrónico</label>
                <input type="email" id="email" name="username" required>
            </div>
            <div class="form-group password-group">
                <label for="password">Contraseña</label>
                <input type="password" id="password" name="password" required>
                <span class="toggle-password" onclick="togglePassword('password')"></span>
            </div>
            <div class="form-group">
                <a href="forgot_password.jsp" class="forgot-link">¿Olvidaste tu Contraseña?</a>
            </div>
            <div class="form-group">
                <input class="form-check-input" type="checkbox" id="keep-signed-in">
                <label class="form-label" for="keep-signed-in">Mantenerme Conectado</label>
                <p class="info-text">Marca esta casilla solo cuando estés en un dispositivo privado.</p>
            </div>
            <button type="submit">Iniciar Sesión</button>
        </form>
        <div class="new-account">
            <span>¿Nuevo en Costco?</span>
            <a href="registrar.jsp">Crear Cuenta</a>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <script src="scripts/sign.js"></script>
</body>
</html>
