/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.controlador;

import com.modelo.*;
import com.sun.org.apache.xml.internal.resolver.Catalog;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Nombre del Servlet:ProcesarCatalogo
 * Versión:1.0
 * Fecha:07/10/2017
 * Copyright:Sisvapro
 * @author Karen Escobar,David Sarmiento
 */
public class ProcesarCatalogo extends HttpServlet {

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
        CrudCatalogo crudC= new CrudCatalogo();
        Catalogo c= new Catalogo();
        try {
            c.setIdCatalogo(Integer.parseInt(request.getParameter("txtIdCatalogo")));
            c.setNombreCatalogo(request.getParameter("txtNombre"));
            c.setIdArea(Integer.parseInt(request.getParameter("lstArea")));
            c.setIdContratador(Integer.parseInt(request.getParameter("lstContratador")));
            if (request.getParameter("btnInsertar")!=null) {
                crudC.insertarCatalogo(c);
                val="Datos insertados Correctamente";
            }else if (request.getParameter("btnModificar")!=null) {
                crudC.modificarCatalogo(c);
            }else if (request.getParameter("btnEliminar")!=null) {
                crudC.eliminarCatalogo(c);              
            }
            
            request.setAttribute("valor", val);
            request.getRequestDispatcher("gestionarCatalogo.jsp").forward(request, response);
        } catch (Exception e) {
            request.setAttribute("valor", e.toString());
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
