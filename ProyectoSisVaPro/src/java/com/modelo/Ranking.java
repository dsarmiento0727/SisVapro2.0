package com.modelo;

/**
 * Nombre de la clase: Ranking
 * Version: 1.0
 * Fecha:01/10/2017
 * Copyright:Sisvapro
 * @author Karen Escobar
 */
public class Ranking {
    private int idRanking;
    private String clasificacion;
    private int idUsuario;

    public Ranking() {
    }

    public Ranking(int idRanking, String clasificacion, int idUsuario) {
        this.idRanking = idRanking;
        this.clasificacion = clasificacion;
        this.idUsuario = idUsuario;
    }

    public int getIdRanking() {
        return idRanking;
    }

    public void setIdRanking(int idRanking) {
        this.idRanking = idRanking;
    }

    public String getClasificacion() {
        return clasificacion;
    }

    public void setClasificacion(String clasificacion) {
        this.clasificacion = clasificacion;
    }

    public int getIdUsuario() {
        return idUsuario;
    }

    public void setIdUsuario(int idUsuario) {
        this.idUsuario = idUsuario;
    }
    
}
