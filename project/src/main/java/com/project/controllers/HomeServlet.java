package com.project.controllers;

import com.project.models.Cart;
import com.project.models.Category;
import com.project.models.Product;
import com.project.services.ProductService;
import jakarta.servlet.*;
import jakarta.servlet.annotation.*;
import jakarta.servlet.http.*;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@WebServlet(name = "HomeServlet", urlPatterns = {"/home"})
public class HomeServlet extends HttpServlet {
    private ProductService productService;

    @Override
    public void init() throws ServletException {
        this.productService = ProductService.getInstance();
        super.init();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);
        var cart = session.getAttribute("cart");
        List<Category> categories = (List<Category>) session.getAttribute("categories");
        Map<String, List<Product>> products1 = new HashMap<>();
        categories.stream().forEach(c -> {
            String key = c.getName();
            var value = productService.getALlOf(c);
            products1.put(key, value);
        });
        request.setAttribute("products1", products1);
        request.setAttribute("products2", productService.getTop4());
        if (cart == null) {
            cart = new Cart();
            session.setAttribute("cart", cart);
        }
        request.getRequestDispatcher("/WEB-INF/view/home.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}