package com.pst.flip.Controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet("/payment")
public class PaymentController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
	        throws ServletException, IOException {

	    String pid = request.getParameter("productId");
	    String address = request.getParameter("address");

	    System.out.println("DEBUG productId = " + pid);

	    // Validation
	    if (pid == null || pid.trim().isEmpty()) {
	        response.sendRedirect("error.jsp");
	        return;
	    }

	    int productId;
	    try {
	        productId = Integer.parseInt(pid);
	    } catch (NumberFormatException e) {
	        response.sendRedirect("error.jsp");
	        return;
	    }

	    request.getSession().setAttribute("productId", productId); 
	    request.getSession().setAttribute("address", address); 
	    request.getRequestDispatcher("Payment.jsp").forward(request, response);
	}


}
