package com.project.dao.implement;

import com.project.dao.AbstractDAO;
import com.project.dao.IProductDAO;
import com.project.mappers.*;
import com.project.models.Category;
import com.project.models.Product;
import org.jdbi.v3.core.Handle;
import java.time.LocalDateTime;
import java.util.Arrays;
import java.util.List;

public class ProductDAO extends AbstractDAO<Product> implements IProductDAO {
    public ProductDAO(Handle handle) {
        super(handle);
    }

    @Override
    public List<Product> selectAll_fullDetails() {
        String SELECT_ALL = "SELECT * FROM <table1> p" +
                " LEFT JOIN <table2> t ON p.thumbnail = t.id" +
                " LEFT JOIN <table3> pr ON p.producerId = pr.id" +
                " LEFT JOIN <table4> c ON p.categoryId = c.id" +
                " LEFT JOIN <table5> d ON p.discountId = d.id" +
                " LEFT JOIN <table6> b ON p.blogId = b.id";
        return query(SELECT_ALL, Product.class, (query) -> {
            query.define("table1", "products")
                    .define("table2", "images")
                    .define("table3", "producers")
                    .define("table4", "categories")
                    .define("table5", "discounts")
                    .define("table6", "blogs");
        }, new ProductRowMapper("p"),
                new ImageRowMapper("t"),
                new ProducerRowMapper("pr"),
                new CategoryRowMapper("c"),
                new DiscountRowMapper("d"),
                new BlogRowMapper("b"));
    }

    @Override
    public List<Product> selectAll_shortDetails() {
        String SELECT = "SELECT <columns> FROM <table1> p" +
                " LEFT JOIN <table2> t ON p.thumbnail = t.id" +
                " LEFT JOIN <table3> d ON p.discountId = d.id";
        return query(SELECT, Product.class,
                (query) -> {
                    query.define("table1", "products");
                    query.define("table2", "images");
                    query.define("table3", "discounts");
                    query.defineList("columns", "p.name, p.description, t.path, d.discountPercent");
                },
                new ProductRowMapper("p"), new ImageRowMapper("t"), new DiscountRowMapper("d"));
    }

    @Override
    public List<Product> selectTop4_shortDetails() {
        String SELECT = "SELECT <columns> FROM <table1> p" +
                " LEFT JOIN <table2> t ON p.thumbnail = t.id" +
                " LEFT JOIN <table3> d ON p.discountId = d.id" +
                " ORDER BY p.name DESC LIMIT 4";
        return query(SELECT, Product.class,
                (query) -> {
                    query.define("table1", "products");
                    query.define("table2", "images");
                    query.define("table3", "discounts");
                    query.defineList("columns", "p.name, p.price, p.description, t.path, d.discountPercent");
                },
                new ProductRowMapper("p"), new ImageRowMapper("t"), new DiscountRowMapper("d"));
    }

    @Override
    public List<Product> selectTop3ProductsOf_shortDetails(Category category) {
        String SELECT = "SELECT <columns> FROM <table1> p" +
                " LEFT JOIN <table2> t ON p.thumbnail = t.id" +
                " LEFT JOIN <table3> d ON p.discountId = d.id" +
                " WHERE p.categoryId = :c.id" +
                " ORDER BY p.name DESC LIMIT 3";
        return query(SELECT, Product.class,
                (query) -> {
                    query.define("table1", "products")
                            .define("table2", "images")
                            .define("table3", "discounts")
                            .defineList("columns", "p.name, p.price, p.description, t.path, d.discountPercent")
                            .bindBean("c", category);
                },
                new ProductRowMapper("p"), new ImageRowMapper("t"), new DiscountRowMapper("d"));
    }

    @Override
    public int insert(Product p) throws Exception {
        var values = Arrays.asList(
                p.getName(),
                p.getPrice(),
                p.getQuantity(),
                p.getMinAge(),
                p.getThumbnail() == null ? null : p.getThumbnail().getId(),
                p.getSpecification(),
                p.getWeight(),
                p.isStatus(),
                p.getBrand(),
                p.getDescription(),
                p.getProducer() == null ? null : p.getProducer().getId(),
                p.getCategory() == null ? null : p.getCategory().getId(),
                p.getDiscount() == null ? null : p.getDiscount().getId(),
                p.getBlog() == null ? null : p.getBlog().getId(),
                p.getCreateAt() == null ? LocalDateTime.now() : p.getCreateAt(),
                p.getUpdateAt() == null ? LocalDateTime.now() : p.getUpdateAt()
        );
        var columns = Arrays.asList(
                "name",
                "price",
                "quantity",
                "minAge",
                "thumbnail",
                "specification",
                "weight",
                "status",
                "brand",
                "description",
                "producerId",
                "categoryId",
                "discountId",
                "blogId",
                "createAt",
                "updateAt"
        );
        String INSERT = "INSERT INTO <table> (<columns>) VALUES (<values>)";
        return insertAndReturnGeneratedKeys(INSERT, "id", update -> {
            update.define("table", "products")
                    .defineList("columns", columns)
                    .bindList("values", values);
        }).mapTo(int.class).one();
    }

    @Override
    public boolean checkExists(int id) {
        String CHECK_EXIST_BY_ID = "SELECT id FROM products WHERE products.id = :id";
        return check(CHECK_EXIST_BY_ID, (query -> {
            query.bind("id", id);
            return query.mapTo(Integer.class).findOne().isPresent();
        }));
    }

    @Override
    public Product findOne(int id) {
        return null;
    }

    public static void main(String[] args) {

    }
}
