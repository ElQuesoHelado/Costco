package org.dbp.repository;

import org.dbp.entity.Producto;

import java.util.ArrayList;

import java.sql.*;

//TODO: Por ahora se realiza una nueva conexion por cada request,
//es lento y con muchos problemas
public class ProductosRepository extends Repository {

    public ArrayList<Producto> get_productos(String categoria, String subcategoria, String subsubcategoria) {
//        System.out.println(categoria + "|" + subcategoria + "|" + subsubcategoria);
//        System.out.println(subcategoria.isEmpty());
//        System.out.println(subsubcategoria);

        Connection conn;
        try {
            String sentencia = "SELECT * FROM producto WHERE categoria = ?";
            if (subcategoria != null && !subcategoria.isEmpty()) {
                sentencia += " AND subcategoria = ?";
            }

            if (subsubcategoria != null && !subsubcategoria.isEmpty()) {
                sentencia += " AND subsubcategoria = ?";

            }

            conn = DriverManager.getConnection(url, user, password);
            PreparedStatement st = conn.prepareStatement(sentencia);

            st.setString(1, categoria);
            if (subcategoria != null && !subcategoria.isEmpty())
                st.setString(2, subcategoria);
            if (subsubcategoria != null && !subsubcategoria.isEmpty())
                st.setString(3, subsubcategoria);

//            log(st);
            ResultSet rs = st.executeQuery();


            ArrayList<Producto> resultado = new ArrayList<>();
            while (rs.next()) {
                resultado.add(new Producto(Integer.parseInt(rs.getString("codigo")),
                                rs.getString("nombre"),
                                rs.getString("categoria"),
                                rs.getString("subcategoria"),
                                rs.getString("subsubcategoria"),
                                rs.getString("marca"),
                                rs.getString("descripcion"),
                                rs.getString("peso"),
                                Float.parseFloat(rs.getString("precio")),
                                rs.getString("imgpath1"),
                                rs.getString("imgpath2"),
                                rs.getString("imgpath3")
                        )
                );
            }
            return resultado;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
//        request.setAttribute("productos", resultado);
//        request.getRequestDispatcher("index.jsp").forward(request, response);
    }
}
