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
      <li>Ahorro</li>
    </ul>

    <div class="container-fluid row mb-5">
      <div class="col-3">
        <img class="img-fluid" src="img/accesibilidad/ahorro.avif">
        <div class="d-flex flex-column mx-4 my-2">
          <a href="sustentabilidad.jsp" class="fs-7 link-underline link-underline-opacity-0 link-underline-opacity-100-hover">Sustentabilidad</a>
          <a href="marca-sustentable.jsp" class="fs-7 link-underline link-underline-opacity-0 link-underline-opacity-100-hover">Kirkland Signature una marca sustentable</a>
          <a href="responsabilidad-social.jsp" class="fs-7 link-underline link-underline-opacity-0 link-underline-opacity-100-hover">Responsabilidad Social</a>
        </div>
      </div>
      <div class="col">
        <h2>Conozca algunos de los esfuerzos más destacados de nuestros programas de Sustentabilidad en nuestras tiendas.</h2>
        <br>
        <h5><b>Reducción de desechos</b></h5>
        Costco redujo en 2022 el 25% de la generación de basura. El 69% de los residuos generados por las tiendas como cartón, playo y equipos electrónicos son reciclados, así como las llantas y otros residuos que se donan, de esta forma no termina en el relleno sanitario.
        <br><br>
        <h5><b>Programa de reciclado</b></h5>
        Costco mantiene una alianza con la empresa Smurfit desde hace 13 años reciclando cartón y playo, reduciendo en el último año el impacto ambiental de:
        <ul>
          <li>305,150 árboles talados</li>
          <li>71.8 millones de litros de agua</li>
          <li>12,200 MWh consumo eléctrico</li>
          <li>5,580 barriles de petróleo</li>
          <li>44,875 toneladas de CO2</li>
        </ul>
        <h5><b>Consumo de agua</b></h5>
        Con el sistema de monitoreo de agua, Costco redujo el consumo diario de 6,800 litros por tienda comparado contra el año anterior.
        <br><br><h5><b>Reciclado de electrónicos</b></h5>
        Desde 2018, Costco recicla todos los residuos electrónicos de sus Tiendas y Corporativo.
        <br><br><h5><b>Sistema de medición de energía</b></h5>
        Costco cuenta con un monitoreo de energía en todas las sucursales a nivel nacional, esto ha contribuido a implementar estrategias más eficientes en refrigeración, aire acondicionado e iluminación, reduciendo el consumo de 2,300 MWh en cada tienda el primer año.
        <br><br><h5><b>Iluminación LED</b></h5>
        A partir del 2018, Costco ha instalado iluminación LED en todas sus tiendas, obteniendo ahorros de energía hasta un 18% del consumo total, esto es una reducción de 800,000 kWh por cada tienda.
        <br><br><h5><b>Energía Limpia</b></h5>
        Costco se asegura de trabajar con proveedores que generen energía limpia y más eficiente, reduciendo el CO2.
        <br><br><h5><b>INFORMACIÓN ACTUALIZADA DICIEMBRE 2020</b></h5>
      </div>
    </div>
  </div>

  <jsp:include page="footer.jsp"/>
</body>
</html>