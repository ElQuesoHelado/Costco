<%@page pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Welcome to Costco</title>
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
      <li>Accesibilidad</li>
    </ul>

    <div class="mx-4 mb-5" style="font-size: smaller;">
    <b>Accesibilidad.</b> <br>
    Compromiso de Costco México. <br>
    <br>
    Costco Wholesale de México se compromete a brindar acceso a nuestros sitios web y aplicaciones móviles a personas con discapacidades.<br>
    Para cumplir con este compromiso, nos esforzamos por diseñar y mantener nuestra página web y aplicación conforme a la normas WCAG 2.1, Nivel AA.<br>
    <br>
    Las características de accesibilidad de los sitios de Costco incluyen:<br>
    <br>
    1. Estructura del sitio adecuada para su uso con tecnologías de asistencia.<br>
    2. Equivalentes de texto apropiados para imágenes.<br>
    3. Etiquetas apropiadas para formularios y campos de texto.<br>
    4. Acceso completo al teclado.<br>
    5. Subtítulos para videos.<br>
    6. Proporciones de contraste de color adecuadas para texto e imágenes con texto.<br>
    Si tiene problemas para usar este sitio o la aplicación móvil debido a una discapacidad, puede contactarnos visitando la sección de atención al socio.
    </di>
  </div>

  <jsp:include page="footer.jsp"/>
</body>
</html>