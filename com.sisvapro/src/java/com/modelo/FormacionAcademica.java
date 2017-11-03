/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.modelo;

/**
 * Nombre de la clase: FormacionAcademica
 * Versión:1.0
 * Fecha: 03/11/2017
 * Copyright:ITCA-FEPADE
 * @author Karen Escobar
 */
public class FormacionAcademica {
    private int idFormacion;
    private String nivelEstudio;
    private String estado;
    private String carrera;
    private int idEmpleador;

    public FormacionAcademica() {
    }

    public FormacionAcademica(int idFormacion, String nivelEstudio, String estado, String carrera, int idEmpleador) {
        this.idFormacion = idFormacion;
        this.nivelEstudio = nivelEstudio;
        this.estado = estado;
        this.carrera = carrera;
        this.idEmpleador = idEmpleador;
    }

    public int getIdFormacion() {
        return idFormacion;
    }

    public void setIdFormacion(int idFormacion) {
        this.idFormacion = idFormacion;
    }

    public String getNivelEstudio() {
        return nivelEstudio;
    }

    public void setNivelEstudio(String nivelEstudio) {
        this.nivelEstudio = nivelEstudio;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public String getCarrera() {
        return carrera;
    }

    public void setCarrera(String carrera) {
        this.carrera = carrera;
    }

    public int getIdEmpleador() {
        return idEmpleador;
    }

    public void setIdEmpleador(int idEmpleador) {
        this.idEmpleador = idEmpleador;
    }

    
    
}
