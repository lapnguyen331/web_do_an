<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/main-header.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/main-style.css?a=1">
    <title>Header</title>
</head>
<body>
    <header id="main-header-section">
    <article id="main-header-top">
        <div class="logo-wrapper">
            <img src="${pageContext.request.contextPath}/inventory/icons/logo2.png" alt="">
        </div>
        <div class="main-content-wrapper">
            <ul class="topbar-menu">
                <li class="topbar-menu-item">
                    <a class="redirect-link" href="home.html">Trang chủ</a>
                </li>
                <li class="topbar-menu-item">
                    <a class="redirect-link" href="introduce.html">Giới thiệu</a>
                </li>
                <li class="topbar-menu-item">
                    <a class="redirect-link" href="contact.html">Liên hệ</a>
                </li>
                <li class="topbar-menu-item">
                    <a class="redirect-link" href="blog.html">Blog</a>
                </li>
                <li class="topbar-menu-item">
                    <a class="redirect-link" href="privacy.html">Quy định & chính sách chung</a>
                </li>
                <li class="topbar-menu-item">
                    <c:choose>
                        <c:when test="${not empty requestScope.user}">
                            <div class="redirect-link d-flex">
                                <div class="user-wrap d-flex gap-1 align-items-center">
                                    <div class="avatar-wrap border rounded rounded-circle p-2 d-flex align-items-center justify-content-between overflow-hidden">
                                        <img src="${user.avatar.url}" width="20px" alt="">
                                    </div>
                                    <div>${user.username}</div>
                                    <ul class="user-pages">
                                        <div class="shadow">
                                            <ul>
                                                <li>
                                                    <a href="user-profile.html" class="d-flex text-decoration-none align-items-baseline gap-2">
                                                        <i class="fa-solid fa-circle-user"></i>
                                                        <span>Trang cá nhân</span>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="user-profile-order.html" class="d-flex text-decoration-none align-items-baseline gap-2">
                                                        <i class="fa-solid fa-clipboard-list"></i>
                                                        <span>Đơn mua</span>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a class="d-flex text-decoration-none align-items-baseline gap-2 log-out-btn">
                                                        <i class="fa-solid fa-arrow-right-from-bracket"></i>
                                                        <span>Đăng xuất</span>
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </ul>
                                </div>
                            </div>
                        </c:when>
                        <c:otherwise>
                            <a class="redirect-link" href="login">Đăng nhập</a>
                        </c:otherwise>
                    </c:choose>
                </li>
            </ul>
            <div class="search-input">
                <div class="search-input-wrapper">
                    <input type="text" placeholder="Nhập tên sản phẩm cần tìm...">
                    <a class="btn-search" href="search.html">Tìm kiếm</a> <!--Note link tới trang tìm kiếm-->
                </div>
                <p>Gợi ý từ khóa: Cao hồng sâm, Sâm tầm mật ong, Trà linh chi,...</p>
            </div>
        </div>
    </article>
    <article id="main-header-bot">
        <nav class="main-nav">
            <div class="all-items menu-wrapper">
                <span>Tất cả sản phẩm</span>
                <ul class="menu">
                    <c:if test="${not empty sessionScope.categories}">
                        <c:forEach var="category" items="${sessionScope.categories}">
                            <li class="menu-item"><a href="categogy-detail.html">${category.name}</a></li>
                        </c:forEach>
                    </c:if>
                </ul>
            </div>
            <ul class="nav-items-wrapper">
                <c:if test="${not empty sessionScope.categories}">
                    <c:forEach var="category" items="${sessionScope.categories}">
                        <li class="nav-item menu-wrapper"><a href="categogy-detail.html">${category.name}</a></li>
                    </c:forEach>
                </c:if>
            </ul>
        </nav>
    </article>
</header>
</body>
</html>
<script>
    var context = "${pageContext.request.contextPath}";
</script>
<script src="${pageContext.request.contextPath}/js/header_v01.js" defer></script>