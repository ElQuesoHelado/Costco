<%@page pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Solicitud de Archivos</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
  <link href="styles/default.css" rel="stylesheet">
  <link href="styles/costco-icons.css" rel="stylesheet">
</head>
<body class="default-theme">
  <jsp:include page="header.jsp"/>

  <div class="container-xxl my-3">
    <!-- URL -->
    <ul id="url" class="d-flex text-gray fs-7">
      <li><a class="url-link" href="/">Inicio</a></li>
      <li>Solicitud de Logo</li>
    </ul>

    <div class="container">
      <h1>Solicitud de Logo</h1>
      <h4 class="text-blue mt-5">Solicitud de archivos</h4>
      <img class="img-fluid" src="img/logo-request.avif">
      <p>
        Para solicitudes de archivos como imágenes, detalles sobre productos y programas de Costco, o para
        solicitar filmar en una de nuestras instalaciones, rellene nuestro <a class="link-underline link-underline-opacity-0 link-underline-opacity-100-hover" href="https://goo.gl/forms/2V34kfQ6SX5ivC5t2">Formulario de solicitud de archivos</a>.
        La respuesta tardará entre 24 y 48 horas. Tenga en cuenta que las solicitudes de los archivos se supervisan de lunes a viernes durante el horario laboral normal y no se supervisan los días festivos.
      </p>
      <h4 class="text-blue">Solicitud de logos</h4>
      <img width="300" src="img/logo.png">
      <p>
        El uso de todos los logotipos, diseños de tarjetas y fotos de Costco está protegido y sólo se permite con la aprobación expresa por escrito de Costco Wholesale.
        Para solicitar el uso de nuestro logotipo, rellene nuestro <a class="link-underline link-underline-opacity-0 link-underline-opacity-100-hover" href="https://docs.google.com/forms/d/e/1FAIpQLSc2BEhdhxBwtbhhgYdQfst4wcNieyfu43CA-BFb7DOAktXqWQ/viewform">Formulario de solicitud de logotipo</a>. La respuesta tardará entre 24 y 48 horas. Tenga en cuenta que las solicitudes de logotipos se supervisan de lunes a viernes durante el horario laboral normal y no se supervisan los días festivos.
        <br><br>
        Muchas gracias.
      </p>
    </div>
  </div>
  
  <jsp:include page="footer.jsp"/>
</body>
</html>