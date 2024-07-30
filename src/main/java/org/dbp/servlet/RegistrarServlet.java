package org.dbp.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.dbp.entity.Usuario;
import org.dbp.repository.UsuariosRepository;

import java.io.IOException;
import java.util.Objects;

import static org.dbp.security.Security.getCookieUsuario;

/*
 * Todo el proceso de login y authentificacion lo hacemos en base a una cookie
 * Es inseguro y penetrable
 */
@WebServlet("/registrar")
public class RegistrarServlet extends HttpServlet {
    UsuariosRepository usuariosRepository = new UsuariosRepository();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, IOException {
        Cookie cookieUsuario = getCookieUsuario(request);
        if (!Objects.isNull(cookieUsuario)) {
            response.sendRedirect("/");
            return;
        }
        request.getRequestDispatcher("/registrar.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("username");
        usuariosRepository.registrarUsuario(username, req.getParameter("password"), null);
        
        Cookie loginCookie = new Cookie("usuario", username);
        loginCookie.setMaxAge(60*5);
        resp.addCookie(loginCookie);
        resp.sendRedirect("/");
    }
}
