<%@page pageEncoding="UTF-8" import="org.json.JSONArray,org.json.JSONObject" %>

<!DOCTYPE html>
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Welcome to Costly</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
  <link href="styles/default.css" rel="stylesheet">
  <link href="styles/costco-icons.css" rel="stylesheet">
  <style>
    hr {
      border: 0px;
      background: radial-gradient(circle, black 0%, black 50%, transparent 100%);
      height: 1px;
    }

    #main-container a {
      text-decoration: none;
      color: #0060a9;
      font-size: small;
    }

    #main-container a:hover {
      text-decoration: underline;
      color: red;
    }
  </style>
</head>
<body class="default-theme">
  <jsp:include page="header.jsp"/>

  <div class="container-xxl my-3">
    <!-- URL -->
    <ul id="url" class="d-flex text-gray fs-7">
      <li><a class="url-link" href="/">Inicio</a></li>
      <li>Mapa del Sitio</li>
    </ul>

    <div class="container">
      <h1>Mapa del Sitio</h1>
      <h4>Nuestro catálogo</h4> 
      <div id="main-container" class="d-flex flex-column row-gap-4">
        <%
        for(Object _obj0 : (JSONArray)session.getAttribute("categorias")) {
          JSONObject obj0 = (JSONObject)_obj0;
        %>
        <div class="mt-3">
          <a><strong><%= obj0.getString("nombre").toUpperCase() %></strong></a>
          <hr>
          <div class="row row-cols-4">
            <%
              for(Object _obj1 : obj0.getJSONArray("subcategorias")) {
              JSONObject obj1 = (JSONObject)_obj1;
            %>
            <div class="d-flex flex-column col">
              <a><%=obj1.getString("nombre")%></a>
              <%for(Object _obj2 : obj1.getJSONArray("subcategorias")) {
                JSONObject obj2 = (JSONObject)_obj2;
              %>
              <a href="#"><%=obj2.getString("nombre")%></a>
              <%}%>
            </div>
            <%}%>
          </div>
        </div>
        <%}%>
      </div>
    </div>
  </div>
  
  <jsp:include page="footer.jsp"/>
</body>
</html>