<%@ page import="org.dbp.entity.Producto" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Costco</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
<header>
    <nav>
        <ul>
            <li><a href="${pageContext.request.contextPath}/">Inicio</a></li>
            <li><a href="${pageContext.request.contextPath}/productos">Productos</a></li>
            <li><a href="#">Ofertas</a></li>
            <li><a href="#">Mi Cuenta</a></li>
            <li><a href="#">Carrito</a></li>
            <li><a href="#">Contacto</a></li>
        </ul>
    </nav>
</header>

<main>
    <section class="hero">
        <h1>Bienvenidos a los Pollos Hermanos</h1>
        <p>Las mejores ofertas en productos de calidad.</p>
        <a href="#" class="cta">Ver Ofertas</a>
    </section>

    <section class="products">
        <h2>Nuestros Productos</h2>
        <div class="product-list">
            <div class="product">
                <h3>Producto 1</h3>
                <p>Descripcion</p>
                <span class="price">$10.00</span>
                <a href="#" class="add-to-cart">Agregar al Carrito</a>
            </div>
            <div class="product">
                <h3>Producto 2</h3>
                <p>Descripcion</p>
                <span class="price">$20.00</span>
                <a href="#" class="add-to-cart">Agregar al Carrito</a>
            </div>
        </div>
    </section>
    <% ArrayList<Producto> productos = (ArrayList<Producto>) request.getAttribute("productos");
        out.println(productos);
        if (productos != null) {
            for (Producto producto : productos) {
                out.println(producto + "\n");
                out.println();
            }
        } else {
            out.println("Nulo");
        }
    %>

</main>



<footer>
    <p>&copy; 2024 Costco. Todos los derechos reservados.</p>
</footer>

<script src="scripts.js"></script>
</body>
</html>