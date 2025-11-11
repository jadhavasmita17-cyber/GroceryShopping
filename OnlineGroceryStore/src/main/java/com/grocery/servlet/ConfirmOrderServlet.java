package com.grocery.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.List;
import com.grocery.model.Product;

@WebServlet("/confirmOrder")
public class ConfirmOrderServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession(false);
        if (session != null) {
            List<Product> cart = (List<Product>) session.getAttribute("cart");

            // Here you can save the order in DB if you want (optional)
            // For now, just clear cart
            session.removeAttribute("cart");
        }

        // Redirect to Thank You page
        response.sendRedirect("thankyou.jsp");
    }
}
