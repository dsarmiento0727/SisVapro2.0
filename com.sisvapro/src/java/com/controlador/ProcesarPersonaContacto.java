/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.controlador;


import com.modelo.CrudPersonaContacto ;
import com.modelo.PersonaContacto;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author henry
 */
public class ProcesarPersonaContacto extends HttpServlet {

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
        CrudPersonaContacto  crud=new CrudPersonaContacto ();
        PersonaContacto  d=new PersonaContacto ();
        try {
            d.setIdPersonaContacto(Integer.parseInt(request.getParameter("txtidPersonaContacto")));
            d.setNombres(request.getParameter("txtnombre"));
            d.setApellidos(request.getParameter("txtapellido"));
            d.setCargo(request.getParameter("cargo"));
            d.setTelefono1(request.getParameter("telefono1"));
            d.setTelefono2(request.getParameter("telefono2"));
            d.setIdEmpresa(Integer.parseInt(request.getParameter("txtidEmpresa")));

            
            if (request.getParameter("btnInsertar")!=null) {
                crud.insertarPersonaContacto(d);
                val="Datos insertados Correctamente";
            }else if (request.getParameter("btnModificar")!=null) {
                crud.modificarPersonaContacto(d);
            }else if (request.getParameter("btnEliminar")!=null) {
                crud.eliminarPersonaContacto(d);
            }
            
            request.setAttribute("valor", val);
            request.getRequestDispatcher("gestionarPersonaContacto.jsp").forward(request, response);
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
