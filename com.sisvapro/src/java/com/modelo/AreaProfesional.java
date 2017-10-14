/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.modelo;

/**
 * Nombre de la clase: AreaProfesional
 * Versión 1.0
 * Fecha:14/10/2017
 * CopyRight:MundoEmpelo SA. De CV.
 * @author Karen Escobar
 */
public class AreaProfesional {
    private int idAreaProfesional;
    private String nombreAreaProfesional;

    public AreaProfesional() {
    }

    public AreaProfesional(int idAreaProfesional, String nombreAreaProfesional) {
        this.idAreaProfesional = idAreaProfesional;
        this.nombreAreaProfesional = nombreAreaProfesional;
    }

    public int getIdAreaProfesional() {
        return idAreaProfesional;
    }

    public void setIdAreaProfesional(int idAreaProfesional) {
        this.idAreaProfesional = idAreaProfesional;
    }

    public String getNombreAreaProfesional() {
        return nombreAreaProfesional;
    }

    public void setNombreAreaProfesional(String nombreAreaProfesional) {
        this.nombreAreaProfesional = nombreAreaProfesional;
    }
    
}
