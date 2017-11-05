/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.controlador;


import com.modelo.CrudFormacionAcademica;
import com.modelo.FormacionAcademica;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author carlos
 */
public class ProcesarFormacionAcademica extends HttpServlet {

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
        String val = null;
        CrudFormacionAcademica crud = new CrudFormacionAcademica();
        FormacionAcademica aca = new FormacionAcademica();
        try {

            aca.setIdFormacion(Integer.parseInt(request.getParameter("txtIdFormacionAcademica")));
            aca.setNivelEstudio(request.getParameter("lstNivel"));
            aca.setEstado(request.getParameter("lstEstado"));
            aca.setCarrera(request.getParameter("txtCarrera"));
            aca.setIdEmpleador(Integer.parseInt(request.getParameter("txtIdEmpleador")));

            if (request.getParameter("btnInsertar") != null) {
                crud.insertarFormacionAcademica(aca);
                val = "Datos insertados Correctamente";
            } else if (request.getParameter("btnModificar") != null) {
                crud.modificarFormacionAcademica(aca);
            } else if (request.getParameter("btnEliminar") != null) {
                crud.eliminarFormacionAcademica(aca);
            }
            request.setAttribute("valor", val);
            request.getRequestDispatcher("gestionarFormacionAcademica.jsp").forward(request, response);
        } catch (Exception e) {
            
            out.print(e.toString());
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
