package com.modelo;

/**
 * Nombre de la clase: Catalogo
 * Versión:1.0
 * Fecha:01/10/2017
 * Copyright:Sisvapro
 * @author Karen Escobar
 */
public class Catalogo {
    private int idCatalogo;
    private String nombreCatalogo;
    private int idArea;
    private int idContratador;

    public Catalogo() {
    }

    public Catalogo(int idCatalogo, String nombreCatalogo, int idArea, int idContratador) {
        this.idCatalogo = idCatalogo;
        this.nombreCatalogo = nombreCatalogo;
        this.idArea = idArea;
        this.idContratador = idContratador;
    }

    public int getIdCatalogo() {
        return idCatalogo;
    }

    public void setIdCatalogo(int idCatalogo) {
        this.idCatalogo = idCatalogo;
    }

    public String getNombreCatalogo() {
        return nombreCatalogo;
    }

    public void setNombreCatalogo(String nombreCatalogo) {
        this.nombreCatalogo = nombreCatalogo;
    }

    public int getIdArea() {
        return idArea;
    }

    public void setIdArea(int idArea) {
        this.idArea = idArea;
    }

    public int getIdContratador() {
        return idContratador;
    }

    public void setIdContratador(int idContratador) {
        this.idContratador = idContratador;
    }

    
}
