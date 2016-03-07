/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import bean.UserBean;
import db.UserDB;
import etc.SessionIdentifierGenerator;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Anson
 */
@WebServlet(name = "ResetPswd_Admin", urlPatterns = {"/rp"})
public class ResetPswd_Admin extends HttpServlet {

    private SessionIdentifierGenerator si;
    private UserDB db;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }

    public void init() throws ServletException {
        String dbUser = this.getServletContext().getInitParameter("dbUser");
        String dbPassword = this.getServletContext().getInitParameter("dbPassword");
        String dbUrl = this.getServletContext().getInitParameter("dbUrl");
        db = new UserDB(dbUrl, dbUser, dbPassword);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher rd = null;
        String mid = request.getParameter("id");
        UserBean bean = db.queryUserByID(mid);
        if (bean != null) {
            si = new SessionIdentifierGenerator();
            String newPswd = si.nextSessionId();
            rd = getServletContext().getRequestDispatcher("/m_resetPassword.jsp");
            request.setAttribute("bean", bean);
            request.setAttribute("pswd", newPswd);
        }
        rd.forward(request, response);

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
