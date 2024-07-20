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
                    rs.getLong  ("id"),
                    rs.getString("email"),
                    rs.getString("password"),
                    rs.getLong("metodo_pago"));
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
