package org.dbp.repository;

import org.dbp.entity.Usuario;
import org.json.JSONArray;
import org.json.JSONObject;

import java.sql.*;
import java.util.ArrayList;

public class UsuariosRepository extends Repository {

    public Usuario getUsuario(String email) {
        Connection conn;
        try {

            conn = DriverManager.getConnection(url, user, password);
            PreparedStatement st = conn.prepareStatement("SELECT * FROM usuario WHERE email = ?");

            st.setString(1, email);

//            log(st);

            ResultSet rs = st.executeQuery();


            //Usuario no existente con ese emails
            if (!rs.next())
                return null;

//            System.out.println(rs.getString("id"));
            return new Usuario(
                    rs.getLong("id"),
                    rs.getString("email"),
                    rs.getString("password"),
                    rs.getLong("metodo_pago"));
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public ArrayList<String> getDirecciones(Long id) {
        Connection conn;
        try {

            conn = DriverManager.getConnection(url, user, password);
            PreparedStatement st = conn.prepareStatement("SELECT * FROM get_direcciones(?)");

            st.setLong(1, id);

//            log(st);

            ResultSet rs = st.executeQuery();

            ArrayList<String> resultado = new ArrayList<>();

            while (rs.next()) {
                resultado.add(rs.getString("direccion"));
            }

            return resultado;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public JSONArray getOrdenes(Long id) {
        Connection conn;
        try {

            conn = DriverManager.getConnection(url, user, password);
            PreparedStatement st = conn.prepareStatement("SELECT * FROM get_ordenes(?)");

            st.setLong(1, id);

//            log(st);

            ResultSet rs = st.executeQuery();

            JSONArray resultado = new JSONArray();

            while (rs.next()) {
                JSONObject orden = new JSONObject();
                orden.put("numero_orden", rs.getLong("numero_orden"));
                orden.put("direccion", rs.getString("direccion"));
                orden.put("fecha_envio", rs.getString("fecha_envio"));
                orden.put("fecha_entrega", rs.getString("fecha_entrega"));
                orden.put("estado", rs.getString("estado"));
                orden.put("direccion", rs.getString("direccion"));
                orden.put("codigo_producto", rs.getInt("codigo_producto"));
                orden.put("producto_nombre", rs.getString("producto_nombre"));
                orden.put("cantidad", rs.getInt("cantidad"));
                orden.put("precio", rs.getFloat("precio"));
                orden.put("total", rs.getFloat("total"));
                orden.put("imgpath1", rs.getString("imgpath1"));
                resultado.put(orden);
//                System.out.println(orden.toString());
//                resultado.accumulate(Integer.toString(rs.getInt("numero_orden")), orden);
            }

//            JSONObject resultado = new JSONObject();
//
//            while (rs.next()) {
//                JSONObject orden = new JSONObject();
//                orden.put("numero_orden", rs.getLong("numero_orden"));
//                orden.put("direccion", rs.getString("direccion"));
//                orden.put("fecha_envio", rs.getString("fecha_envio"));
//                orden.put("fecha_entrega", rs.getString("fecha_entrega"));
//                orden.put("estado", rs.getString("estado"));
//                orden.put("direccion", rs.getString("direccion"));
//                orden.put("codigo_producto", rs.getInt("codigo_producto"));
//                orden.put("producto_nombre", rs.getString("producto_nombre"));
//                orden.put("cantidad", rs.getInt("cantidad"));
//                orden.put("precio", rs.getFloat("precio"));
//                orden.put("total", rs.getFloat("total"));
//                orden.put("imgpath1", rs.getString("imgpath1"));
//
//                resultado.accumulate(Integer.toString(rs.getInt("numero_orden")), orden);
//            }

            return resultado;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public JSONArray getList(Long id) {
        Connection conn;
        try {

            conn = DriverManager.getConnection(url, user, password);
            PreparedStatement st = conn.prepareStatement("SELECT * FROM get_favoritos(?)");

            st.setLong(1, id);

//            log(st);

            ResultSet rs = st.executeQuery();

            JSONArray resultado = new JSONArray();

            while (rs.next()) {
                JSONObject orden = new JSONObject();
                orden.put("codigo_producto", rs.getInt("codigo_producto"));
                orden.put("producto_nombre", rs.getString("producto_nombre"));
                orden.put("imgpath1", rs.getString("imgpath1"));
                resultado.put(orden);
//                System.out.println(orden.toString());
//                resultado.accumulate(Integer.toString(rs.getInt("numero_orden")), orden);
            }

            return resultado;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }


    public void registrarUsuario(String email, String password, Long metodo_pago) {
        Connection conn;
        try {
            conn = DriverManager.getConnection(this.url, this.user, this.password);
            PreparedStatement st =
                    conn.prepareStatement(
                            "INSERT INTO usuario (email, password, metodo_pago) VALUES (?, ?, ?)");
            st.setString(1, email);
            st.setString(2, password);
            if (metodo_pago == null)
                st.setNull(3, Types.BIGINT);
            else
                st.setLong(3, metodo_pago);

            st.execute();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
