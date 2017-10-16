/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.controlador;

import com.modelo.CrudTrabajo;
import com.modelo.Trabajo;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Gerardo
 */
public class ProcesarTrabajo extends HttpServlet {

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
        CrudTrabajo crud= new CrudTrabajo();
        Trabajo tr=new Trabajo();
        try {
            tr.setIdTrabajo(Integer.parseInt(request.getParameter("txtIdTrabajo")));
            tr.setNombreEmpresa(request.getParameter("txtNombre"));
            tr.setEncargadoEmpresa(request.getParameter("txtEncargado"));
            tr.setPuestoDesempenado(request.getParameter("txtPuestoD"));
            tr.setTiempoLaborado(request.getParameter("txtTiempoL"));
            if (request.getParameter("btnInsertar")!=null) {
                crud.insertarTrabajo(tr);
                val="Datos insertados Correctamente";
            }else if (request.getParameter("btnModificar")!=null) {
                crud.modificarTrabajo(tr);
            }else if (request.getParameter("btnEliminar")!=null) {
                crud.eliminarTrabajo(tr);
            }
            response.sendRedirect("gestiones/gestionarTrabajo.jsp");
            request.setAttribute("valor", val);
        } catch (Exception e) {
            request.setAttribute("error", e.toString());
        }
        request.getRequestDispatcher("").forward(request, response);
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
