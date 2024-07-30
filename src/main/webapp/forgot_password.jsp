<%@page pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Restablecer Contraseña</title>
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
        <h1>Restablecer Contraseña</h1>
        <p>Introduce la dirección de correo electrónico de tu cuenta para recibir un código de verificación y restablecer tu contraseña.</p>
        <div class="form-group">
            <label for="reset-email">Dirección de Correo Electrónico</label>
            <input type="email" id="reset-email" required>
        </div>
        <button type="submit">Enviar Código de Verificación</button>
        <a href="/login" class="cancel-link">Cancelar</a>
    </div>
</body>
</html>
