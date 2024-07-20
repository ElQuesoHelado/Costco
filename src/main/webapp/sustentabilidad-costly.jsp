<%@page pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Welcome to Costly</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
  <link href="styles/default.css" rel="stylesheet">
  <link href="styles/costco-icons.css" rel="stylesheet">
  <style>
    #main-container a:active {
      box-shadow: 1px 1px 10px -2px black;
    }
  </style>
</head>
<body class="default-theme">
  <jsp:include page="header.jsp"/>

  <div class="container-xxl my-3">
    <!-- URL -->
    <ul id="url" class="d-flex text-gray fs-7">
      <li><a class="url-link" href="/">Inicio</a></li>
      <li>Sustentabilidad Costly</li>
    </ul>

    <div id="main-container" class="d-flex flex-column mt-5 row-gap-2 px-2">
      <h2 class="text-body">Sustentabilidad en Costly Perú</h2>
      <a href="/sustentabilidad.jsp"><img class="img-fluid shadow-sm" src="/img/accesibilidad/1.avif"></a>
      <a href="/ahorro.jsp"><img class="img-fluid" src="/img/accesibilidad/2.avif"></a>
      <a href="/marca-sustentable.jsp"><img class="img-fluid" src="/img/accesibilidad/3.avif"></a>
      <a href="/responsabilidad-social.jsp"><img class="img-fluid" src="/img/accesibilidad/4.avif"></a>
    </div>
  </div>

  <jsp:include page="footer.jsp"/>
</body>
</html>