<%@page pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Crear Cuenta</title>
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
        <h1>Crear Cuenta</h1>
        <form method="post" action="/registrar">
            <div class="form-group">
                <label for="new-email">Dirección de Correo Electrónico</label>
                <input type="email" id="new-email" required>
            </div>
            <div class="form-group password-group">
                <label class="form-label" for="new-password">Contraseña</label>
                <input class="form-control" type="password" id="new-password" required>
                <span class="toggle-password" onclick="togglePassword('new-password')">
                    <img src="https://w7.pngwing.com/pngs/221/536/png-transparent-eye-password-see-view-minimalisticons-icon-thumbnail.png" alt="Mostrar Contraseña" id="eye-icon-new-password">
                </span>
            </div>
            <div class="form-group password-group">
                <label class="form-label" for="confirm-password">Confirmar Contraseña</label>
                <input class="form-control" type="password" id="confirm-password" required>
                <span class="toggle-password" onclick="togglePassword('confirm-password')">
                    <img src="https://w7.pngwing.com/pngs/221/536/png-transparent-eye-password-see-view-minimalisticons-icon-thumbnail.png" alt="Mostrar Contraseña" id="eye-icon-confirm-password">
                </span>
            </div>
            <div class="terms">
                Al crear una cuenta, aceptas los <a href="#">términos y condiciones de uso</a> de Costco.com.
            </div>
            <button type="submit">Crear Cuenta</button>
        </form>
        <div class="existing-account">
            <span>¿Ya tienes una cuenta?</span>
            <a href="login.jsp">Iniciar Sesión</a>
        </div>
    </div>
    <script src="scripts/sign.js"></script>
</body>
</html>
