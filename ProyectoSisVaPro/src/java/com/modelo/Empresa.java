package com.modelo;

/**
 * Nombre de la clase: Empresa
 * Version: 1.0
 * Fecha:01/10/2017
 * Copyright:Sisvapro
 * @author Karen Escobar
 */
public class Empresa {
    private int idEmpresa;
    private String nombreJuridico;
    private String nombreComercial;
    private String giro;
    private String fechaInscripcion;
    private String nit;
    private String direccion;
    private int idUsuario;

    public Empresa() {
    }

    public Empresa(int idEmpresa, String nombreJuridico, String nombreComercial, String giro, String fechaInscripcion, String nit, String direccion, int idUsuario) {
        this.idEmpresa = idEmpresa;
        this.nombreJuridico = nombreJuridico;
        this.nombreComercial = nombreComercial;
        this.giro = giro;
        this.fechaInscripcion = fechaInscripcion;
        this.nit = nit;
        this.direccion = direccion;
        this.idUsuario = idUsuario;
    }

    public int getIdEmpresa() {
        return idEmpresa;
    }

    public void setIdEmpresa(int idEmpresa) {
        this.idEmpresa = idEmpresa;
    }

    public String getNombreJuridico() {
        return nombreJuridico;
    }

    public void setNombreJuridico(String nombreJuridico) {
        this.nombreJuridico = nombreJuridico;
    }

    public String getNombreComercial() {
        return nombreComercial;
    }

    public void setNombreComercial(String nombreComercial) {
        this.nombreComercial = nombreComercial;
    }

    public String getGiro() {
        return giro;
    }

    public void setGiro(String giro) {
        this.giro = giro;
    }

    public String getFechaInscripcion() {
        return fechaInscripcion;
    }

    public void setFechaInscripcion(String fechaInscripcion) {
        this.fechaInscripcion = fechaInscripcion;
    }

    public String getNit() {
        return nit;
    }

    public void setNit(String nit) {
        this.nit = nit;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public int getIdUsuario() {
        return idUsuario;
    }

    public void setIdUsuario(int idUsuario) {
        this.idUsuario = idUsuario;
    }
    
}
