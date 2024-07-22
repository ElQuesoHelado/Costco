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
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, IOException {
        Cookie cookieUsuario = getCookieUsuario(request);

        if (cookieUsuario != null) {
//            log("Ya esta logeado");
            response.sendRedirect("/");
            return;
        }

        //TODO: Agregar validacion de mail
        //***

        String username = request.getParameter("username");
        String password = request.getParameter("password");
        Long metodo_pago;
        try {
            metodo_pago = Long.parseLong(request.getParameter("metodo_pago"));
        } catch (NumberFormatException e) {
            metodo_pago = null;
        }

        try {
            usuariosRepository.registrarUsuario(
                    request.getParameter("username"),
                    request.getParameter("password"),
                    metodo_pago);
        } catch (Exception e) {
            //Enviar a un error?????
            response.sendRedirect("/");
            return;
        }

        response.sendRedirect("/micuenta");
    }

}
