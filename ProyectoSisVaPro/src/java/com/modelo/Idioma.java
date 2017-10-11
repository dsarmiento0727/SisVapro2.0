package com.modelo;

/**
 * Nombre de la clase: Idioma
 * Version: 1.0
 * Fecha:01/10/2017
 * Copyright:Sisvapro
 * @author Karen Escobar
 */
public class Idioma {
    private int idIdioma;
    private String nombreIdioma;

    public Idioma() {
    }

    public Idioma(int idIdioma, String nombreIdioma) {
        this.idIdioma = idIdioma;
        this.nombreIdioma = nombreIdioma;
    }

    public int getIdIdioma() {
        return idIdioma;
    }

    public void setIdIdioma(int idIdioma) {
        this.idIdioma = idIdioma;
    }

    public String getNombreIdioma() {
        return nombreIdioma;
    }

    public void setNombreIdioma(String nombreIdioma) {
        this.nombreIdioma = nombreIdioma;
    }

    
}
