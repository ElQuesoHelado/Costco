package org.dbp.entity;

public class Usuario {
    private Long id;
    private String email;
    private String password;
    private Long metodo_pago = null;

    public Usuario(Long id, String email, String password) {
        this.id = id;
        this.email = email;
        this.password = password;
    }

    public Usuario(Long id, String email, String password, Long metodo_pago) {
        this.id = id;
        this.email = email;
        this.password = password;
        this.metodo_pago = metodo_pago;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Long getMetodo_pago() {
        return metodo_pago;
    }

    public void setMetodo_pago(Long metodo_pago) {
        this.metodo_pago = metodo_pago;
    }
}
