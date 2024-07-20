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
      <li>K.S una marca sustentable</li>
    </ul>

    <div class="container-fluid row mb-5">
      <div class="col-3">
        <img class="img-fluid" src="img/accesibilidad/marca-sustentable.jpg">
        <div class="d-flex flex-column mx-3 my-2">
          <a href="sustentabilidad.jsp" class="fs-7 link-underline link-underline-opacity-0 link-underline-opacity-100-hover">Sustentabilidad</a>
          <a href="ahorro.jsp" class="fs-7 link-underline link-underline-opacity-0 link-underline-opacity-100-hover">Ahorro</a>
          <a href="responsabilidad-social.jsp" class="fs-7 link-underline link-underline-opacity-0 link-underline-opacity-100-hover">Responsabilidad Social</a>
        </div>
      </div>
      <div class="col">
        <h2>Kirkland Signature, la marca exclusiva de Costco. Estos son los factores que influyen para obtener y desarrollar nuestros productos.</h2>
        Costco creó una línea de productos exclusivos con la marca Kirkland Signature®. Al desarrollar los productos, tenemos la oportunidad única de tener un mejor control sobre toda la cadena de suministro, incluido el origen del producto y las condiciones en que se produce.
        <br><br>
        <h5><b>Nuestros objetivos en los artículos Kirkland Signature son:</b></h5>
        <ul>
          <li>Proporcionar a nuestros socios productos de alta calidad al precio más bajo posible</li>
          <li>Ser respetuosos con las personas o los animales que los producen</li>
          <li>Respetar el medio ambiente donde se producen, cultivan, cosechan, procesan, transportan y envasan</li>
        </ul>
        Para cumplir con estos objetivos, trabajamos en todos los detalles con nuestros proveedores para mejorar continuamente la calidad de los productos Kirkland Signature®
        <br><br>
        <h5><b>Trazabilidad</b></h5>
        Permite a Costco conocer la calidad y seguridad del producto; examinar cuestiones de impactos ambientales; incluir información sobre el origen del producto en la etiqueta; de modo que el producto pueda tener éxito a largo plazo.
        <br><br><h5><b>Remuneración justa</b></h5>
        Un retorno justo en la cadena de suministro es importante; Para que Costco tenga éxito, sus proveedores también deben prosperar. Este compromiso ayuda a garantizar el suministro y la calidad a largo plazo. Costco cree que una rentabilidad justa es más que el precio pagado por el artículo, por esta razón incluye programas de apoyo como:
        <ul>
          <li>Capacitación a los productores / trabajadores y sus comunidades</li>
          <li>Pago de primas por la alta calidad de los productos</li>
          <li>Para mejorar la salud, educación, vivienda, agua potable y alimentos nutritivos para las comunidades</li>
        </ul>
        <h5><b>Mejora continua</b></h5>
        Aunque todavía hay un largo camino por recorrer en ciertas áreas para alcanzar los objetivos trazados seguimos trabajando para lograr alcanzarlos, un paso a la vez, también nos alientan las historias de éxito conseguidas en varios artículos Kirkland Signature ® en departamentos como:
        <br><br>
        Abarrotes<br>
        Limpieza<br>
        Dulces<br>
        Hogar<br>
        Vinos y Licores<br>
        Automotríz<br>
        Delicatessen<br>
        Gasolina<br>
        Service Deli<br>
        Ropa<br>
        Carnicería<br>
        Salud y Belleza<br>
        Panadería<br>
        Ayuda Auditiva<br>
        Congelados<br>
        Óptica<br>
        Refrigerados<br>
        Farmacia<br>
        Fuente de Sodas<br>
        Bebés<br>
        Frutas y Verduras
      </div>
    </div>
  </div>

  <jsp:include page="footer.jsp"/>
</body>
</html>