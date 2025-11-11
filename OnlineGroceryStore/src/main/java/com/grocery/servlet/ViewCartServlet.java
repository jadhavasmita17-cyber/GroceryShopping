package com.grocery.servlet;

import com.grocery.model.Product;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.util.List;

@WebServlet("/viewcart")
public class ViewCartServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @SuppressWarnings("unchecked")
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession(false); // don't create new
        List<Product> cart = null;

        if (session != null) {
            cart = (List<Product>) session.getAttribute("cart");
        }

        request.setAttribute("cart", cart);
        request.getRequestDispatcher("viewcart.jsp").forward(request, response);
    }
}

