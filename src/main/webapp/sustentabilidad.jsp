<%@page pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Welcome to Costly</title>
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
      <li>Sustentabilidad</li>
    </ul>

    <div class="container-fluid row mb-5">
      <div class="col-3">
        <img class="img-fluid" src="img/accesibilidad/sustentabilidad.avif">
        <div class="d-flex flex-column mx-3 my-2">
          <a href="ahorro.jsp" class="fs-7 link-underline link-underline-opacity-0 link-underline-opacity-100-hover">Ahorro</a>
          <a href="marca-sustentable.jsp" class="fs-7 link-underline link-underline-opacity-0 link-underline-opacity-100-hover">Kirkland Signature una marca sustentable</a>
          <a href="responsabilidad-social.jsp" class="fs-7 link-underline link-underline-opacity-0 link-underline-opacity-100-hover">Responsabilidad Social</a>
        </div>
      </div>
      <div class="col">
        <h2>Sustentabilidad, nuestro objetivo es seguir siendo un negocio responsable, apegados a nuestro Código de Ética y Misión.</h2>
        <br>
        <h5><b>Código de Ética:</b></h5>
        <ul>
          <li>Obedecer la ley</li>
          <li>Cuidar a nuestros socios</li>
          <li>Respetar a nuestros proveedores</li>
          <li>Recompensar a nuestros accionistas</li>
        </ul>
        <h5><b>Misión:</b></h5>
        Brindar continuamente a nuestros socios de bienes y servicios de la mejor calidad a los precios más bajos posibles. Estos, guían nuestro objetivo de hacer lo correcto todos los días y son la base de nuestro negocio. Costly continuará adaptándose a medida que aprenda más sobre los desafíos globales como el cambio climático, derechos humanos y compromisos con los recursos naturales y su impacto. Todo en pro de construir un futuro dinámico mientras seguimos esforzándonos por hacer lo correcto y seguir siendo una empresa comercial que opera eficientemente y con bajos costos.
        <br><br>
        <h5><b>Nuestros principios de Sustentabilidad:</b></h5>
        Estamos comprometidos en hacer nuestra parte, nos centramos en cuestiones relacionadas con nuestro negocio y en las que podemos contribuir con un impacto positivo y real, generando resultados con mejoras continuas.
        <br><br>
        <h5><b>Nuestras responsabilidades de Sustentabilidad:</b></h5>
        <ul>
          <li>Cuidar a nuestros empleados</li>
          <li>Apoyar a las comunidades donde viven y trabajan nuestros empleados y socios</li>
          <li>Operar de manera eficiente y responsable con el medio ambiente</li>
          <li>Obtenemos estratégicamente nuestra mercancía de manera sustentable</li>
        </ul>
        En Costly continuaremos incorporando prácticas sustentables en aspectos clave del negocio, para que nuestras prácticas pueden adaptarse con el tiempo al mundo en constante cambio, y reforzar nuestro compromiso para reflejar estos cambios.<br>
        Algunos ejemplos son:
        <div class="row">
          <img class="col-3 img-fluid" src="img/accesibilidad/huevo.avif">
          <p class="col">
            Huevo Orgánico<br>
            En abril de 2020, se cambió del empaque de pet a cartón biodegradable.<br>
            Este nuevo empaque tarda 18 semanas en biodegradarse y se tuvo un ahorro de plástico
            de 28 toneladas
          </p>
        </div>
        <div class="row">
          <img class="col-3 img-fluid" src="img/accesibilidad/mango.avif">
          <p class="col">
            Mango deshidratado con chile.<br>
            Se realizó el cambio del vitrolero de pet con tapa a bolsa metalizada, teniendo un ahorro de plástico del 87.12% del consumo anual con una reducción de consumo de plástico de 41,917 kg.
          </p>
        </div>
        <div class="row">
          <img class="col-3 img-fluid" src="img/accesibilidad/piña.avif">
          <p class="col">
            Piña Miel sin corona.<br>
            Al eliminar la corona de la piña, se acomodaron más unidades en la caja para transportarlas.<br>
            No solo benefició el precio de venta, que se redujo $5 pesos por unidad, sino que también impactó en el medio ambiente:<br>
            • Reducción de uso de electricidad 28.8%<br>
            • Ahorro de agua 28%<br>
            • Disminución del 26% en uso de diésel y contaminantes al medio ambiente.
          </p>
        </div>
      </div>
    </div>
  </div>

  <jsp:include page="footer.jsp"/>
</body>
</html>