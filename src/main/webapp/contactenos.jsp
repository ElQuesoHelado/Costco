<%@page pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Contactenos</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
  <link href="styles/default.css" rel="stylesheet">
  <link href="styles/costco-icons.css" rel="stylesheet">
  <link href="styles/form.css" rel="stylesheet">
</head>
<body class="default-theme">
  <jsp:include page="header.jsp"/>

  <div class="container-xxl my-3">
    <!-- URL -->
    <ul id="url" class="d-flex text-gray fs-7">
      <li><a class="url-link" href="/">Inicio</a></li>
      <li>Contáctenos</li>
    </ul>

    <div class="container-fluid px-5">
      <h2>Contáctenos</h2>
      <p class="display-6 text-center fw-bold" style="color: #4babd5">MÓDULO DE ATENCIÓN</p>
      <p class="fs-6 text-center">¡Gracias por escribirnos y darnos sus comentarios!</p>
      <div class="row">
        <div class="col-10 border">
          <ul class="nav nav-tabs">
            <li class="nav-item">
              <a class="nav-link active" data-bs-toggle="collapse" href="#form-content" role="button">Contáctenos</a>
            </li>
          </ul>
          <form id="form-content" class="collapse">
            <div id="form-departamento" class="row row-gap-4 my-3">
              <p class="form-title">Seleccione el departamento al que quiere dirigirse</p>
              <div class="row row-cols-lg-2 px-lg-5">
                <div class="d-flex flex-column">
                  <div class="form-check">
                    <input class="form-check-input departamento-option" type="radio" id="productos" name="radios">
                    <label class="form-check-label" for="productos">Productos</label>
                  </div>
                  <div id="productos-items" class="ms-5" hidden>
                    <div class="form-check">
                      <input class="form-check-input" type="radio" id="cotizaciones" name="radios1" checked>
                      <label class="form-check-label" for="cotizaciones">Cotizaciones y Existencias</label>
                    </div>
                    <div class="form-check">
                      <input class="form-check-input" type="radio" id="calidad" name="radios1">
                      <label class="form-check-label" for="calidad">Calidad</label>
                    </div>
                  </div>
                  <div class="form-check">
                    <input class="form-check-input departamento-option" type="radio" id="atencion" name="radios">
                    <label class="form-check-label" for="atencion">Atención a Proveedores</label>
                  </div>
                  <div class="form-check">
                    <input class="form-check-input departamento-option" type="radio" id="dudas" name="radios">
                    <label class="form-check-label" for="dudas">Dudas y Sugerencias</label>
                  </div>
                  <div class="form-check">
                    <input class="form-check-input departamento-option" type="radio" id="compras" name="radios">
                    <label class="form-check-label" for="compras">Compras en Línea</label>
                  </div>
                  <div class="form-check">
                    <input class="form-check-input departamento-option" type="radio" id="privacidad" name="radios">
                    <label class="form-check-label" for="privacidad">Privacidad de Datos</label>
                  </div>
                </div>
                <div>
                  <div class="form-check">
                    <input class="form-check-input departamento-option" type="radio" id="membresia" name="radios">
                    <label class="form-check-label" for="membresia">Membresías</label>
                  </div>
                  <div class="form-check">
                    <input class="form-check-input departamento-option" type="radio" id="tarjeta" name="radios">
                    <label class="form-check-label" for="tarjeta">Tarjeta de Crédito Costco</label>
                  </div>
                  <div class="form-check">
                    <input class="form-check-input departamento-option" type="radio" id="facturacion" name="radios">
                    <label class="form-check-label" for="facturacion">Facturación</label>
                  </div>
                  <div class="form-check">
                    <input class="form-check-input departamento-option" type="radio" id="estacion" name="radios">
                    <label class="form-check-label" for="estacion">Estación de Gasolina</label>
                  </div>
                </div>
              </div>
              <p id="departamento-error" hidden class="error">Debe seleccionar un departamento y completar la información</p>
              <p class="form-title">Ingrese su información</p>
              <div>
                <p id="form-2-header">Datos</p>
                <div id="form-2" class="d-flex flex-column">
                  <p id="warning" class="shadow fs-7 px-4 py-3 rounded" hidden style="background-color: #fff3cd; color: #856404;">
                    ! Por seguridad y privacidad de sus datos, <b>NO INTRODUZCA</b> el número de su Tarjeta de Crédito en este formulario
                  </p>
                  <div class="row row-cols-lg-2">
                    <div class="d-flex flex-column row-gap-4 mb-4">
                      <div>
                        <span class="form-label">Sucursal</span>
                        <select class="form-select" required>
                          <option> Seleccione </option>
                          <option> AGUASCALIENTES </option><!---->
                          <option> ARBOLEDAS </option><!---->
                          <option> ATIZAPÁN </option><!---->
                          <option> CANCUN </option><!---->
                          <option> CD. JUÁREZ </option><!---->
                          <option> CELAYA </option><!---->
                          <option> CHIHUAHUA </option><!---->
                          <option> COAPA </option><!---->
                          <option> CUERNAVACA </option><!---->
                          <option> CULIACÁN </option><!---->
                          <option> ENSENADA </option><!---->
                          <option> GUADALAJARA LÓPEZ MATEOS </option><!---->
                          <option> GUADALAJARA VALLARTA </option><!---->
                          <option> HERMOSILLO </option><!---->
                          <option> INTERLOMAS </option><!---->
                          <option> LEÓN CAMPESTRE </option><!---->
                          <option> LEÓN TORRES LANDA </option><!---->
                          <option> LINDAVISTA </option><!---->
                          <option> LOS CABOS </option><!---->
                          <option> MEXICALI </option><!---->
                          <option> MIXCOAC </option><!---->
                          <option> MONTERREY CARRETERA NACIONAL </option><!---->
                          <option> MONTERREY CUMBRES </option><!---->
                          <option> MONTERREY VALLE </option><!---->
                          <option> MORELIA </option><!---->
                          <option> MÉRIDA </option><!---->
                          <option> POLANCO </option><!---->
                          <option> PUEBLA </option><!---->
                          <option> PUERTO VALLARTA </option><!---->
                          <option> QUERÉTARO </option><!---->
                          <option> SALTILLO </option><!---->
                          <option> SAN LUIS POTOSÍ </option><!---->
                          <option> SANTA FE </option><!---->
                          <option> SATELITE </option><!---->
                          <option> TIJUANA LA MESA </option><!---->
                          <option> TIJUANA RIO </option><!---->
                          <option> TOLUCA </option><!---->
                          <option> TORREON </option><!---->
                          <option> VERACRUZ </option><!---->
                          <option> VILLAHERMOSA </option><!---->
                          <option> XALAPA </option><!----><!----><!----><!---->
                        </select>
                      </div>
                      <div>
                        <span class="form-label">Número de Item</span>
                        <input class="form-control" type="tel">
                      </div>
                      <div>
                        <span class="text-danger">*</span>
                        <span class="form-label">Nombre</span>
                        <input class="form-control" required>
                        <p class="error" hidden>El nombre es obligatorio</p>
                      </div>
                      <div>
                        <span class="text-danger">*</span>
                        <span class="form-label">Correo</span>
                        <input class="form-control" type="email" required>
                        <p class="error" hidden>El correo es obligatorio</p>
                      </div>
                    </div>
                    <div class="d-flex flex-column row-gap-4">
                      <div>
                        <span class="form-label">Departamento</span>
                        <select class="form-select">
                          <option> Seleccione</option>
                          <option> ABARROTES </option><!---->
                          <option> ARTICULOS DE BELLEZA </option><!---->
                          <option> AUTOMOTRIZ </option><!---->
                          <option> CARNES </option><!---->
                          <option> CENTRO LLANTERO </option><!---->
                          <option> CIGARROS/TABACO </option><!---->
                          <option> COMIDA </option><!---->
                          <option> CONGELADOS </option><!---->
                          <option> DELICATESSEN </option><!---->
                          <option> DEPORTES </option><!---->
                          <option> DOMESTICOS </option><!---->
                          <option> DULCES </option><!---->
                          <option> ENSERES MENORES </option><!---->
                          <option> EQUIPAJE </option><!---->
                          <option> FARMACIA </option><!---->
                          <option> FOTOGRAFIA </option><!---->
                          <option> FRUTAS Y VERDURAS </option><!---->
                          <option> FUENTE SODAS </option><!---->
                          <option> GASOLINE </option><!---->
                          <option> AYUDA AUDITIVA </option><!---->
                          <option> HERRAMIENTAS </option><!---->
                          <option> HOGAR(MEJORAS) </option><!---->
                          <option> JARDINERIA </option><!---->
                          <option> JOYERIA </option><!---->
                          <option> JUGUETES TEMPORADA </option><!---->
                          <option> KIOSKS </option><!---->
                          <option> LIBROS/CD/VIDEOS </option><!---->
                          <option> MEMBRESIAS </option><!---->
                          <option> MUEBLES </option><!---->
                          <option> NON-FOODS TICKETS </option><!---->
                          <option> OFICINA </option><!---->
                          <option> OPTICA </option><!---->
                          <option> PANADERIA </option><!---->
                          <option> ROPA DAMA </option><!---->
                          <option> ROPA HOMBRE </option><!---->
                          <option> SERVICE DELI </option><!---->
                          <option> EVENTOS ESPECIALES </option><!---->
                          <option> VINOS Y LICORES </option><!----><!----><!----><!---->
                        </select>
                      </div>
                      <div>
                        <span class="form-label">Número de membresía</span>
                        <input class="form-control" type="tel">
                      </div>
                      <div>
                        <span class="text-danger">*</span>
                        <span class="form-label">Apellidos</span>
                        <input class="form-control" required>
                        <p class="error" hidden>El apellido es obligatorio</p>
                      </div>
                      <div>
                        <span class="text-danger">*</span>
                        <span class="form-label">Teléfono</span>
                        <input class="form-control" type="tel"required>
                        <p class="error" hidden>El teléfono es obligatorio</p>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <p class="form-title">Ingrese su comentario</p>
              <div class="row">
                <p class="col-2 text-end">
                  <span class="text-danger">*</span>
                  Mensaje
                </p>
                <div id="comentario" class="col-10 d-flex flex-column">
                  <textarea rows="4" maxlength="999" class="form-control rounded-3 border-dark-subtle" required placeholder="Por favor ingrese su comentario"></textarea>
                  <sub class="text-end text-gray mt-2">Quedan 999 caracteres</sub>
                  <p class="error" hidden>El comentario es obligatorio</p>
                </div>
              </div>
              <div class="w-50">
                <p class="d-block shadow fs-7 px-4 py-3 rounded" style="background-color: #fff3cd; color: #856404;">
                  (<span class="text-danger">*</span>) Datos obligatorios
                </p>
              </div>
            </div>
            <div id="form-footer" class="d-flex flex-column">
              <div class="form-check">
                <input class="form-check-input" type="checkbox" id="check1" required>
                <div>
                  <label class="form-check-label" for="check1">He leído y acepto el contrato de Almacenamiento de información</label>
                  <p class="error" hidden>Es necesario que lea y acepte el contrato</p>
                </div>
              </div>
              <div class="d-flex justify-content-center column-gap-4 mt-3">
                <button id="reset-btn" class="btn" type="reset">
                  Borrar Todo
                </button>
                <button class="btn" type="submit">
                  Enviar Datos
                </button>
              </div>
            </div>
          </form>

        </div>
        <div class="d-none d-lg-block col-2 text-center">
          <img class="img-fluid" src="img/contactenos.png">
          <p class="fw-bold fs-7" style="color: #103b84">
            Tenga la seguridad de que sus sugerencias serán tomadas en cuenta para brindarle el mejor servicio
          </p>
        </div>
      </div>
    </div>
  </div>
  
  <jsp:include page="footer.jsp"/>
  <script src="scripts/form.js"></script>
</body>
</html>