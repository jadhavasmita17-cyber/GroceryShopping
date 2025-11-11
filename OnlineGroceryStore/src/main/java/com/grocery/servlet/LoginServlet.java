package com.grocery.servlet;

import java.io.IOException;

import com.grocery.dao.UserDAO;
import com.grocery.model.User;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String email = request.getParameter("email");
        String password = request.getParameter("password");

        UserDAO dao = new UserDAO();
        User user = dao.loginUser(email, password);

        HttpSession session = request.getSession();

        if(user != null){
            session.setAttribute("user", user); // store user in session
            response.sendRedirect("products"); // redirect to homepage
        } else {
            // Show login page with error
            response.sendRedirect("products.jsp");
        }
    }
}
