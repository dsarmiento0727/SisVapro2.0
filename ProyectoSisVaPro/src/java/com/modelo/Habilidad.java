package com.modelo;

/**
 * Nombre de la clase: Habilidad
 * Versión:1.0
 * Fecha:01/10/2017
 * Copyright:Sisvapro
 * @author Karen Escobar
 */
public class Habilidad {
    private int idHabilidad;
    private String nombreHabilidad;

    public Habilidad() {
    }

    public Habilidad(int idHabilidad, String nombreHabilidad) {
        this.idHabilidad = idHabilidad;
        this.nombreHabilidad = nombreHabilidad;
    }

    public int getIdHabilidad() {
        return idHabilidad;
    }

    public void setIdHabilidad(int idHabilidad) {
        this.idHabilidad = idHabilidad;
    }

    public String getNombreHabilidad() {
        return nombreHabilidad;
    }

    public void setNombreHabilidad(String nombreHabilidad) {
        this.nombreHabilidad = nombreHabilidad;
    }
    
}
