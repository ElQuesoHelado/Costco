package org.dbp.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.dbp.entity.Producto;
import org.dbp.repository.CategoriasRepository;
import org.dbp.repository.ProductosRepository;
import org.json.JSONObject;

import java.io.IOException;
import java.util.ArrayList;

@WebServlet("/categorias")
public class CategoriasServlet extends HttpServlet {

    //    ProductosRepository productosRepository = new ProductosRepository();
    CategoriasRepository categoriasRepository = new CategoriasRepository();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String categoria = request.getParameter("categoria");
        String subcategoria = request.getParameter("subcategoria");
        String subsubcategoria = request.getParameter("subsubcategoria");
        log(categoria);
        log(subcategoria);
        log(subsubcategoria);

        JSONObject resultado = categoriasRepository.get_categorias();

        response.setContentType("application/json");
//        request.setAttribute("productos", resultado);
//        request.getRequestDispatcher("/productos.jsp").forward(request, response);
        response.setCharacterEncoding("UTF-8");
        response.getWriter().write(resultado.toString());
    }
}
