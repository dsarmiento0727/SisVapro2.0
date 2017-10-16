package com.modelo;

/**
 * Nombre de la clase: Trabajo
 * Versión:1.0
 * Fecha:01/10/2017
 * Copyright:Sisvapro
 * @author Karen Escobar
 */
public class Trabajo {
    private int idTrabajo;
    private String nombreEmpresa;
    private String encargadoEmpresa;
    private String puestoDesempenado;
    private String tiempoLaborado;

    public Trabajo() {
    }

    public Trabajo(int idTrabajo, String nombreEmpresa, String encargadoEmpresa, String tiempoLaborado, String puestoDesempenado) {
        this.idTrabajo = idTrabajo;
        this.nombreEmpresa = nombreEmpresa;
        this.encargadoEmpresa = encargadoEmpresa;
        this.tiempoLaborado = tiempoLaborado;
        this.puestoDesempenado = puestoDesempenado;
    }

    public int getIdTrabajo() {
        return idTrabajo;
    }

    public void setIdTrabajo(int idTrabajo) {
        this.idTrabajo = idTrabajo;
    }

    public String getNombreEmpresa() {
        return nombreEmpresa;
    }

    public void setNombreEmpresa(String nombreEmpresa) {
        this.nombreEmpresa = nombreEmpresa;
    }

    public String getEncargadoEmpresa() {
        return encargadoEmpresa;
    }

    public void setEncargadoEmpresa(String encargadoEmpresa) {
        this.encargadoEmpresa = encargadoEmpresa;
    }

    public String getTiempoLaborado() {
        return tiempoLaborado;
    }

    public void setTiempoLaborado(String tiempoLaborado) {
        this.tiempoLaborado = tiempoLaborado;
    }

    public String getPuestoDesempenado() {
        return puestoDesempenado;
    }

    public void setPuestoDesempenado(String puestoDesempenado) {
        this.puestoDesempenado = puestoDesempenado;
    }
    
}
