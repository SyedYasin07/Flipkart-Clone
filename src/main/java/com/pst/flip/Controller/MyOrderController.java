// package com.pst.flip.Controller;

// import java.io.IOException;
// import java.util.List;

// import com.pst.flip.DAO.OrderDAO;
// import com.pst.flip.DTO.OrderDTO;

// import jakarta.servlet.ServletException;
// import jakarta.servlet.annotation.WebServlet;
// import jakarta.servlet.http.HttpServlet;
// import jakarta.servlet.http.HttpServletRequest;
// import jakarta.servlet.http.HttpServletResponse;

// @WebServlet("/myOrders")
// public class MyOrderController extends HttpServlet {

//     private static final long serialVersionUID = 1L;

//     protected void doGet(HttpServletRequest request,
//                          HttpServletResponse response)
//             throws ServletException, IOException {

//         int userId = Integer.parseInt(request.getParameter("userId"));

//         System.out.println("USER ID = " + userId);

//         OrderDAO dao = new OrderDAO();

//         List<OrderDTO> orders = dao.getOrdersByUser(userId);

//         System.out.println("ORDERS SIZE = " + orders.size());

//         request.setAttribute("orders", orders);

//         request.getRequestDispatcher("myOrders.jsp")
//                .forward(request, response);
//     }
// }
package com.pst.flip.Controller;

import java.io.IOException;
import java.util.List;

import com.pst.flip.DAO.OrderDAO;
import com.pst.flip.DTO.OrderDTO;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/myOrders")
public class MyOrderController extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession();

        Integer userId = (Integer) session.getAttribute("userId");

        if(userId == null){
            response.sendRedirect("intro.jsp");
            return;
        }

        System.out.println("USER ID = " + userId);

        OrderDAO dao = new OrderDAO();

        List<OrderDTO> orders = dao.getOrdersByUser(userId);

        System.out.println("ORDERS SIZE = " + orders.size());

        request.setAttribute("orders", orders);

        request.getRequestDispatcher("myOrders.jsp")
               .forward(request, response);
    }
}