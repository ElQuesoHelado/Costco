package org.dbp.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

import org.dbp.repository.CategoriasRepository;

@WebServlet("")
public class HomeServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException { 
        request.getSession()
            .setAttribute(
                "categorias",
                new CategoriasRepository().get_categorias().getJSONArray("categorias"));

        request.getRequestDispatcher("/index.jsp").forward(request,response);
    }
}