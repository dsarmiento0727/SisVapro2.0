/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.controlador;

import com.modelo.CrudPerfil;
import com.modelo.Perfil;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Nombre del Servlet:ProcesarPerfil
 * Versión:1.0
 * Fecha:07/10/2017
 * Copyright:Sisvapro
 * @author Karen Escobar,David Sarmiento
 */
public class ProcesarPerfil extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String val=null;
        CrudPerfil crud= new CrudPerfil();
        Perfil per=new Perfil();
        try {    
            per.setIdPerfil(Integer.parseInt(request.getParameter("txtIdPerfil")));
            per.setFoto(request.getParameter("txtFoto"));
            per.setNombres(request.getParameter("txtNombres"));
            per.setApellidos(request.getParameter("txtApellidos"));
            per.setGenero(request.getParameter("genero"));
            per.setFechaNacimiento(request.getParameter("txtFechaNac"));
            per.setDui(request.getParameter("txtDui"));
            per.setNit(request.getParameter("txtNit"));
            per.setEstadoCivil(request.getParameter("Estado"));
            per.setDireccion(request.getParameter("txtDireccion"));
            per.setIdPais(Integer.parseInt(request.getParameter("lstPais")));
            per.setIdDepartamento(Integer.parseInt(request.getParameter("lstDepartamento")));
            per.setIdMunicipio(Integer.parseInt(request.getParameter("lstMunicipio")));
            per.setIdUsuario(Integer.parseInt(request.getParameter("lstUsuario")));
            per.setIdHabilidad(Integer.parseInt(request.getParameter("lstHabilidad")));
            per.setIdIdioma(Integer.parseInt(request.getParameter("lstIdioma")));
            per.setIdProfesion(Integer.parseInt(request.getParameter("lstProfesion")));
            per.setIdTrabajo(Integer.parseInt(request.getParameter("lstTrabajo")));
            per.setCorreoElectronico(request.getParameter("txtCorreoE"));
            
            if (request.getParameter("btnInsertar")!=null) {
                crud.insertarPerfil(per);
                val="Datos insertados Correctamente";
            }else if (request.getParameter("btnModificar")!=null) {
                crud.modificarPerfil(per);
            }else if (request.getParameter("btnEliminar")!=null) {
                crud.eliminarPerfil(per);
            }
            request.setAttribute("valor", val);
            request.getRequestDispatcher("gestiones/gestionarPerfil.jsp").forward(request, response);
        } catch (Exception e) {
            request.setAttribute("error", e.toString());
        }
        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
