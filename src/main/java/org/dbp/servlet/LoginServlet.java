package org.dbp.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import org.dbp.entity.Usuario;
import org.dbp.repository.UsuariosRepository;

import java.io.IOException;
import java.util.Objects;

import static org.dbp.security.Security.getCookieUsuario;

/*
 * Todo el proceso de login y authentificacion lo hacemos en base a una cookie
 * Es inseguro y penetrable
 */
@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    UsuariosRepository usuariosRepository = new UsuariosRepository();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, IOException {
        Cookie cookieUsuario = getCookieUsuario(request);
        if (!Objects.isNull(cookieUsuario)) {
            response.sendRedirect("/");
            return;
        }
        request.getRequestDispatcher("/login.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, IOException {
        Usuario usuario = usuariosRepository.getUsuario(request.getParameter("username"));

        Cookie cookieUsuario = getCookieUsuario(request);

        if (cookieUsuario != null) {
//            log("Ya esta logeado");
            response.sendRedirect("/micuenta");
            return;
        }

        //Usuario no existente, o contrasenia incorrecta
        // TODO: ?? Como se redirecciona?
        //  1. con ajax???
        //  2. retorna login.jsp de nuevo con parametro get error????
        if (usuario == null || !Objects.equals(usuario.getPassword(), request.getParameter("password"))) {
//            response.setStatus(HttpServletResponse.SC_FORBIDDEN);
            response.sendRedirect("/login?error=Usuario invalido");
            return;
        }

        log("Usuario encontrado: " + usuario.getId() + " " + usuario.getEmail());
        Cookie loginCookie = new Cookie("usuario", usuario.getEmail());
        loginCookie.setMaxAge(60*5);
        response.addCookie(loginCookie);

        response.sendRedirect("/micuenta");
    }

}
