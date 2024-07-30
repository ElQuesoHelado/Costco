<%@page pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome to Costco</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link href="styles/default.css" rel="stylesheet">
    <link href="styles/costco-icons.css" rel="stylesheet">
    <style>
        .product-details {
            border: 1px solid #dee2e6;
            border-radius: 0.25rem;
            padding: 1.5rem;
            background-color: #f8f9fa;
            margin-top: 1rem;
        }

        .product-details h3 {
            color: #343a40;
            margin-bottom: 0.5rem;
        }

        .product-details h4, .product-details h5 {
            color: #6c757d;
            margin-bottom: 0.5rem;
        }

        .product-details p {
            color: #495057;
        }
    </style>

</head>
<body class="default-theme">
<jsp:include page="header.jsp"/>

<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<script src="https://code.jquery.com/ui/1.13.3/jquery-ui.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="scripts/productos.js"></script>

<div class="container-xxl my-3">
    <div class="row">
        <nav class="col-12 col-md-3 col-lg-2 col-xl-2 col-xxl-2 d-md-block bg-light sidebar" id="sidebarMenu">
            <div class="sidebar-sticky pt-3">
                <h5>Filtrar por</h5>
                <div class="mb-3">
                    <label for="filter-price">Precio</label>
                    <input type="text" id="filter-price" class="form-control" placeholder="Ej: 10-50">
                </div>
                <div class="mb-3">
                    <label for="filter-brand">Marca</label>
                    <input type="text" id="filter-brand" class="form-control" placeholder="Ej: Samsung">
                </div>
                <div class="mb-3">
                    <label for="filter-weight">Peso</label>
                    <input type="text" id="filter-weight" class="form-control" placeholder="Ej: 1-5 kg">
                </div>
                <button id="apply-filters" class="btn btn-primary">Aplicar Filtros</button>
            </div>
        </nav>
        <div class="col">
            <div class="row" id="product-list"></div>
        </div>

    </div>
</div>

<div class="modal fade" id="detalles" tabindex="-1" aria-labelledby="detallesLabel" aria-hidden="true">
    <div class="modal-dialog modal-xl">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="exampleModalLabel">Producto</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-12 col-md-6 cl-lg-6 col-xl-6">
                        <div id="carouselExample" class="carousel slide" data-bs-ride="carousel">
                            <div class="carousel-inner">
                                <div class="carousel-item active">
                                    <img id="prodimg1" class="d-block w-100" src="">
                                </div>
                                <div class="carousel-item">
                                    <img id="prodimg2" class="d-block w-100" src="">
                                </div>
                                <div class="carousel-item">
                                    <img id="prodimg3" class="d-block w-100" src="">
                                </div>
                            </div>
                            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExample"
                                    data-bs-slide="prev">
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                <span class="visually-hidden">Previous</span>
                            </button>
                            <button class="carousel-control-next" type="button" data-bs-target="#carouselExample"
                                    data-bs-slide="next">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                <span class="visually-hidden">Next</span>
                            </button>
                        </div>

                    </div>
                    <div class="col-6 product-details">
                        <h3 id="nombre"></h3>
                        <h5 id="codigo"></h5>
                        <h4 id="precio"></h4>
                        <h5 id="peso"></h5>
                        <h5 id="marca"></h5>
                        <p id="descripcion"></p>
                        <div class="d-flex justify-content-between mt-3">
                            <button id="add-to-cart" class="btn btn-primary">Añadir al carrito</button>
                            <button id="add-to-list" class="btn btn-secondary">Añadir a la lista</button>
                        </div>
                    </div>
                </div>
            </div>
            <%--            <div class="modal-footer">--%>
            <%--                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>--%>
            <%--                <button type="button" class="btn btn-primary">Save changes</button>--%>
            <%--            </div>--%>
        </div>
    </div>
</div>
</div>

<script>
    //Conseguimos parametros get
    const queryString = window.location.search;
    const urlParams = new URLSearchParams(queryString);
    let mapa = new Map();


    console.log(queryString);
    console.log(urlParams.get('subcategoria'));
    $(document).ready(function () {
        let allProducts = [];

        function displayProducts(products) {
            let galleryHtml = '';
            products.forEach(product => {
                console.log(product);
                galleryHtml += `
                        <div class="col col-md-4 col-lg-4 col-xl-3 col-xxl-3 mb-4">
                                <div class="card" id="` + product.codigo + `" onclick="mostrar(this)">
                                    <img src="img/productos/` + product.imgpath1 + `" class="card-img-top" alt="` + product.nombre + `">
                                    <div class="card-body">
                                        <h4 class="card-text"><strong>$` + product.precio + `</strong></h4>
                                        <h5 class="card-title text-primary">` + product.nombre + `</h5>
                                        <p class="card-text">` + product.descripcion + `</p>
                                    </div>
                                </div>
                            </div>
                        `;
            });
            $('#product-list').html(galleryHtml);
        }

        function filterProducts() {
            const priceRange = $('#filter-price').val().split('-').map(Number);
            const brand = $('#filter-brand').val().toLowerCase();
            const weightRange = $('#filter-weight').val().split('-').map(Number);

            const filteredProducts = allProducts.filter(product => {
                const matchesPrice = !priceRange[0] || (product.precio >= priceRange[0] && (priceRange[1] ? product.precio <= priceRange[1] : true));
                const matchesBrand = !brand || product.marca.toLowerCase().includes(brand);
                const matchesWeight = !weightRange[0] || (product.peso >= weightRange[0] && (weightRange[1] ? product.peso <= weightRange[1] : true));
                return matchesPrice && matchesBrand && matchesWeight;
            });

            displayProducts(filteredProducts);
        }

        function loadProducts() {
            $.ajax({
                url: '/productos',
                data: {
                    "categoria": urlParams.get("categoria"),
                    "subcategoria": urlParams.get("subcategoria"),
                    "subsubcategoria": urlParams.get("subsubcategoria")
                },
                crossDomain: true,
                method: 'GET',
                dataType: 'json',
                // cache: true,
                success: function (products) {
                    // console.log(products);
                    products.forEach(product => {
                        mapa.set(product.codigo, product);
                    });
                    allProducts = products;
                    // console.log(allProducts);
                    displayProducts(allProducts);
                },
                error: function () {
                    $('#product-list').html('<p class="text-center text-danger">Error al cargar los productos.</p>');
                }
            });
        }

        $('#apply-filters').click(function () {
            filterProducts();
        });

        loadProducts();


    });
</script>

<jsp:include page="footer.jsp"/>
</body>
</html>