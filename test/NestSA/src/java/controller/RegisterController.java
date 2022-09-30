/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import javax.naming.NamingException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import users.UserDAO;
import users.UserDTO;
import users.UserError;

/**
 *
 * @author tranq
 */
@WebServlet(name = "RegisterController", urlPatterns = {"/RegisterController"})
public class RegisterController extends HttpServlet {

    private final String LOGIN_PAGE = "";

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
        String username = request.getParameter("txtRegisterUsername");
        String password = request.getParameter("txtRegisterPassword");
        String confirm = request.getParameter("txtConfirmPassword");

        UserError errors = new UserError();
        boolean foundErr = false;
        String url = null; //fix here
        try {
            if (confirm.trim().equals(password.trim())) {
                foundErr = true;
                errors.setConfirmNotMatch("Those passwords didn’t match. Try again ");
            } else {
                //insert to db - call dao 
                UserDTO dto
                        = new UserDTO(0, password, url, null,
                                null, null, "C", username);
                //userID random then check it if it duplicate`
                UserDAO dao = new UserDAO();
                boolean result = dao.createAccount(dto);

                if (result) {
                    //. transfer to Login page
                    url = LOGIN_PAGE;
                }
            }

        } catch (SQLException ex) {
            String msg = ex.getMessage();
            log("RegisterController _ SQL _ " + msg);
            if (msg.contains("duplicate")) {
                errors.setUsernameDuplicate(username + " existed!!!");
                request.setAttribute("INSERT_ERRORS", ex);
            }
        } catch (NamingException ex) {
            log("RegisterController _ Naming _ " + ex.getMessage());
        } finally {
            RequestDispatcher rd = request.getRequestDispatcher(url);
            rd.forward(request, response);
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
