package com.pst.flip.Controller;

import com.pst.flip.DTO.Flipkart_Dto;
import com.pst.flip.DAO.ProductDao;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;
@WebServlet("/ProductController")
public class ProductController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        ProductDao dao = new ProductDao();
        List<Flipkart_Dto> products = dao.getAllProducts();

        req.setAttribute("products", products);
        RequestDispatcher rd = req.getRequestDispatcher("intro.jsp");
        rd.forward(req, resp);
    }
}
