package com.pst.flip.Controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet("/buy")
public class BuyController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int productId=Integer.parseInt(request.getParameter("productId"));
		
		request.setAttribute("productId", productId);
		request.getRequestDispatcher("Address.jsp").forward(request, response);
		
	}

}
