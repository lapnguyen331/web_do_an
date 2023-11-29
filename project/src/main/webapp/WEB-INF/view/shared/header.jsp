<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
                    <a class="redirect-link" href="login.html">Đăng nhập</a>
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
                    <li class="menu-item"><a href="categogy-detail.html">Nước Hồng Sâm Hàn Quốc</a></li>
                    <li class="menu-item"><a href="categogy-detail.html">Cao Hồng Sâm Hàn Quốc</a></li>
                    <li class="menu-item"><a href="categogy-detail.html">Sâm Khô Hàn Quốc</a></li>
                    <li class="menu-item"><a href="categogy-detail.html">Sâm Mật Ong Hàn Quốc</a></li>
                    <li class="menu-item"><a href="categogy-detail.html">Hắc Sâm Hàn Quốc</a></li>
                    <li class="menu-item"><a href="categogy-detail.html">Nhân Sâm Tươi Hàn Quốc</a></li>
                    <li class="menu-item"><a href="categogy-detail.html">Rượu Sâm Linh Chi</a></li>
                    <li class="menu-item"><a href="categogy-detail.html">Trà Hồng Sâm Hàn Quốc Và Bột Sâm</a></li>
                    <li class="menu-item"><a href="categogy-detail.html">Viên Hồng Sâm Hàn Quốc</a></li>
                    <li class="menu-item"><a href="categogy-detail.html">Viên Hồng Sâm Hàn Quốc</a></li>
                </ul>
            </div>
            <ul class="nav-items-wrapper">
                <li class="nav-item menu-wrapper"><a href="categogy-detail.html">Nước Hồng Sâm</a></li>
                <li class="nav-item menu-wrapper"><a href="categogy-detail.html">Cao Hồng Sâm</a></li>
                <li class="nav-item menu-wrapper"><a href="categogy-detail.html">Sâm Khô</a></li>
                <li class="nav-item menu-wrapper"><a href="categogy-detail.html">Sâm Mật Ong</a></li>
                <li class="nav-item menu-wrapper"><a href="categogy-detail.html">Hắc Sâm</a></li>
                <li class="nav-item menu-wrapper"><a href="categogy-detail.html">Nhân Sâm Tươi</a></li>
                <li class="nav-item menu-wrapper"><a href="categogy-detail.html">Rượu Sâm Linh Chi</a></li>
                <li class="nav-item menu-wrapper"><a href="categogy-detail.html">Trà Hồng Sâm</a></li>
                <li class="nav-item menu-wrapper"><a href="categogy-detail.html">Viên Hồng Sâm</a></li>
            </ul>
        </nav>
    </article>
</header>
</body>
</html>
