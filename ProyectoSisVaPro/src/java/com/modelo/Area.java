package com.modelo;

/**
 * Nombre de la clase: Area
 * Versión:1.0
 * Fecha:01/10/2017
 * Copyright:Sisvapro
 * @author Karen Escobar
 */
public class Area {
    private int idArea;
    private String nombreArea;

    public Area() {
    }

    public Area(int idArea, String nombreArea) {
        this.idArea = idArea;
        this.nombreArea = nombreArea;
    }

    public int getIdArea() {
        return idArea;
    }

    public void setIdArea(int idArea) {
        this.idArea = idArea;
    }

    public String getNombreArea() {
        return nombreArea;
    }

    public void setNombreArea(String nombreArea) {
        this.nombreArea = nombreArea;
    }
    
}
