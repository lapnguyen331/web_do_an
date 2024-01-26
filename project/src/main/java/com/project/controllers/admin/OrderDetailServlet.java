package com.project.controllers.admin;

import com.project.exceptions.NotEnoughQuantityException;
import com.project.exceptions.NotFoundProductException;
import com.project.models.Order;
import com.project.models.OrderItem;
import com.project.models.Product;
import com.project.services.OrderItemService;
import com.project.services.OrderService;
import com.project.services.ProductService;
import com.project.services.UserService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.json.JSONArray;
import org.json.JSONObject;

import java.io.IOException;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@WebServlet(name = "OrderDetailsServlet", value = "/admin/order/*")
public class OrderDetailServlet extends HttpServlet {
    private OrderService orderService;
    private UserService userService;
    private ProductService productService;
    private OrderItemService orderItemService;

    public OrderDetailServlet() {
        this.orderService = new OrderService();
        this.userService = new UserService(orderService.getHandle());
        this.productService = new ProductService(orderService.getHandle());
        this.orderItemService = new OrderItemService(orderService.getHandle());
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getPathInfo();
        switch (action) {
            case "/update":
                int id = Integer.parseInt(request.getParameter("id"));
                request.setAttribute("id", id);
                showUpdatePage(request, response);
                break;
        }
    }

    private void showUpdatePage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = (int) request.getAttribute("id");
        var order = orderService.getOrderById(id);
        int userid = order.getUser().getId();
        var user = userService.getInforById(userid);
        request.setAttribute("order", order);
        request.setAttribute("user", user);
        request.setAttribute("status", Arrays.asList("Hủy đơn hàng", "Đã giao", "Đang giao", "Đang trả về"));
        request.getRequestDispatcher("/WEB-INF/view/admin/order_details_update.jsp").forward(request, response);
    }

    private List<OrderItem> mapJSONToList(String JSON) {
        JSONArray arr = new JSONArray(JSON);
        List<OrderItem> list = new ArrayList<>();
        for (int i = 0; i < arr.length(); i++) {
            JSONObject json = arr.getJSONObject(i);
            int productId = json.getInt("productId");
            int quantity = json.getInt("quantity");
            Product product = productService.getById(productId);
            int orderId = json.getInt("orderId");
            Order order = orderService.getOrderById(orderId);
            float price = product.getDiscountPrice() * quantity;
            OrderItem orderItem = new OrderItem(order, product, quantity, price, null, null);
            list.add(orderItem);
        }
        return list;
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getPathInfo();
        switch (action) {
            case "/update":
                doUpdate(request, response);
                break;
        }
    }

    private void doUpdate(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        int id = Integer.parseInt(request.getParameter("orderId"));
        int status = Integer.parseInt(request.getParameter("status"));
        String receiverName = request.getParameter("receiverName");
        String receiverEmail = request.getParameter("receiverEmail");
        String receiverPhone = request.getParameter("receiverPhone");
        String receiverAddress = request.getParameter("receiverAddress");
        String json = request.getParameter("items");
        List<OrderItem> items =  mapJSONToList(json);
        var order = orderService.getOrderById(id);
        orderService.begin();
//        Add lại số lượng product
        try {
//        Xóa hết các order items cũ đi
            orderItemService.clearOrderItemsOf(order);
//        Thêm lại từng orderItem vào trong order này:
            for (var item : items) {
                orderItemService.insert(item);
            }
            order.setStatus(status);
            float totalPrice = items.stream().map(odi -> odi.getPrice()).reduce(0f, Float::sum);
            order.setTotalPrice(totalPrice);
            order.setUpdateAt(LocalDateTime.now());
            order.setReceiverName(receiverName);
            order.setReceiverEmail(receiverEmail);
            order.setReceiverPhone(receiverPhone);
            order.setReceiverAddress(receiverAddress);
//        Update lại order
            orderService.update(order);
            orderService.commit();
            request.setAttribute("message", "Update đơn hàng thành công");
        } catch (NotFoundProductException e) {
            orderService.rollback();
            request.setAttribute("message", "Không tìm thấy sản phẩm");

        } catch (NotEnoughQuantityException e) {
            orderService.rollback();
            request.setAttribute("message", e.getMessage());
        }
        request.setAttribute("id", id);
        showUpdatePage(request, response);
    }
}