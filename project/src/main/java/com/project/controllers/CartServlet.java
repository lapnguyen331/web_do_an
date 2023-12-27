package com.project.controllers;
import com.project.models.Cart;
import com.project.services.ProductService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.json.JSONArray;
import org.json.JSONObject;
import java.io.IOException;

@WebServlet(name = "CartAction", urlPatterns = {"/cartAction"})
public class CartServlet extends HttpServlet {
    private ProductService productService = ProductService.getInstance();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/view/details_cart.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        var out = response.getWriter();
        response.setContentType("application/json");
        JSONObject json = new JSONObject();
        String action = request.getParameter("action");
        Cart cart = (Cart) request.getSession(false).getAttribute("cart");

        switch (action) {
            case "get": {
                var set = cart.getProducts().entrySet();
                JSONArray arr = new JSONArray();
                JSONObject obj;
                for (var entry : set) {
                    obj = new JSONObject();
                    obj.put("id", entry.getKey());
                    obj.put("item", JSONObject.wrap(entry.getValue()));
                    arr.put(obj);
                }
                out.print(arr);
                out.flush();
            }
            break;
            case "add": {
                int id = Integer.parseInt(request.getParameter("productId"));
                var product  = productService.getById(id);
                cart.put(product);
                json.put("status", HttpServletResponse.SC_OK);
                json.put("msg", "Thêm thành công sản phẩm vào giỏ hàng!");
                out.print(json);
                out.flush();
            }
            break;
            case "remove": {
                int id = Integer.parseInt(request.getParameter("productId"));
                var product  = productService.getById(id);
                cart.remove(product);
                json.put("status", HttpServletResponse.SC_OK);
                json.put("msg", "Đã xóa thành công sản phẩm ra khỏi giỏ hàng!");
                out.print(json);
                out.flush();
            }
            break;
            case "increase": {
                int id = Integer.parseInt(request.getParameter("productId"));
                var item = cart.getItem(id);
                item.increase();
                json.put("status", HttpServletResponse.SC_OK);
                json.put("msg", "Đã cập nhật số lượng sản phẩm!");
                out.print(json);
                out.flush();
            }
            break;
            case "decrease": {
                int id = Integer.parseInt(request.getParameter("productId"));
                var item = cart.getItem(id);
                item.decrease();
                json.put("status", HttpServletResponse.SC_OK);
                json.put("msg", "Đã cập nhật số lượng sản phẩm!");
                out.print(json);
                out.flush();
            }
            break;
        }
    }
}