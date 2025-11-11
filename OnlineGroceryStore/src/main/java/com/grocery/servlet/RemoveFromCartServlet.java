package com.grocery.servlet;

import com.grocery.model.Product;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.util.List;

@WebServlet("/removefromcart")
public class RemoveFromCartServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @SuppressWarnings("unchecked")
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        int productId = Integer.parseInt(request.getParameter("productId"));

        HttpSession session = request.getSession(false);
        if (session != null) {
            List<Product> cart = (List<Product>) session.getAttribute("cart");
            if (cart != null) {
                cart.removeIf(p -> p.getId() == productId);
                session.setAttribute("cart", cart);
            }
        }

        response.sendRedirect("viewcart");
    }
}
