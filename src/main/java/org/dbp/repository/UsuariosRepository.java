package org.dbp.repository;

import org.dbp.entity.Usuario;

import java.sql.*;

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

            System.out.println(rs.getString("id"));
            return new Usuario(
                    rs.getLong("id"),
                    rs.getString("email"),
                    rs.getString("password"),
                    rs.getLong("metodo_pago"));
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
