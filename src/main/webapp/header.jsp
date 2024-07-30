<%@page pageEncoding="UTF-8" import="org.json.JSONArray,org.json.JSONObject,org.dbp.repository.CategoriasRepository,org.dbp.security.Security"%>
<%
    if (session.getAttribute("categorias") == null)
        session
                .setAttribute("categorias", new CategoriasRepository().get_categorias().getJSONArray("categorias"));

%>

<header class="container-fluid p-0">
    <nav class="container-xxl navbar px-3 column-gap-4">
        <a href="/">
            <img src="img/logo3.png" width="250">
        </a>
        <form class="flex-fill">
            <div class="input-group">
                <input class="form-control" placeholder="Buscar" id="search" oninput="search_behaviour(this)">
                <button class="input-group-text p-0 px-2 ci ci-close text-blue" id="search-clear" type="button"
                        onclick="search_delete(this)" hidden></button>
                <button class="input-group-text p-0 px-2 ci ci-search text-blue" type="submit"></button>
            </div>
        </form>
        <table id="menu-nav">
            <tbody>
            <tr>
                <td valign="bottom">
                    <a class="d-flex flex-column align-items-center">
                        <img src="img/login.svg" width="28">
                        <%
                            Cookie usuario = Security.getCookieUsuario(request);
                            if(usuario != null && !usuario.getValue().isEmpty()) {%>
                            <a href="/micuenta.jsp" style="font-size: small;">
                                Mi Cuenta
                            </a>    
                            <% } else {%>
                            <a href="/login.jsp" style="font-size: small;">Iniciar Sesión</a>    
                            <%}%>
                    </a>
                </td>
                <td valign="bottom">
                    <a class="d-flex flex-column align-items-center position-relative">
                        <span class="ci ci-carrito position-absolute" style="top: -27px;"></span>
                        <p style="font-size: small;">Carrito</p>
                    </a>
                </td>
            </tr>
            </tbody>
        </table>
    </nav>
    <div class="bg-blue">
        <div class="container-xxl d-flex py-2 px-3">
            <div class="dropdown" id="menu-selector">
                <a class="p-2" href="#" role="button" data-bs-toggle="dropdown" data-bs-auto-close="false">
                    <span class="ci ci-shop"></span>
                    <b>Shop</b>
                </a>
                <div class="dropdown-menu">
                    <div class="d-flex">
                        <ul class="ps-0 m-0">
                            <%
                                for (Object _obj0 : (JSONArray) session.getAttribute("categorias")) {
                                    JSONObject obj0 = (JSONObject) _obj0;
                            %>
                            <!-- Plantilla para menus -->
                            <li class="dropdown-item">
                                <a href="productos.jsp?categoria=<%=obj0.getString("nombre")%>">
                                    <%= obj0.getString("nombre") %>
                                    <span class="ci ci-next"></span>
                                </a>
                                <div class="row menu-categories" hidden>
                                    <%
                                        for (Object _obj1 : obj0.getJSONArray("subcategorias")) {
                                            JSONObject obj1 = (JSONObject) _obj1;
                                    %>
                                    <div class="col-3">
                                        <a href="productos.jsp?categoria=<%=obj0.getString("nombre")%>&subcategoria=<%=obj1.getString("nombre")%>"><%=obj1.getString("nombre")%>
                                        </a>
                                        <ul>
                                            <%
                                                for (Object _obj2 : obj1.getJSONArray("subcategorias")) {
                                                    JSONObject obj2 = (JSONObject) _obj2;
                                            %>
                                            <li><a href="productos.jsp?categoria=<%=obj0.getString("nombre")%>&subcategoria=<%=obj1.getString("nombre")%>&&subsubcategoria=<%=obj2.getString("nombre")%>"><%=obj2.getString("nombre")%>
                                            </a></li>
                                            <%}%>
                                        </ul>
                                    </div>
                                    <%}%>
                                </div>
                            </li>
                            <%}%>
                        </ul>
                        <div id="subcategories">
                        </div>
                    </div>
                </div>
            </div>
            <div class="flex-fill">
                <ul class="nav text-white column-gap-4 justify-content-center">
<%--                    <li><a>Hola</a></li>--%>
<%--                    <li>Hola</li>--%>
<%--                    <li>Hola</li>--%>
                </ul>
            </div>
        </div>
    </div>
</header>