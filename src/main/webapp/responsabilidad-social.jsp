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
      <li>Responsabilidad Social</li>
    </ul>

    <div class="container-fluid row mb-5">
      <div class="col-3">
        <img class="img-fluid" src="img/accesibilidad/res1.avif">
        <br><br>
        <img class="img-fluid" src="img/accesibilidad/res2.avif">
        <div class="d-flex flex-column mx-4 my-2">
          <a href="sustentabilidad.jsp" class="fs-7 link-underline link-underline-opacity-0 link-underline-opacity-100-hover">Sustentabilidad</a>
          <a href="ahorro.jsp" class="fs-7 link-underline link-underline-opacity-0 link-underline-opacity-100-hover">Ahorro</a>
          <a href="marca-sustentable.jsp" class="fs-7 link-underline link-underline-opacity-0 link-underline-opacity-100-hover">Kirkland Signature una marca sustentable</a>
        </div>
      </div>
      <div class="col">
        <h2>Responsabilidad Social</h2>
        <br>
        De septiembre de 2019 a septiembre de 2020 Costco México destinó aproximadamente $3 millones de pesos en donativos en especie, además de recursos para apoyar proyectos en favor de la educación, desastres naturales y salud. Estos son algunos de los programas de Responsabilidad Social:
        <br><br><h5><b>Costco cumplió su primer año colaborando con la red de Banco de Alimentos más grande de México (BAMX), ayudando a un total de 450,000 personas con 1,850 toneladas de alimento.</b></h5>
        <br><h5><b>Donación de ambulancia equipada con valor de $939,600 pesos.</b></h5>
        <br><h5><b>Cruz Roja Mexicana</b></h5>
        <ul>
          <li>$160,000 pesos aproximadamente en cobijas para inmigrantes en la frontera norte (591 piezas)</li>
          <li>$400,000 pesos aproximadamente en alimentos y productos de higiene personal para inmigrantes en la frontera norte</li>
          <li>Productos de higiene personal para armar 1,800 paquetes y entregar a damnificados por las inundaciones en Tabasco</li>
        </ul>
        <h5><b>Inundaciones en el sureste de México</b></h5>
        <ul>
          <li>Fundación “Échale” 50 toneladas de alimentos y productos de higiene personal para 4,000 familias</li>
          <li>Fundación “Échale” $237,000 pesos en alimentos y productos de higiene personal para damnificados en Tabasco</li>
          <li>Fundación “El Hombre Sobre la Tierra” $118,000 pesos en alimentos para comunidades mayas</li>
        </ul>
        <h5><b>16,380 mochilas con útiles escolares se donaron a niños de escasos recursos</b></h5>
        <br><h5><b>En nuestro Centro de Distribución se donaron 15,400 artículos no-alimenticios como ropa, sleeping bags, albercas para niños, juguetes y muebles.</b></h5>
      </div>
    </div>
  </div>

  <jsp:include page="footer.jsp"/>
</body>
</html>