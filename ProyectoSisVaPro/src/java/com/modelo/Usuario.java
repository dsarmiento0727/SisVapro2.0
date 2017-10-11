package com.modelo;

/**
 * Nombre de la clase: Usuario
 * Version: 1.0
 * Fecha:01/10/2017
 * Copyright:Sisvapro
 * @author Karen Escobar
 */
public class Usuario {
    private int idUsuario;
    private String userName;
    private String password;
    private int idTipo;

    public Usuario() {
    }

    public Usuario(int idUsuario, String userName, String password, int idTipo) {
        this.idUsuario = idUsuario;
        this.userName = userName;
        this.password = password;
        this.idTipo = idTipo;
    }

    public int getIdUsuario() {
        return idUsuario;
    }

    public void setIdUsuario(int idUsuario) {
        this.idUsuario = idUsuario;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getIdTipo() {
        return idTipo;
    }

    public void setIdTipo(int idTipo) {
        this.idTipo = idTipo;
    }
    
}
