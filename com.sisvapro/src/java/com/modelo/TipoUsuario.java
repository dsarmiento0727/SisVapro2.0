/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.modelo;

/**
 * Nombre de la clase: TipoUsuario
 * Versión 1.0
 * Fecha:14/10/2017
 * CopyRight:MundoEmpelo SA. De CV.
 * @author Karen Escobar
 */
public class TipoUsuario {
    private int idTipoUsuario;
    private String nivel;

    public TipoUsuario() {
    }

    public TipoUsuario(int idTipoUsuario, String nivel) {
        this.idTipoUsuario = idTipoUsuario;
        this.nivel = nivel;
    }

    public int getIdTipoUsuario() {
        return idTipoUsuario;
    }

    public void setIdTipoUsuario(int idTipoUsuario) {
        this.idTipoUsuario = idTipoUsuario;
    }

    public String getNivel() {
        return nivel;
    }

    public void setNivel(String nivel) {
        this.nivel = nivel;
    }
    
    

}
