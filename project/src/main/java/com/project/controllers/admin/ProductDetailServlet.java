package com.project.controllers.admin;

import com.mysql.cj.exceptions.OperationCancelledException;
import com.project.exceptions.NotFoundProductException;
import com.project.helpers.PropertiesFileHelper;
import com.project.models.Image;
import com.project.models.Product;
import com.project.services.*;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
import org.json.JSONArray;
import org.json.JSONObject;

import jakarta.servlet.annotation.MultipartConfig;
import java.io.IOException;
import java.net.URI;
import java.net.URISyntaxException;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Properties;

@MultipartConfig()
@WebServlet(name = "AdminProductDetail", urlPatterns = {"/admin/product/detail/*"})
public class ProductDetailServlet extends HttpServlet {
    private final ProductService productService;
    private final ImageService imageService;
    private final ProducerService producerService;
    private final CategoryService categoryService;
    private final BlogService blogService;

    public ProductDetailServlet() {
        this.productService = new ProductService();
        this.imageService = new ImageService();
        this.producerService = new ProducerService();
        this.categoryService = new CategoryService();
        this.blogService = new BlogService();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String action = request.getPathInfo();
        var producers = producerService.getAll();
        request.setAttribute("producers", producers);
        switch (action) {
            case "/update": {
                showUpdatePage(request, response);
                return;
            }
            case "/new": {
                showNewPage(request, response);
                return;
            }
        }
    }

    private void showNewPage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/view/admin/product_details_new.jsp").forward(request, response);
    }

    private void showUpdatePage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        Product product = productService.getById(id);
        var galleries = imageService.getGalleriesOf(product);
        request.setAttribute("product", product);
        request.setAttribute("galleries", galleries);
        request.getRequestDispatcher("/WEB-INF/view/admin/product_details_update.jsp").forward(request, response);
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getRequestURI().substring(request.getRequestURI().lastIndexOf("/"));
        switch (action) {
            case "/update":
                doUpdate(request, response);
                break;
            case "/new":
                doAdd(request, response);
                break;
        }
    }

    private void doAdd(HttpServletRequest request, HttpServletResponse response) {

    }

    private void doUpdate(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        float price = Float.parseFloat(request.getParameter("price"));
        var category = categoryService.findCateById(Integer.parseInt(request.getParameter("categoryId")));
        String specification = request.getParameter("specification");
        float weight = Float.parseFloat(request.getParameter("weight"));
        String brand = request.getParameter("brand");
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        int minAge = Integer.parseInt(request.getParameter("minAge"));
        var producer = producerService.getById(Integer.parseInt(request.getParameter("producerId")));
        String description = request.getParameter("description");
        LocalDateTime updateAt = LocalDateTime.now();
        boolean status = Boolean.parseBoolean(request.getParameter("status"));
        var blog = blogService.findById(Integer.parseInt(request.getParameter("blogId")));
        Part thumbnail_new = request.getParts().stream()
                .filter(p -> "thumbnail-new-image[]".equals(p.getName()))
                .filter(p -> p.getSize() != 0)
                .findFirst().orElse(null);
        String[] thumbnail_old = request.getParameterValues("thumbnail-old-image[]");
        Image thumbnail = null;
        List<Part> gallery_new = request.getParts().stream().filter(p -> "gallery-new-image[]".equals(p.getName()))
                .filter(p -> p.getSize() != 0)
                .toList();
        String[] gallery_old = request.getParameterValues("gallery-old-image[]");
        try {
            imageService.begin();
            var handle = imageService.getHandle();
            var sub_productService = new ProductService(handle);
            if (thumbnail_new != null) {
//                System.out.println(request.getServletContext().getRealPath("/assests"));
                int imgId = imageService.createAndInsert(thumbnail_new, request.getServletContext().getRealPath("/assests"));
                thumbnail = imageService.findOneById(imgId);
            } else if (thumbnail_old != null) {
                String uuid = getUUID(thumbnail_old[0]);
                thumbnail = imageService.findOneByUUID(uuid);
            }
            Product product = sub_productService.getById(id);
            {
                product.setName(name);
                product.setPrice(price);
                product.setQuantity(quantity);
                product.setMinAge(minAge);
                product.setThumbnail(thumbnail);
                product.setSpecification(specification);
                product.setWeight(weight);
                product.setStatus(status);
                product.setBrand(brand);
                product.setDescription(description);
                product.setProducer(producer);
                product.setCategory(category);
                product.setBlog(blog);
                product.setUpdateAt(updateAt);
            }
            int update = sub_productService.updateProduct(product);
            if (update <= 0) throw new OperationCancelledException();
            int delete = imageService.clearGalleries(product);
            if (!gallery_new.isEmpty()) {
                for (Part p : gallery_new) {
                    int insertedKey = imageService.createAndInsert(p, request.getServletContext().getRealPath("/assests"));
                    imageService.insertToGalleryOf(product, imageService.findOneById(insertedKey));
                }
            }
            if (gallery_old != null) {
                for (String s : gallery_old) {
                    String uuid = getUUID(s);
                    var gallery = imageService.findOneByUUID(uuid);
                    imageService.insertToGalleryOf(product, gallery);
                }
            }
            imageService.rollback();
        } catch (IOException e) {
            e.printStackTrace();
            imageService.rollback();
        } catch (NotFoundProductException e) {
            throw new RuntimeException(e);
        }
        request.setAttribute("message", "Update sản phẩm thành công");
        response.sendRedirect(request.getContextPath()+"/admin/product/detail/update?id="+id);
    }
    private String getUUID(String link) {
        String fileName = link.substring(link.lastIndexOf('/')+1, link.length());
        return fileName.substring(0, fileName.lastIndexOf("."));
    }
}