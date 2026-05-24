package com.pst.flip.Controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.pst.flip.DAO.OrderDAO;
import com.pst.flip.DTO.OrderDTO;


@WebServlet("/orderAction")
public class OrderActionController extends HttpServlet {

	private static final long serialVersionUID = 1L;
       
   
	
	    protected void doGet(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException {

	        String action = request.getParameter("action");
	        int orderId = Integer.parseInt(request.getParameter("id"));

	        OrderDAO dao = new OrderDAO();

	        if ("delete".equals(action)) {
	            dao.deleteOrder(orderId);
	            response.sendRedirect("myOrders");

	        } else if ("view".equals(action)) {
	            OrderDTO order = dao.getOrderById(orderId);
	            request.setAttribute("order", order);
	            request.getRequestDispatcher("viewOrder.jsp").forward(request, response);
	        }
	    }
	}


