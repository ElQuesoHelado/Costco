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
    <!-- <ul id="url" class="d-flex text-gray fs-7"> -->
      <!-- <li><a class="url-link" href="/">Inicio</a></li> -->
      <!-- <li>Accesibilidad</li> -->
    <!-- </ul> -->
  </div>

  <jsp:include page="footer.jsp"/>
</body>
</html>