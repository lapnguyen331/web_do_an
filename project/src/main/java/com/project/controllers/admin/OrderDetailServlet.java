package com.project.controllers.admin;

import com.project.services.OrderService;
import com.project.services.UserService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(name = "OrderServlet", value = "/admin/order/*")
public class OrderDetailServlet extends HttpServlet {
    private OrderService orderService;
    private UserService userService;

    public OrderDetailServlet() {
        this.orderService = new OrderService();
        this.userService = new UserService(orderService.getHandle());
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getPathInfo();
        switch (action) {
            case "/update":
                showUpdatePage(request, response);
                break;
        }
    }

    private void showUpdatePage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        var order = orderService.getOrderById(id);
        int userid = order.getUser().getId();
        var user = userService.getInforById(userid);
        request.setAttribute("order", order);
        request.setAttribute("user", user);
        request.getRequestDispatcher("/WEB-INF/view/admin/order_details_update.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}