/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.modelo;

/**
 * Nombre de la clase: Ranking
 * Versión 1.0
 * Fecha:14/10/2017
 * CopyRight:MundoEmpelo SA. De CV.
 * @author Karen Escobar
 */
public class Ranking {
    private int idRanking;
    private int cantidadPuntos;
    private int idUsuario;

    public Ranking() {
    }

    public Ranking(int idRanking, int cantidadPuntos, int idUsuario) {
        this.idRanking = idRanking;
        this.cantidadPuntos = cantidadPuntos;
        this.idUsuario = idUsuario;
    }

    public int getIdRanking() {
        return idRanking;
    }

    public void setIdRanking(int idRanking) {
        this.idRanking = idRanking;
    }

    public int getCantidadPuntos() {
        return cantidadPuntos;
    }

    public void setCantidadPuntos(int cantidadPuntos) {
        this.cantidadPuntos = cantidadPuntos;
    }

    public int getIdUsuario() {
        return idUsuario;
    }

    public void setIdUsuario(int idUsuario) {
        this.idUsuario = idUsuario;
    }
    
    
}
