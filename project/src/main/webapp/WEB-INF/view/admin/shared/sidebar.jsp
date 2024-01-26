<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/main-header.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/main-style.css?a=1">
    <title>Header</title>
</head>
<body>
<nav id="sidebar-nav" class="close">
    <div class="sidebar close">
        <div class="logo-details">
            <i class="fa-brands fa-shopify"></i>
            <span class="logo_name">Thanh quản lý</span>
        </div>
        <ul class="nav-links">
            <li class="nav-link-page">
                <a href="${pageContext.request.contextPath}/admin/dashboard">
                    <i class="fa-solid fa-table-cells-large"></i>
                    <span class="link_name">Điều khiển</span>
                </a>
                <ul class="sub-menu">
                    <li><a class="link_name" href="${pageContext.request.contextPath}/admin/dashboard">Điều khiển</a></li>
                </ul>
            </li>
            <li class="nav-link-page">
                <div class="icon-link">
                    <a href="${pageContext.request.contextPath}/admin/categories">
                        <i class="fa-solid fa-layer-group"></i>
                        <span class="link_name">Danh mục</span>
                    </a>
                    <i class="fa-solid fa-angle-down arrow"></i>
                </div>
                <ul class="sub-menu">
                    <li><a class="link_name" href="${pageContext.request.contextPath}/admin/categories">Danh mục</a></li>
                    <li><a href="${pageContext.request.contextPath}/admin/categories_edit">Thêm danh mục</a></li>
                </ul>
            </li>
            <li class="nav-link-page">
                <div class="icon-link">
                    <a href="${pageContext.request.contextPath}/admin/products">
                        <i class="fa-solid fa-box"></i>
                        <span class="link_name">Sản phẩm</span>
                    </a>
                    <i class="fa-solid fa-angle-down arrow"></i>
                </div>
                <ul class="sub-menu">
                    <li><a class="link_name" href="${pageContext.request.contextPath}/admin/products">Sản phẩm</a></li>
                    <li><a href="${pageContext.request.contextPath}/admin/products_edit">Thêm sản phẩm</a></li>
                </ul>
            </li>
            <li class="nav-link-page">
                <div class="icon-link">
                    <a href="${pageContext.request.contextPath}/admin/discounts">
                        <i class="fa-solid fa-tags"></i>
                        <span class="link_name">Khuyến mãi</span>
                    </a>
                    <i class="fa-solid fa-angle-down arrow"></i>
                </div>
                <ul class="sub-menu">
                    <li><a class="link_name" href="${pageContext.request.contextPath}/admin/discounts">Khuyến mãi</a></li>
                    <li><a href="${pageContext.request.contextPath}/admin/discounts">Thêm khuyến mãi</a></li>
                </ul>
            </li>
            <li class="nav-link-page">
                <div class="icon-link">
                    <a href="${pageContext.request.contextPath}/admin/customers">
                        <i class="fa-solid fa-user-group"></i>
                        <span class="link_name">Khách hàng</span>
                    </a>
                    <i class="fa-solid fa-angle-down arrow"></i>
                </div>
                <ul class="sub-menu">
                    <li><a class="link_name" href="${pageContext.request.contextPath}/admin/customers">Khách hàng</a></li>
                    <li><a href="${pageContext.request.contextPath}/admin/customers_edit">Thêm khách hàng</a></li>
                </ul>
            </li>
            <li class="nav-link-page">
                <div class="icon-link">
                    <a href="${pageContext.request.contextPath}/admin/producers">
                        <i class="fa-solid fa-warehouse"></i>
                        <span class="link_name">Nhà cung cấp</span>
                    </a>
                    <i class="fa-solid fa-angle-down arrow"></i>
                </div>
                <ul class="sub-menu">
                    <li><a class="link_name" href="${pageContext.request.contextPath}/admin/producers">Nhà cung cấp</a></li>
                    <li><a href="${pageContext.request.contextPath}/admin/producers_edit">Thêm nhà cung cấp</a></li>
                </ul>
            </li>
            <li class="nav-link-page">
                <div class="icon-link">
                    <a href="${pageContext.request.contextPath}/admin/blogs">
                        <i class="fa-solid fa-book"></i>
                        <span class="link_name">Bài viết</span>
                    </a>
                    <i class="fa-solid fa-angle-down arrow"></i>
                </div>
                <ul class="sub-menu">
                    <li><a class="link_name" href="${pageContext.request.contextPath}/admin/blogs">Bài viết</a></li>
                    <li><a href="${pageContext.request.contextPath}/admin/blog-edit">Thêm bài viết</a></li>
                </ul>
            </li>
            <li class="nav-link-page">
                <div class="icon-link">
                    <a href="${pageContext.request.contextPath}/admin/orders">
                        <i class="fa-solid fa-clipboard"></i>
                        <span class="link_name">Đơn hàng</span>
                    </a>
                    <i class="fa-solid fa-angle-down arrow"></i>
                </div>
                <ul class="sub-menu">
                    <li><a class="link_name" href="${pageContext.request.contextPath}/admin/orders">Đơn hàng</a></li>
                    <li><a href="${pageContext.request.contextPath}/admin/orders_edit">Thêm đơn hàng</a></li>
                </ul>
            </li>
            <li class="nav-link-page">
                <a href="${pageContext.request.contextPath}/admin/contacts">
                    <i class="fa-solid fa-headset new-info">
                        <span class="newNoti">1</span>
                    </i>
                    <span class="link_name">Liên hệ</span>
                </a>
                <ul class="sub-menu">
                    <li><a class="link_name" href="${pageContext.request.contextPath}/admin/contacts">Liên hệ</a></li>
                </ul>

            </li>
            <!-- <li class="nav-link-page">
                <a href="#">
                    <i class="fa-solid fa-bell"></i>
                    <span class="link_name">Thông báo</span>
                </a>
                <ul class="sub-menu">
                    <li><a class="link_name" href="#">Thông báo</a></li>
                </ul>
            </li> -->
            <li class="nav-link-page">
                <div class="profile-details">
                    <div class="profile-content">
                        <img src="${pageContext.request.contextPath}/icon/ship-toan-quoc.jpg" alt="profileImg">
                    </div>
                    <div class="name-job">
                        <div class="greeting">Xin chào Admin</div>
                        <div class="profile_name">Nguyễn Tuấn</div>
                    </div>
                    <i class='bx bx-log-out'></i>
                </div>
            </li>
        </ul>
        <div id="btn-toggle-sidebar">
            <i class="fa-solid fa-angles-right"></i>
        </div>
    </div>
</nav>
</body>
</html>
<script src="${pageContext.request.contextPath}/js/admin/sidebar.js?v=0112efdf"></script>
