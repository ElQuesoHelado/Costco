package org.dbp.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.dbp.entity.Usuario;
import org.dbp.repository.UsuariosRepository;
import org.json.JSONArray;

import java.io.IOException;
import java.util.ArrayList;

import static org.dbp.security.Security.getCookieUsuario;

@WebServlet("/address")
public class AddressServlet extends HttpServlet {

    UsuariosRepository usuarioRepository = new UsuariosRepository();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Cookie cookieUsuario = getCookieUsuario(request);

        if (cookieUsuario == null) {
            response.sendRedirect("/login");
            return;
        }

        Usuario usuario = usuarioRepository.getUsuario(cookieUsuario.getValue());
        ArrayList<String> direcciones = usuarioRepository.getDirecciones(usuario.getId());

//        log(Long.toString(usuario.getId()));
        log(direcciones.toString());
//        log(usuario.getPassword());

        request.setAttribute("direcciones", direcciones);
        request.getRequestDispatcher("/WEB-INF/address.jsp").forward(request, response);
    }
}
