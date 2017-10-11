
package com.modelo;

/**
 * Nombre de la clase: Municipio
 * Versión:1.0
 * Fecha:01/10/2017
 * Copyright:Sisvapro
 * @author Karen Escobar
 */
public class Municipio {
    private int idMunicipio;
    private String nombreMunicipio;

    public Municipio() {
    }

    public Municipio(int idMunicipio, String nombreMunicipio) {
        this.idMunicipio = idMunicipio;
        this.nombreMunicipio = nombreMunicipio;
    }

    public int getIdMunicipio() {
        return idMunicipio;
    }

    public void setIdMunicipio(int idMunicipio) {
        this.idMunicipio = idMunicipio;
    }

    public String getNombreMunicipio() {
        return nombreMunicipio;
    }

    public void setNombreMunicipio(String nombreMunicipio) {
        this.nombreMunicipio = nombreMunicipio;
    }

    
}
