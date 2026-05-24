package com.pst.flip.Controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

import com.pst.flip.DAO.CartDAO;
import com.pst.flip.DTO.CartDTO;


@WebServlet("/viewCart")
public class ViewCartController extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        int userId = 1; // temporary (later from session)

        CartDAO dao = new CartDAO();
        List<CartDTO> cart = dao.getCartByUser(userId);

        request.setAttribute("cart", cart);
        request.getRequestDispatcher("viewCart.jsp")
               .forward(request, response);
    }
}

