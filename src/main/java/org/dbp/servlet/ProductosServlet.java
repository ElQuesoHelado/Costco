package org.dbp.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.sql.*;

import java.io.IOException;
import java.util.ArrayList;

import org.dbp.entity.Producto;
import org.dbp.repository.ProductosRepository;

@WebServlet("/productos")
public class ProductosServlet extends HttpServlet {

    ProductosRepository productosRepository = new ProductosRepository();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String categoria = request.getParameter("categoria");
        String subcategoria = request.getParameter("subcategoria");
        String subsubcategoria = request.getParameter("subsubcategoria");
        log(categoria);
        log(subcategoria);
        log(subsubcategoria);
        ArrayList<Producto> resultado = productosRepository.get_productos(categoria, subcategoria, subsubcategoria);

        request.setAttribute("productos", resultado);
        request.getRequestDispatcher("/productos.jsp").forward(request, response);
    }
}
