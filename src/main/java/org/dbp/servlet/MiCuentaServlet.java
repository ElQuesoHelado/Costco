package org.dbp.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import org.dbp.entity.Usuario;
import org.dbp.repository.UsuariosRepository;

import java.io.IOException;

import static org.dbp.security.Security.getCookieUsuario;

@WebServlet("/micuenta")
public class MiCuentaServlet extends HttpServlet {

    UsuariosRepository usuarioRepository = new UsuariosRepository();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Cookie cookieUsuario = getCookieUsuario(request);

        if (cookieUsuario == null) {
            response.sendRedirect("/login");
            log("Sin cookie");
            return;
        }

//        Usuario usuario = usuarioRepository.getUsuario(cookieUsuario.getValue());

//        request.setAttribute("usuario", usuario);
        request.getRequestDispatcher("/WEB-INF/micuenta.jsp").forward(request, response);
    }
}
