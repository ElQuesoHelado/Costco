package org.dbp.repository;

import org.dbp.entity.Producto;

import java.sql.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;

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

class Node {
    public String val;
    Node parent;
    ArrayList<Node> leafs = new ArrayList<>();

    Node(String val, Node parent) {
        this.val = val;
        this.parent = parent;
    }

    void addLeaf(Node leaf) {
        leafs.add(leaf);
    }
}

class Tree {
    //    Node root = new Node("root");
    HashMap<String, Node> map = new HashMap<>();

    public void add(String parentVal, String leafVal) {
//        map.putIfAbsent(root, new )
//        Node parent = find(parentVal);

        //Añadimos padre
        if (!map.containsKey(parentVal)) {
            map.put(parentVal, new Node(parentVal, map.get("root")));
            map.get("root").addLeaf(map.get(parentVal));
        }

        if (!map.containsKey(leafVal) || (!Objects.equals(map.get(leafVal).parent.val, parentVal))) {
            map.put(leafVal, new Node(leafVal, map.get(parentVal)));
            map.get(parentVal).addLeaf(map.get(leafVal));
        }


    }

    JSONObject toJsonRec(Node node) {
        JSONObject root = new JSONObject();
        JSONArray arr = new JSONArray();
        for (Node leaf : map.get(node.val).leafs) {
            arr.put(toJsonRec(leaf));
        }

        root.put("nombre", node.val);
        root.put("subcategorias", arr);

        return root;
    }

    JSONObject toJson() {
        JSONArray arr = new JSONArray();
        for (Node node : map.get("root").leafs) {
            arr.put(toJsonRec(node));
        }
        JSONObject root = new JSONObject();
        root.put("categorias", arr);
        return root;
    }

    Tree() {
        map.put("root", new Node("root", null));
    }

}

//TODO: Por ahora se realiza una nueva conexion por cada request,
//es lento y con muchos problemas
public class CategoriasRepository extends Repository {

    public JSONObject get_categorias() {
        Connection conn;
        try {
            String sentencia = "SELECT DISTINCT categoria, subcategoria, subsubcategoria FROM producto ORDER BY categoria;";

            conn = DriverManager.getConnection(url, user, password);
            PreparedStatement st = conn.prepareStatement(sentencia);

            ResultSet rs = st.executeQuery();

//            ArrayList<Producto> resultado = new ArrayList<>();
            JSONObject root = new JSONObject();
            JSONArray categorias = new JSONArray();
            JSONArray subcategorias = new JSONArray();
            JSONArray subsubcategorias = new JSONArray();

            Map<String, JSONObject> capa1 = new HashMap<>();
            Map<String, JSONObject> capa2 = new HashMap<>();

            Tree arbol = new Tree();

            while (rs.next()) {

                String categoria = rs.getString("categoria");
                String subcategoria = rs.getString("subcategoria");
                String subsubcategoria = rs.getString("subsubcategoria");

                arbol.add(categoria, subcategoria);
                if (subsubcategoria != null)
                    arbol.                      add(subcategoria, subsubcategoria);
            }

            System.out.println(arbol.map.get("root").leafs.size());
            for (Node node : arbol.map.get("Armas").leafs) {
                System.out.println(node.val);
            }

            return arbol.toJson();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
//        request.setAttribute("productos", resultado);
//        request.getRequestDispatcher("index.jsp").forward(request, response);
    }
}
