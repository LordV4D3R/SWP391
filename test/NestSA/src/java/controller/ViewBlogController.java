/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import post.PostDAO;
import post.PostDTO;

/**
 *
 * @author Loi Lam
 */
@WebServlet(name = "ViewBlogController", urlPatterns = {"/ViewBlogController"})
public class ViewBlogController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    private static final String ERROR = "error.jsp";
    private static final String SUCCESS  = "blogdetails.jsp";
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String url=ERROR;
        try {
            int postId = Integer.parseInt(request.getParameter("postId"));
//            String image = request.getParameter("image");
//            String postContent = request.getParameter("postContent");
//            String postTitle = request.getParameter("postTitle");
//            String category = request.getParameter("category");
////            String dateP = request.getParameter("dateUpload");
//            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
//            Date dateUpload = sdf.parse(request.getParameter("dateUpload"));
            
            PostDAO pDao = new PostDAO();
            
            PostDTO post = pDao.detailsBlog(postId);
            HttpSession session = request.getSession();
            session.setAttribute("POST_DETAILS", post);
            url = SUCCESS;
        } catch (Exception e) {
        } finally {
            response.sendRedirect(url);
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