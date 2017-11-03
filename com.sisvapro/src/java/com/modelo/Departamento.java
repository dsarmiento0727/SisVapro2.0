/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.modelo;

/**
 * Nombre de la clase: Departamento
 * Versión 1.0
 * Fecha:14/10/2017
 * CopyRight:MundoEmpelo SA. De CV.
 * @author Karen Escobar
 */
public class Departamento {
    private int idDepartamento;
    private String nombreDepartamento;

    public Departamento() {
    }

    public Departamento(int idDepartamento, String nombreDepartamento) {
        this.idDepartamento = idDepartamento;
        this.nombreDepartamento = nombreDepartamento;
    }

    public int getIdDepartamento() {
        return idDepartamento;
    }

    public void setIdDepartamento(int idDepartamento) {
        this.idDepartamento = idDepartamento;
    }

    public String getNombreDepartamento() {
        return nombreDepartamento;
    }

    public void setNombreDepartamento(String nombreDepartamento) {
        this.nombreDepartamento = nombreDepartamento;
    }
        
}
