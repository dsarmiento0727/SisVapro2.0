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
public class FormacionAcademica {
    private int idFormacion;
    private String nivelEstudio;
    private String estado;
    private String carrera;

    public FormacionAcademica() {
    }

    public FormacionAcademica(int idFormacion, String nivelEstudio, String estado, String carrera) {
        this.idFormacion = idFormacion;
        this.nivelEstudio = nivelEstudio;
        this.estado = estado;
        this.carrera = carrera;
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
    
    
}
