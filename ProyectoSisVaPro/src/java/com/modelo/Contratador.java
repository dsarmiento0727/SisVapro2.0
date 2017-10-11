package com.modelo;

/**
 * Nombre de la clase: Contratador
 * Version: 1.0
 * Fecha:01/10/2017
 * Copyright:Sisvapro
 * @author Karen Escobar
 */
public class Contratador {
    private int idContratador;
    private String nombresC;
    private String apellidosC;
    private String descripcion;
    private String correoElectronicoC;
    private int idEmpresa;

    public Contratador() {
    }

    public Contratador(int idContratador, String nombresC, String apellidosC, String descripcion, String correoElectronicoC, int idEmpresa) {
        this.idContratador = idContratador;
        this.nombresC = nombresC;
        this.apellidosC = apellidosC;
        this.descripcion = descripcion;
        this.correoElectronicoC = correoElectronicoC;
        this.idEmpresa = idEmpresa;
    }

    public int getIdContratador() {
        return idContratador;
    }

    public void setIdContratador(int idContratador) {
        this.idContratador = idContratador;
    }

    public String getNombresC() {
        return nombresC;
    }

    public void setNombresC(String nombresC) {
        this.nombresC = nombresC;
    }

    public String getApellidosC() {
        return apellidosC;
    }

    public void setApellidosC(String apellidosC) {
        this.apellidosC = apellidosC;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getCorreoElectronicoC() {
        return correoElectronicoC;
    }

    public void setCorreoElectronicoC(String correoElectronicoC) {
        this.correoElectronicoC = correoElectronicoC;
    }

    public int getIdEmpresa() {
        return idEmpresa;
    }

    public void setIdEmpresa(int idEmpresa) {
        this.idEmpresa = idEmpresa;
    }
    
}
