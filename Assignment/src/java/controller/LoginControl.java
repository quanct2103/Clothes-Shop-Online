/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller;

import dal.DAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.TaiKhoan;

/**
 *
 * @author Admin
 */
public class LoginControl extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet LoginControl</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet LoginControl at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        
    	Cookie arr[] = request.getCookies();
    	if(arr != null) {
    		for(Cookie o : arr) {
        		if(o.getName().equals("userC")) {
        			request.setAttribute("username", o.getValue());
        		}
        		if(o.getName().equals("passC")) {
        			request.setAttribute("password", o.getValue());
        		}
        	}
    	}
    
        request.getRequestDispatcher("Login.jsp").forward(request, response);
    } 

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
         String username = request.getParameter("user");
         String password = request.getParameter("pass");
         String remember =request.getParameter("remember");
         
         DAO dao = new DAO();
         TaiKhoan a = dao.login(username, password);
         if (a == null) {
             request.setAttribute("error", "Sai username hoac password!");
             request.getRequestDispatcher("Login.jsp").forward(request, response);
         } else {
             HttpSession session = request.getSession();
             
             session.setAttribute("acc", a);
             session.setMaxInactiveInterval(60*60*24);
           
             Cookie u = new Cookie("userC", username);
             Cookie p = new Cookie("passC", password);
             if(remember != null) {
            	 p.setMaxAge(60*60*24);
             }else {
            	 p.setMaxAge(0);
             }
             
             u.setMaxAge(60*60*24*365);

             response.addCookie(u);
             response.addCookie(p);
             if(a.getIsAdmin()==1){
                 response.sendRedirect("admin");
             }else{
                 response.sendRedirect("home");
             }
         }
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
