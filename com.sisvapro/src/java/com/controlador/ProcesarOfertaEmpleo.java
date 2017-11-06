/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.controlador;

import com.modelo.CrudOfertaEmpleo;
import com.modelo.OfertaEmpleo;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Gerardo
 */
public class ProcesarOfertaEmpleo extends HttpServlet {

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
        CrudOfertaEmpleo crud=new CrudOfertaEmpleo();
        OfertaEmpleo o=new OfertaEmpleo();
        RequestDispatcher rd=null;
        String val=null;
        try {
            o.setIdOfertaEmpleo(Integer.parseInt(request.getParameter("txtIdOfertaEmpleo")));
            o.setPuestoVacante(request.getParameter("txtPuesto"));
            o.setCantidad(Integer.parseInt(request.getParameter("txtCanti")));
            o.setTipoContratacion(request.getParameter("lstContratacion"));
            o.setNivelExperiencia(request.getParameter("experiencia"));
            o.setGenero(request.getParameter("genero"));
            o.setEdad(Integer.parseInt(request.getParameter("txtEdad")));
            o.setSalario(Double.parseDouble(request.getParameter("txtSalario")));
            o.setIdEmpresa(Integer.parseInt(request.getParameter("lstEmpresa")));
            o.setIdPais(Integer.parseInt(request.getParameter("lstPais")));
            o.setIdDepartamento(Integer.parseInt(request.getParameter("lstDepartamento")));
            o.setDescripcionOferta(request.getParameter("txtDescripcion"));
            if (request.getParameter("btnInsertar")!=null) {
                crud.insertarOfertaEmpleo(o);
                val="Datos insertados Correctamente";
            }else if (request.getParameter("btnModificar")!=null) {
                crud.modificarOfertaEmpleo(o);
            }else if (request.getParameter("btnEliminar")!=null) {
                crud.eliminarOfertaEmpleo(o);
            }
            request.setAttribute("valor", val);
            request.getRequestDispatcher("gestionarOfertaEmpleo.jsp").forward(request, response);
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
