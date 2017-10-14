/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.modelo;

/**
 * Nombre de la clase: Pais
 * Versión 1.0
 * Fecha:14/10/2017
 * CopyRight:MundoEmpelo SA. De CV.
 * @author Karen Escobar
 */
public class Pais {
    private int idPais;
    private String nombrePais;

    public Pais() {
    }

    public Pais(int idPais, String nombrePais) {
        this.idPais = idPais;
        this.nombrePais = nombrePais;
    }

    public int getIdPais() {
        return idPais;
    }

    public void setIdPais(int idPais) {
        this.idPais = idPais;
    }

    public String getNombrePais() {
        return nombrePais;
    }

    public void setNombrePais(String nombrePais) {
        this.nombrePais = nombrePais;
    }
    
    
}
