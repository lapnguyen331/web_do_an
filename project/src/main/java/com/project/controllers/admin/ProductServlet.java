package com.project.controllers.admin;

import com.project.helpers.PropertiesFileHelper;
import com.project.services.ProductService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.json.JSONArray;
import org.json.JSONObject;

import java.io.*;
import java.util.Properties;

@WebServlet(name = "AdminProduct", urlPatterns = {"/admin/product"})
public class ProductServlet extends HttpServlet {
    private static final Properties prop = PropertiesFileHelper.getProperties("external.properties");
    private final ProductService productService;
    private static final int DEFAULT_BUFFER_SIZE = 102400;

    public ProductServlet() {
        this.productService = new ProductService();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String action = request.getParameter("action");
        var out = response.getWriter();
        if (action != null) {
            switch (action) {
                case "get":
                {
                    response.setContentType("text/plain");
                    String json = getJSONProducts();
                    out.println(json);
                    out.flush();
                    break;
                }
            }
            return;
        }
        request.getRequestDispatcher("/WEB-INF/view/admin/product.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    private String getJSONProducts() {
        var all = productService.getAll_FullDetails();
        JSONArray data = new JSONArray();
        for (var product : all) {
            JSONObject obj = new JSONObject();
            obj.put("id", product.getId())
                    .put("name", product.getName())
                    .put("specific", product.getSpecification())
                    .put("discount", product.getDiscount().getDiscountPercent())
                    .put("image", product.getThumbnail().getPath())
                    .put("rate", 4.9)
                    .put("price", product.getPrice())
                    .put("category", product.getCategory().getId());
            data.put(obj);
        }
        JSONObject rs = new JSONObject();
        rs.put("data", data);
        return rs.toString();
    }
}