package com.modelo;

/**
 * Nombre de la clase: Publicista
 * Version: 1.0
 * Fecha:01/10/2017
 * Copyright:Sisvapro
 * @author Karen Escobar
 */
public class Publicista {
    private int idPublicista;
    private String nombresP;
    private String apellidosP;
    private String correoEllectronicoP;
    private int idEmpresa;

    public Publicista() {
    }

    public Publicista(int idPublicista, String nombresP, String apellidosP, String correoEllectronicoP, int idEmpresa) {
        this.idPublicista = idPublicista;
        this.nombresP = nombresP;
        this.apellidosP = apellidosP;
        this.correoEllectronicoP = correoEllectronicoP;
        this.idEmpresa = idEmpresa;
    }

    public int getIdPublicista() {
        return idPublicista;
    }

    public void setIdPublicista(int idPublicista) {
        this.idPublicista = idPublicista;
    }

    public String getNombresP() {
        return nombresP;
    }

    public void setNombresP(String nombresP) {
        this.nombresP = nombresP;
    }

    public String getApellidosP() {
        return apellidosP;
    }

    public void setApellidosP(String apellidosP) {
        this.apellidosP = apellidosP;
    }

    public String getCorreoEllectronicoP() {
        return correoEllectronicoP;
    }

    public void setCorreoEllectronicoP(String correoEllectronicoP) {
        this.correoEllectronicoP = correoEllectronicoP;
    }

    public int getIdEmpresa() {
        return idEmpresa;
    }

    public void setIdEmpresa(int idEmpresa) {
        this.idEmpresa = idEmpresa;
    }

    
}
