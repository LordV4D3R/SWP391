/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Admin
 */
public class MainController extends HttpServlet {

    private static final String ERROR = "error.jsp";
    private static final String SEARCH = "Search";
    private static final String SEARCH_CONTROLLER = "SearchController";
    private static final String LOGIN = "Login";
    private static final String LOGINCONTROLLER = "LoginController";
    private static final String REGISTER = "SignUp";
    private static final String REGISTER_CONTROLLER = "RegisterController";
    private static final String DETAIL = "Detail";
    private static final String DETAIL_CONTROLLER = "DetailController";
    private static final String BUY_NOW = "BuyNow";
    private static final String BUY_NOW_CONTROLLER = "BuyNowController";
    private static final String ADD_TO_CART = "AddToCart";
    private static final String ADD_TO_CART_CONTROLLER = "AddToCartController";
    private static final String REMOVE_CART = "RemoveCart";
    private static final String REMOVE_CART_CONTROLLER = "RemoveCartController";
    private static final String UPDATE_CART = "UpdateCart";
    private static final String UPDATE_CART_CONTROLLER = "UpdateCartController";
    private static final String LOGOUT = "Logout";
    private static final String LOGOUT_CONTROLLER = "LogoutController";
    private static final String VIEW_PRODUCT_BY_CATEGORY = "ViewProductByCategory";
    private static final String VIEW_PRODUCT_BY_CATEGORY_CONTROLLER = "ViewProductByCategoryController";
    private static final String VIEW_CATEGORY = "ViewCategory";
    private static final String VIEW_CATEGORY_CONTROLLER = "ViewCategoryController";
    private static final String SAVE_INFO = "SaveInfo";
    private static final String SAVE_INFO_CONTROLLER = "SaveInfoController";
    private static final String CONTACT = "Send";
    private static final String CONTACT_CONTROLLER = "ContactController";
    private static final String PURCHASE = "Purchase";
    private static final String PURCHASE_CONTROLLER = "PurchaseController";
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String url = ERROR;
        String action = request.getParameter("btAction");
        try {
            if (action == null) {
                log("Sai roi kia dcm");
            } else if (action.equals(LOGIN)) {
                url = LOGINCONTROLLER;
            } else if (SEARCH.equals(action)) {
                url = SEARCH_CONTROLLER;
            } else if (action.equals(ADD_TO_CART)) {
                url = ADD_TO_CART_CONTROLLER;
            } else if (action.equals(DETAIL)) {
                url = DETAIL_CONTROLLER;
            } else if (action.equals(BUY_NOW)) {
                url = BUY_NOW_CONTROLLER;
            } else if (action.equals(REMOVE_CART)) {
                url = REMOVE_CART_CONTROLLER;
            } else if (action.equals(UPDATE_CART)) {
                url = UPDATE_CART_CONTROLLER;
            } else if (action.equals(VIEW_PRODUCT_BY_CATEGORY)) {
                url = VIEW_PRODUCT_BY_CATEGORY_CONTROLLER;
            } else if (action.equals(REGISTER)) {
                url = REGISTER_CONTROLLER;
            } else if (action.equals(LOGOUT)) {
                url = LOGOUT_CONTROLLER;
            } else if (action.equals(VIEW_CATEGORY)) {
                url = VIEW_CATEGORY_CONTROLLER;
            } else if (action.equals(SAVE_INFO)) {
                url = SAVE_INFO_CONTROLLER;
            } else if (action.equals(CONTACT)) {
                url = CONTACT_CONTROLLER;
            }else if(action.equals(SAVE_INFO)){
                url=SAVE_INFO_CONTROLLER;
            } else if (action.equals(PURCHASE)) {
                url = PURCHASE_CONTROLLER;
            }
        } catch (Exception e) {
            e.printStackTrace();
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
