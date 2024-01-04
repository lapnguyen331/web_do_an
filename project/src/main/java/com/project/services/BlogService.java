package com.project.services;

import com.project.dao.IBlogDAO;
import com.project.dao.implement.BlogDAO;
import com.project.dao.implement.FactoryDAO;
import com.project.dao.implement.ImageDAO;
import com.project.listeners.ContextListener;
import com.project.models.Blog;
import com.project.models.Image;
import com.project.models.User;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;

import java.io.*;
import java.net.URL;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.UUID;

public class BlogService {
    private static BlogService instance;
    private IBlogDAO blogDAO;
    private ImageDAO imageDAO;

    public static BlogService getInstance() {
        if (instance == null) instance = new BlogService();
        return instance;
    }

    private BlogService() {
        var handle = FactoryDAO.createConnection();
        this.blogDAO = FactoryDAO.getDAO(handle, FactoryDAO.DAO_BLOG);
        this.imageDAO = FactoryDAO.getDAO(handle, FactoryDAO.DAO_IMAGE);
    }

    public void updateBlog(String hostName, String dest, User author, String title, boolean status, String description, String blogContent, Image thumbnail, LocalDateTime createAt, LocalDateTime updateAt) {
        var handle = ((BlogDAO) blogDAO).getHandle();
        try {
            handle.begin();
//            Format nội dung này lại rồi viết thành file trong server, rồi lấy ra đường dẫn tương đối của file này
            File file = __formatBlogContent__(blogContent, hostName, dest);
            String path = file.getPath().substring(file.getPath().lastIndexOf("blogs")).replaceAll("\\\\", "/");
            System.out.println(path);
//            tiến hành insert blog vào database
            Blog blog = new Blog(-1, author, title, status, description, path, thumbnail, updateAt, createAt);
            int blogId = blogDAO.insert(blog);
            blog.setId(blogId);
//            Sau khi insert xong thì tiến hành lấy ra toàn bộ ảnh trong blog này
            blogContent = IOService.getInstance().readTxtFile(file);
            Document document = Jsoup.parse(blogContent);
            var imgs = document.getElementsByTag("img").stream().toList();
            for (var img : imgs) {
                var image = imageDAO.selectByPath(img.attr("src"));
//                insert các hình ảnh này vào bảng blog_galleries trong database
                imageDAO.insertToGalleryOf(blog, image);
            }
//            throw new Exception("Random exception");
            handle.commit();
        } catch (Exception e) {
//            Nếu xảy ra bất kì lỗi nào thì rollback
            handle.rollback();
            System.out.println("Đã roll back lại transaction");
            throw new RuntimeException(e);
        }
    }

    private File __formatBlogContent__(String blogContent, String hostName, String dest) throws Exception {
        var document = Jsoup.parse(blogContent);
        var imgs = document.getElementsByTag("img").stream().toList();
        var iterator = imgs.iterator();
        while (iterator.hasNext()) {
            var current = iterator.next();
            String src = current.attr("src");
            URL url = new URL(src);
//          Nếu host của ảnh là host của server:
            if (hostName.equals(url.getHost())) {
//            Cắt toàn bộ phần protocol://host/WebContext trong attribute src của tag img
                int offset = url.getPath().lastIndexOf("images");
                if (offset == -1) continue;
                String filePath = url.getPath().substring(offset);
//                System.out.println("checking filePath: "+filePath);
//            Nếu ảnh đã được insert vào database (người dùng sử dụng ảnh có sẵn trong server)
                if (imageDAO.selectByPath(filePath) != null) {
                    current.attr("src", filePath);
//                    Loại bỏ thẻ img này ra khỏi danh sách
                    iterator.remove();
                }
            }
        }
        var month = Calendar.getInstance().get(Calendar.MONTH) + 1;
        var day = Calendar.getInstance().get(Calendar.DAY_OF_MONTH);
//        Insert các ảnh chưa có trong database
        String relativeToFile = null;
        String link = null;
        String uuid = null;
        String extension = null;
        String fileName = null;
        String folderContains = null;
//        List chứa các key của ảnh đã đc insert vào database
        for (var img : imgs) {
            link = img.attr("src");
            uuid = UUID.randomUUID().toString().replaceAll("-","");
            extension = link.substring(link.lastIndexOf("."));
            folderContains = String.format("%s/images/%s/%s", dest, month, day);
            fileName = String.format("%s%s", uuid, extension);
            relativeToFile = String.format("images/%s/%s/%s", month, day, fileName);
//            System.out.println("folder chứa file: "+folderContains);
            Files.createDirectories(Paths.get(dest));
            IOService.getInstance().downloadImageFromURL(link, folderContains, fileName);
            var image = new Image(-1, relativeToFile, uuid, null, null);
            var key = imageDAO.insert(image);
            img.attr("src", relativeToFile);
        }
////        Write nội dung bài blog xuống thư mục của server
        uuid = UUID.randomUUID().toString().replaceAll("-","");
        extension = ".txt";
        fileName = String.format("%s%s", uuid, extension);
        folderContains = String.format("%s/blogs/%s/%s", dest, month, day);
        return IOService.getInstance().writeBlog(document.body().html(), folderContains, fileName);
    }

    public static void main(String[] args) throws Exception {
        File file = new File("C:\\Users\\ADMIN\\Desktop\\test\\blogs\\12\\26\\5e1c5db2acab4f83803fe10f61977d8a.txt");
        String blogContent = com.project.services.IOService.getInstance().readTxtFile(file);
        getInstance().updateBlog("bla", "C:\\Users\\ADMIN\\Desktop\\test", null, "bla", false, "mô tả", blogContent, null, null, null);
    }
}
