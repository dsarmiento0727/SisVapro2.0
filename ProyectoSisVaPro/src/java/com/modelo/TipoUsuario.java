package com.modelo;

/**
 * Nombre de la clase: TipoUsuario
 * Version: 1.0
 * Fecha:01/10/2017
 * Copyright:Sisvapro
 * @author Karen Escobar
 */
public class TipoUsuario {
    private int idTipo;
    private String nivel;

    public TipoUsuario() {
    }

    public TipoUsuario(int idTipo, String nivel) {
        this.idTipo = idTipo;
        this.nivel = nivel;
    }

    public int getIdTipo() {
        return idTipo;
    }

    public void setIdTipo(int idTipo) {
        this.idTipo = idTipo;
    }

    public String getNivel() {
        return nivel;
    }

    public void setNivel(String nivel) {
        this.nivel = nivel;
    }
    
}
