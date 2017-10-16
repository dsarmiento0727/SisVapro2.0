package com.modelo;

/**
 * Nombre de la clase:Profesion
 * Version:1.0
 * Fecha:01/10/2017
 * Copyright:Sisvapro
 * @author Karen Escobar
 */
public class Profesion {
    private int idProfesion;
    private String nombreProfesion;

    public Profesion() {
    }

    public Profesion(int idProfesion, String nombreProfesion) {
        this.idProfesion = idProfesion;
        this.nombreProfesion = nombreProfesion;
    }

    public int getIdProfesion() {
        return idProfesion;
    }

    public void setIdProfesion(int idProfesion) {
        this.idProfesion = idProfesion;
    }

    public String getNombreProfesion() {
        return nombreProfesion;
    }

    public void setNombreProfesion(String nombreProfesion) {
        this.nombreProfesion = nombreProfesion;
    }

    
}
