package org.dbp.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.dbp.entity.Producto;
import org.dbp.repository.CategoriasRepository;
import org.dbp.repository.ProductosRepository;
import org.json.JSONArray;
import org.json.JSONObject;

import java.io.IOException;
import java.util.ArrayList;

@WebServlet("/productos")
public class ProductosServlet extends HttpServlet {

    ProductosRepository productosRepository = new ProductosRepository();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String categoria = request.getParameter("categoria");
        String subcategoria = request.getParameter("subcategoria");
        String subsubcategoria = request.getParameter("subsubcategoria");

        ArrayList<Producto> productos = productosRepository.get_productos(categoria, subcategoria, subsubcategoria);
        JSONArray resultado = new JSONArray();
        for (Producto producto : productos) {
            JSONObject productoJSON = new JSONObject();
            productoJSON.put("codigo", producto.getCodigo());
            productoJSON.put("nombre", producto.getNombre());
            productoJSON.put("categoria", producto.getCategoria());
            productoJSON.put("subcategoria", producto.getSubcategoria());
            productoJSON.put("subsubcategoria", producto.getSubsubcategoria());
            productoJSON.put("marca", producto.getMarca());
            productoJSON.put("descripcion", producto.getDescripcion());
            productoJSON.put("peso", producto.getPeso());
            productoJSON.put("precio", producto.getPrecio());
            productoJSON.put("imgpath1", producto.getImgpath1());
            productoJSON.put("imgpath2", producto.getImgpath2());
            productoJSON.put("imgpath3", producto.getImgpath3());

            resultado.put(productoJSON);
//            log(producto.toString());
        }

        response.setHeader("Access-Control-Allow-Origin", "http://localhost:8080");
        response.setContentType("application/json");
//        request.setAttribute("productos", resultado);
//        request.getRequestDispatcher("/productos.jsp").forward(request, response);
        response.setCharacterEncoding("UTF-8");
        response.getWriter().write(resultado.toString());
    }
}
