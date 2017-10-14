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
public class PersonaContacto {
    private int idPersonaContacto;
    private String nombres;
    private String apellidos;
    private String cargo;
    private String telefono1;
    private String telefono2;
    private int idEmpresa;

    public PersonaContacto() {
    }

    public PersonaContacto(int idPersonaContacto, String nombres, String apellidos, String cargo, String telefono1, String telefono2, int idEmpresa) {
        this.idPersonaContacto = idPersonaContacto;
        this.nombres = nombres;
        this.apellidos = apellidos;
        this.cargo = cargo;
        this.telefono1 = telefono1;
        this.telefono2 = telefono2;
        this.idEmpresa = idEmpresa;
    }

    public int getIdPersonaContacto() {
        return idPersonaContacto;
    }

    public void setIdPersonaContacto(int idPersonaContacto) {
        this.idPersonaContacto = idPersonaContacto;
    }

    public String getNombres() {
        return nombres;
    }

    public void setNombres(String nombres) {
        this.nombres = nombres;
    }

    public String getApellidos() {
        return apellidos;
    }

    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }

    public String getCargo() {
        return cargo;
    }

    public void setCargo(String cargo) {
        this.cargo = cargo;
    }

    public String getTelefono1() {
        return telefono1;
    }

    public void setTelefono1(String telefono1) {
        this.telefono1 = telefono1;
    }

    public String getTelefono2() {
        return telefono2;
    }

    public void setTelefono2(String telefono2) {
        this.telefono2 = telefono2;
    }

    public int getIdEmpresa() {
        return idEmpresa;
    }

    public void setIdEmpresa(int idEmpresa) {
        this.idEmpresa = idEmpresa;
    }
    
    
}
