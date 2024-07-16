package org.dbp.entity;

public class Producto {
    private Integer codigo;
    private String nombre;
    private String categoria;
    private String subcategoria;
    private String subsubcategoria;
    private String marca;
    private String descripcion;
    private String peso;
    private Float precio;
    private String imgpath1;
    private String imgpath2;
    private String imgpath3;

    public Producto(Integer codigo, String nombre, String categoria, String subcategoria, String subsubcategoria, String marca, String descripcion, String peso, Float precio, String imgpath1, String imgpath2, String imgpath3) {
        this.codigo = codigo;
        this.nombre = nombre;
        this.categoria = categoria;
        this.subcategoria = subcategoria;
        this.subsubcategoria = subsubcategoria;
        this.marca = marca;
        this.descripcion = descripcion;
        this.peso = peso;
        this.precio = precio;
        this.imgpath1 = imgpath1;
        this.imgpath2 = imgpath2;
        this.imgpath3 = imgpath3;
    }

    public Integer getCodigo() {
        return codigo;
    }

    public String getNombre() {
        return nombre;
    }

    public String getCategoria() {
        return categoria;
    }

    public String getSubcategoria() {
        return subcategoria;
    }

    public String getSubsubcategoria() {
        return subsubcategoria;
    }

    public String getMarca() {
        return marca;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public String getPeso() {
        return peso;
    }

    public Float getPrecio() {
        return precio;
    }

    public void setCodigo(Integer codigo) {
        this.codigo = codigo;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public void setCategoria(String categoria) {
        this.categoria = categoria;
    }

    public void setSubcategoria(String subcategoria) {
        this.subcategoria = subcategoria;
    }

    public void setSubsubcategoria(String subsubcategoria) {
        this.subsubcategoria = subsubcategoria;
    }

    public void setMarca(String marca) {
        this.marca = marca;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public void setPeso(String peso) {
        this.peso = peso;
    }

    public void setPrecio(Float precio) {
        this.precio = precio;
    }

    public String getImgpath1() {
        return imgpath1;
    }

    public void setImgpath1(String imgpath1) {
        this.imgpath1 = imgpath1;
    }

    public String getImgpath2() {
        return imgpath2;
    }

    public void setImgpath2(String imgpath2) {
        this.imgpath2 = imgpath2;
    }

    public String getImgpath3() {
        return imgpath3;
    }

    public void setImgpath3(String imgpath3) {
        this.imgpath3 = imgpath3;
    }

    @Override
    public String toString() {
        return "Producto{" +
                "codigo=" + codigo +
                ", nombre='" + nombre + '\'' +
                ", categoria='" + categoria + '\'' +
                ", subcategoria='" + subcategoria + '\'' +
                ", subsubcategoria='" + subsubcategoria + '\'' +
                ", marca='" + marca + '\'' +
                ", descripcion='" + descripcion + '\'' +
                ", peso='" + peso + '\'' +
                ", precio=" + precio +
                ", imgpath1='" + imgpath1 + '\'' +
                ", imgpath2='" + imgpath2 + '\'' +
                ", imgpath3='" + imgpath3 + '\'' +
                '}';
    }
}
