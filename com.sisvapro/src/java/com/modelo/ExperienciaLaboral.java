/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.modelo;

/**
 *
 * @author carlos
 */
public class ExperienciaLaboral {
    private int idExperienciaLaboral;
    private String nombreEmpresa;
    private String nombreJefe;
    private String telefonoJefe;
    private String puesto;
    private String desde;
    private String hasta;
    private String tipoContrato;

    public ExperienciaLaboral() {
    }

    public ExperienciaLaboral(int idExperienciaLaboral, String nombreEmpresa, String nombreJefe, String telefonoJefe, String puesto, String desde, String hasta, String tipoContrato) {
        this.idExperienciaLaboral = idExperienciaLaboral;
        this.nombreEmpresa = nombreEmpresa;
        this.nombreJefe = nombreJefe;
        this.telefonoJefe = telefonoJefe;
        this.puesto = puesto;
        this.desde = desde;
        this.hasta = hasta;
        this.tipoContrato = tipoContrato;
    }

    public int getIdExperienciaLaboral() {
        return idExperienciaLaboral;
    }

    public void setIdExperienciaLaboral(int idExperienciaLaboral) {
        this.idExperienciaLaboral = idExperienciaLaboral;
    }

    public String getNombreEmpresa() {
        return nombreEmpresa;
    }

    public void setNombreEmpresa(String nombreEmpresa) {
        this.nombreEmpresa = nombreEmpresa;
    }

    public String getNombreJefe() {
        return nombreJefe;
    }

    public void setNombreJefe(String nombreJefe) {
        this.nombreJefe = nombreJefe;
    }

    public String getTelefonoJefe() {
        return telefonoJefe;
    }

    public void setTelefonoJefe(String telefonoJefe) {
        this.telefonoJefe = telefonoJefe;
    }

    public String getPuesto() {
        return puesto;
    }

    public void setPuesto(String puesto) {
        this.puesto = puesto;
    }

    public String getDesde() {
        return desde;
    }

    public void setDesde(String desde) {
        this.desde = desde;
    }

    public String getHasta() {
        return hasta;
    }

    public void setHasta(String hasta) {
        this.hasta = hasta;
    }

    public String getTipoContrato() {
        return tipoContrato;
    }

    public void setTipoContrato(String tipoContrato) {
        this.tipoContrato = tipoContrato;
    }
    
    
}
