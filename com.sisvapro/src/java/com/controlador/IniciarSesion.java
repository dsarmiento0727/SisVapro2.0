/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.controlador;

import com.modelo.AutentificarUsuario;
import com.modelo.CrudUsuario;
import com.modelo.Usuario;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class IniciarSesion extends HttpServlet {

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
            throws ServletException, IOException, Exception {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            if (request.getParameter("btnIngresar") != null) {
                Usuario u = new Usuario();
                String usuario = request.getParameter("txtusuario");
                String clave = request.getParameter("txtcontra");
                CrudUsuario obj = new CrudUsuario();
                int tipoUsuario = obj.autenticarUsuario(usuario, clave);
                HttpSession objSesion = request.getSession(false);
                    HttpSession objSesionId = request.getSession(false);
                    HttpSession objSesionTipo = request.getSession(false);
                if (tipoUsuario == 1) {
                    
                    objSesion.setAttribute("usuario", usuario);
                    objSesionTipo.setAttribute("tipo", "Administrador");
                    objSesionId.setAttribute("id",u.getIdUsuario());
                    if (request.getParameter("ck") != null) {
                        Cookie valor_guardar = new Cookie("usuario", usuario);
                        valor_guardar.setMaxAge(60 * 60 * 24);
                        response.addCookie(valor_guardar);
                    }
                    request.getRequestDispatcher("redireccionLogin.jsp").forward(request, response);
                } else if (tipoUsuario == 2) {
                    objSesion.setAttribute("usuario", usuario);
                    objSesionTipo.setAttribute("tipo", "Empleador");
                    objSesionId.setAttribute("idEmpleador",u.getIdUsuario());
                    if (request.getParameter("ck") != null) {
                        Cookie valor_guardar = new Cookie("usuario", usuario);
                        valor_guardar.setMaxAge(60 * 60 * 24);
                        response.addCookie(valor_guardar);
                    }
                    request.getRequestDispatcher("redireccionLogin.jsp").forward(request, response);
                } else if (tipoUsuario == 2) {
                    objSesion.setAttribute("usuario", usuario);
                    objSesionTipo.setAttribute("tipo", "Empresa");
                    objSesionId.setAttribute("idEmpresa",u.getIdUsuario());
                    if (request.getParameter("ck") != null) {
                        Cookie valor_guardar = new Cookie("usuario", usuario);
                        valor_guardar.setMaxAge(60 * 60 * 24);
                        response.addCookie(valor_guardar);
                    }
                    request.getRequestDispatcher("redireccionLogin.jsp").forward(request, response);
                } else {
                    objSesionTipo.setAttribute("tipo", null);
                    response.sendRedirect("registro.jsp");
                }
            }
        } catch (Exception e) {
            out.print(e.toString());
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
        try {
            processRequest(request, response);
        } catch (Exception e) {
        }

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
        try {
            processRequest(request, response);
        } catch (Exception e) {
        }

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
