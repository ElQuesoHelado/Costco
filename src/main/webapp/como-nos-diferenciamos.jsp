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
      <li>Cómo Nos Diferenciamos</li>
    </ul>

    <div class="container-fluid px-5">
      <img class="img-fluid" src="/img/como-nos-diferenciamos.avif">
      <h2 class="my-4">¿En qué somos diferentes a la tienda?</h2>
      <hr>
      <h5 class="mx-3">La página <a href="/" class="link-underline link-underline-opacity-0">costco.com.mx</a> ofrece artículos de venta exclusiva en línea para socios de Costco.</h5>
      <div class="accordion d-flex flex-column row-gap-3">
        <div class="accordion-item">
          <h2 class="accordion-header">
            <button class="p-4 accordion-button collapsed" data-bs-toggle="collapse" data-bs-target="#collapse1">
              <b>Miles de artículos diferentes</b>
            </button>
          </h2>
          <div id="collapse1" class="accordion-collapse collapse">
            <div class="accordion-body">
              En costco.com.mx puede comprar miles de artículos que no encontrarás en las sucursales de Costco ya que la mayoría son productos de venta exclusiva para Internet. Descubre una selección adicional de productos en todas las categorías que costco.com.mx te ofrece, incluyendo una amplia gama de muebles y artículos de temporada disponibles todo el año.
            </div>
          </div>
        </div>
        <div class="accordion-item">
          <h2 class="accordion-header">
            <button class="p-4 accordion-button collapsed" data-bs-toggle="collapse" data-bs-target="#collapse2">
              <b>La entrega está incluida</b>
            </button>
          </h2>
          <div id="collapse2" class="accordion-collapse collapse">
            <div class="accordion-body">
              Los precios de todos los artículos de venta en costco.com.mx incluyen la entrega a la puerta de tu hogar u oficina, lo que hace más conveniente la compra por Internet. Nuestros precios publicados son finales, el cargo de envío ya está incluido. Para consultar las condiciones de entrega da clic aquí.
            </div>
          </div>
        </div>
        <div class="accordion-item">
          <h2 class="accordion-header">
            <button class="p-4 accordion-button collapsed" data-bs-toggle="collapse" data-bs-target="#collapse3">
              <b>Compra en cualquier momento de manera fácil y segura</b>
            </button>
          </h2>
          <div id="collapse3" class="accordion-collapse collapse">
            <div class="accordion-body">
              Compra en línea las 24 horas los 7 días de la semana y desde la comodidad de su hogar o negocio. Costco.com.mx se ajusta a tu horario sin importar cuál sea.
              Todas tus transacciones son transmitidas con herramientas certificadas por Visa, MasterCard y American Express lo que garantiza una compra protegida y segura.
            </div>
          </div>
        </div>
        <div class="accordion-item">
          <h2 class="accordion-header">
            <button class="p-4 accordion-button collapsed" data-bs-toggle="collapse" data-bs-target="#collapse4">
              <b>Ofertas exclusivas por Internet</b>
            </button>
          </h2>
          <div id="collapse4" class="accordion-collapse collapse">
            <div class="accordion-body">
              Diariamente ofrecemos nuevos artículos de calidad que se suman a nuestra selección de productos. No pierdas la oportunidad de realizar una gran compra, asegúrate de recibir por correo electrónico información oportuna sobre novedades y ofertas en productos seleccionados. Para registrar tu correo electrónico da clic aquí.
            </div>
          </div>
        </div>
        <div class="accordion-item">
          <h2 class="accordion-header">
            <button class="p-4 accordion-button collapsed" data-bs-toggle="collapse" data-bs-target="#collapse5">
              <b>Formas de pago</b>
            </button>
          </h2>
          <div id="collapse5" class="accordion-collapse collapse">
            <div class="accordion-body">
              En costco.com.mx aceptamos las tarjetas de crédito Costco, American Express, Visa y MasterCard. No aceptamos efectivo, Cash Card ni Recompensas de Membresía Ejecutiva.
              <br><br>Si eres Socio de Costco, puedes realizar compras en línea ingresando tu número de membresía.
              <br>Si eres Socio Ejecutivo, tus compras en línea acumulan además el 2% de Recompensa anual.
              <br>Si aún no eres socio y deseas afiliarse o requieres más información acerca de la membresía por favor da clic aquí.
            </div>
          </div>
        </div>
        <div class="accordion-item">
          <h2 class="accordion-header">
            <button class="p-4 accordion-button collapsed" data-bs-toggle="collapse" data-bs-target="#collapse6">
              <b>¿Qué más puedes esperar?</b>
            </button>
          </h2>
          <div id="collapse6" class="accordion-collapse collapse">
            <div class="accordion-body">
              Recibe un reembolso por tus compras en línea.
              <br>Los Socios con Membresía Ejecutiva acumulan además el 2% de Recompensa sin impuestos sobre el total anual de las compras realizadas dentro de la página (Recompensa máxima $7,500 M.N.). La compra de Gasolina, Foto Revelado por internet y el pago de Membresía no generan Recompensa.
              <br>Nuestra prioridad es el servicio al cliente y respetar nuestra política de devoluciones. Costco.com.mx garantiza tu satisfacción en cada producto que vendemos con un reembolso total. Para procesar una devolución, puedes hacerlo de manera fácil y rápida en cualquiera de nuestras sucursales o visita nuestro Centro de Atención al Socio.
              <br>Para consultar Nuestra Política de Entregas, Devoluciones y Cancelaciones da clic aquí.
              <br><br>
              <b class="fs-7">Marcas de calidad comprobada</b>
              <br>
              Costco.com.mx se alinea al compromiso de Costco de vender los mejores artículos a precios bajos. Encontrarás las marcas más reconocidas en cada departamento, así como los productos de la marca Kirkland Signature™.
            </div>
          </div>
        </div>
        <div class="accordion-item">
          <h2 class="accordion-header">
            <button class="p-4 accordion-button collapsed" data-bs-toggle="collapse" data-bs-target="#collapse7">
              <b>Nuestra filosofía</b>
            </button>
          </h2>
          <div id="collapse7" class="accordion-collapse collapse">
            <div class="accordion-body">
              Ofrecer a nuestros socios productos de alta calidad a los mejores precios posibles.
              <br>
              <b class="fs-7">Alta calidad a los mejores precios ¿cómo lo hacemos?</b>
              <br>
              Ofrecemos precios bajos en nuestra selección de productos nacionales e importados dentro de una amplia gama de categorías. Los volúmenes de venta altos, empaques eficientes y presentaciones más grandes son los que nos permiten reducir los costos de embalaje, distribución y manipulación. Este modelo comercial produce grandes ventas. Nuestros ahorros se ven reflejados en precios más bajos para ti.
              <br><br>
              <b class="fs-7">¿Qué marcas vendemos?</b>
              <br>
              Tenemos una amplia selección de artículos de marcas líderes importados y nacionales.
              <br>
              También ofrecemos nuestra marca exclusiva Kirkland Signature, con productos desarrollados de igual o mejor calidad que las marcas líderes.
              <br><br>
              <b class="fs-7">¿Qué productos vendemos?</b>
              <br>
              Vendemos una gran variedad de productos para tu hogar, negocio y entretenimiento: electrónica, cómputo, línea blanca, muebles, video juegos, libros, CD’s, películas y series, certificados de regalo, juguetes, artículos deportivos, abarrotes, comida, vinos y licores, joyería, productos de salud y belleza, automotriz, ferretería, jardinería, material y equipo para oficina.
              <br><br>
              <b class="fs-7">¿Por qué nuestros productos cambian con tanta frecuencia?</b>
              <br>
              Siempre nos gusta ofrecer a nuestros clientes las mejores ofertas, y por lo general sólo están disponibles por tiempo limitado: cuando se acaban, ¡se acaban! Lo llamamos “la búsqueda del tesoro continúa en línea”.
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  <jsp:include page="footer.jsp"/>
</body>
</html>