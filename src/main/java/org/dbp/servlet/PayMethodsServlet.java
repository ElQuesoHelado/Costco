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

import static org.dbp.security.Security.getCookieUsuario;

@WebServlet("/pay_methods")
public class PayMethodsServlet extends HttpServlet {

    UsuariosRepository usuarioRepository = new UsuariosRepository();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Cookie cookieUsuario = getCookieUsuario(request);

        if (cookieUsuario == null) {
            response.sendRedirect("/login");
            return;
        }

        Usuario usuario = usuarioRepository.getUsuario(cookieUsuario.getValue());
    
//        log(Long.toString(usuario.getId()));
//        log(usuario.getEmail());
//        log(usuario.getPassword());

        request.setAttribute("metodo_pago", usuario.getMetodo_pago());
        request.getRequestDispatcher("/WEB-INF/pay_methods.jsp").forward(request, response);
    }
}
