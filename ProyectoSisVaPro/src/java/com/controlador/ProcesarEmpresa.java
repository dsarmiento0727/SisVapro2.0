/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.controlador;

import com.modelo.CrudEmpresa;
import com.modelo.Empresa;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Nombre del Servlet:ProcesarEmpresa
 * Versión:1.0
 * Fecha:07/10/2017
 * Copyright:Sisvapro
 * @author Karen Escobar
 */
public class ProcesarEmpresa extends HttpServlet {

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
        RequestDispatcher rd=null;
        Empresa em= new Empresa();
        CrudEmpresa crud= new CrudEmpresa();
        String val=null;
        try {
            
            em.setIdEmpresa(Integer.parseInt(request.getParameter("txtIdEmpresa")));
            
            em.setNombreJuridico(request.getParameter("txtNombreJ"));
            
            em.setNombreComercial(request.getParameter("txtNombreC"));
            
            em.setGiro(request.getParameter("txtGiro"));
            
            em.setFechaInscripcion(request.getParameter("txtFechaInscripcion"));
            
            em.setNit(request.getParameter("txtNit"));
            
            em.setDireccion(request.getParameter("txtDireccion"));
            
            em.setIdUsuario(Integer.parseInt(request.getParameter("lstUsuario")));
            
            if (request.getParameter("btnInsertar") !=null){
                crud.insertarEmpresa(em);
                val="Datos Insertados Correctamente";
            }else if (request.getParameter("btnModificar")!=null) {
                crud.modificarEmpresa(em);
                val="Datos Modificados Correctamente";
            } else if (request.getParameter("btnEliminar")!=null) {
                crud.eliminarEmpresa(em);
                val="Datos Eliminmados Correctamente";
            }
            
            request.setAttribute("valor", val);
            request.getRequestDispatcher("gestionarEmpresa.jsp").forward(request, response);
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
