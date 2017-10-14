/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.modelo;

/**
 * Nombre de la clase: SectorEmpresarial
 * Versión 1.0
 * Fecha:14/10/2017
 * CopyRight:MundoEmpelo SA. De CV.
 * @author Karen Escobar
 */
public class SectorEmpresarial {
    private int idSectorEmpresarial;
    private String nombreSectorEmpresarial;

    public SectorEmpresarial() {
    }

    public SectorEmpresarial(int idSectorEmpresarial, String nombreSectorEmpresarial) {
        this.idSectorEmpresarial = idSectorEmpresarial;
        this.nombreSectorEmpresarial = nombreSectorEmpresarial;
    }

    public int getIdSectorEmpresarial() {
        return idSectorEmpresarial;
    }

    public void setIdSectorEmpresarial(int idSectorEmpresarial) {
        this.idSectorEmpresarial = idSectorEmpresarial;
    }

    public String getNombreSectorEmpresarial() {
        return nombreSectorEmpresarial;
    }

    public void setNombreSectorEmpresarial(String nombreSectorEmpresarial) {
        this.nombreSectorEmpresarial = nombreSectorEmpresarial;
    }
    
}
