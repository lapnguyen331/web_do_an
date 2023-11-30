<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Thư viện ngoài (Luôn để đầu tiên) -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/stylesheet/fontawesome.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/libs/mdb-bootstrap-5-pro/css/mdb.min.css">

    <!-- Style của project -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/stylesheet/all.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/main-style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/button-title.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/cart.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/fixed-buttons.css">


    <title>Chi tiết giỏ hàng</title>
</head>
<body>
<main>
    <jsp:include page="/WEB-INF/view/shared/header.jsp"></jsp:include>
    <section id="cart-section">
        <div class="container p-3">
            <div class="row">
                <div class="col-md-6">
                    <div class="bg-gold bg-sharp-no-left">
                        <div class="title-primary"><i class="fa-solid fa-cart-arrow-down"></i> Giỏ hàng của bạn</div>
                    </div>
                </div>
            </div>
            <div class="row pt-2">
                <div class="col-md-12">
                    <table>
                        <thead>
                        <tr>
                            <th>Xóa</th>
                            <th>Sản phẩm</th>
                            <th>Giá khuyến mãi</th>
                            <th>Số lượng</th>
                            <th>Tạm tính</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td><span class="delete-product"></span></td>
                            <td>
                                <div class="product-wrap">
                                    <div class="product-img">
                                        <img src="${pageContext.request.contextPath}/inventory/images/cao-hong-sam-hong-seon-gold-hop-2-lo-250g.webp" alt="">
                                    </div>
                                    <div class="product-info">
                                        <div class="product-name"><b>Cao hồng sâm Hong Seon Gold hộp 2 lọ 250g</b></div>
                                        <div class="product-stats">
                                            <ul>
                                                <li>
                                                    <span class="fw-semibold">Quy cách:</span>
                                                    <span>2 lọ 250g</span>
                                                </li>
                                                <li>
                                                    <span class="fw-semibold">Thương hiệu:</span>
                                                    <span><a href="/template/search.html?branch=daedong">Daedong</a></span>
                                                </li>
                                                <li>
                                                    <span class="fw-semibold">Danh mục:</span>
                                                    <a href="/template/categogy-detail.html">Hồng Sâm hàn Quốc</a>
                                                </li>
                                                <li>
                                                    <span class="fw-semibold">Giá gốc:</span>
                                                    <span>980.000₫</span>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </td>
                            <td><div class="price">980.000₫</div></td>
                            <td>
                                <div class="number-field">
                                    <div class="number-btn btn-left bg-gold bg-sharp-no-right">
                                        <span>&#xf068;</span>
                                    </div>
                                    <div class="bg-gold">
                                        <input type="number" data-amount="0">
                                    </div>
                                    <div class="number-btn btn-right bg-gold bg-sharp-no-left">
                                        <span>&#x2b;</span>
                                    </div>
                                </div>
                            </td>
                            <td><div class="price">980.000₫</div></td>
                        </tr>

                        <tr>
                            <td><span class="delete-product"></span></td>
                            <td>
                                <div class="product-wrap">
                                    <div class="product-img">
                                        <img src="${pageContext.request.contextPath}/inventory/images/cao-sam-hu-doi-1.jpg" alt="">
                                    </div>
                                    <div class="product-info">
                                        <div class="product-name"><b>Cao Sâm Hũ Đôi Arirang Hàn Quốc</b></div>
                                        <div class="product-stats">
                                            <ul>
                                                <li>
                                                    <span class="fw-semibold">Quy cách:</span>
                                                    <span>2 hũ x 500gr</span>
                                                </li>
                                                <li>
                                                    <span class="fw-semibold">Thương hiệu:</span>
                                                    <span><a href="/template/search.html?branch=arirang">Arirang</a></span>
                                                </li>
                                                <li>
                                                    <span class="fw-semibold">Danh mục:</span>
                                                    <a href="/template/categogy-detail.html">Hồng Sâm hàn Quốc</a>
                                                </li>
                                                <li>
                                                    <span class="fw-semibold">Giá gốc:</span>
                                                    <span>2.400.000₫</span>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </td>
                            <td><div class="price">2.100.000₫</div></td>
                            <td>
                                <div class="number-field">
                                    <div class="number-btn btn-left bg-gold bg-sharp-no-right">
                                        <span>&#xf068;</span>
                                    </div>
                                    <div class="bg-gold">
                                        <input type="number" data-amount="0">
                                    </div>
                                    <div class="number-btn btn-right bg-gold bg-sharp-no-left">
                                        <span>&#x2b;</span>
                                    </div>
                                </div>
                            </td>
                            <td><div class="price">2.100.000₫</div></td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="total-wrap">
                        <div class="col">
                            <ul class="cart-guides">
                                <li class="guide">Nếu bạn đồng ý mua danh sách sản phẩm trên thì vui lòng bấm nút “Hoàn Tất đơn hàng”</li>
                                <li class="guide">Để tiếp tục mua thêm sản phẩm khác, bạn bấm nút “Tiếp tục mua sắm"</li>
                                <li class="guide">Để bỏ từng sản phẩm trong danh sách, bấm vào biểu tượng xóa phía bên trái hình sản phẩm</li>
                                <li class="guide">Để thêm số lượng cho một sản phẩm cần mua, bạn chọn số lượng</li>
                            </ul>
                        </div>
                        <div class="col text-center">
                            <div class="total-price d-inline-block">
                                <span>Tổng tiền</span>
                                <span class="price">3.080.000₫</span>
                            </div>
                            <div class="d-flex gap-3 justify-content-center">
                                <div class="bg-gold bg-sharp">
                                    <div class="title-primary">
                                        <a href="/template/home.html" class="continue-buy">Tiếp tục mua sắm</a>
                                    </div>
                                </div>
                                <div class="bg-gold bg-sharp">
                                    <div class="title-primary">
                                        <a class="checkout" href="/template/checkout.html">Hoàn tất đơn hàng</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</main>
<jsp:include page="/WEB-INF/view/shared/footer.jsp"></jsp:include>
<div id="fb-root"></div>
<script async defer crossorigin="anonymous"
        src="https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v18.0" nonce="Qoebijhj">
</script>
<script src="${pageContext.request.contextPath}/js/jquery.js"></script>
</body>
</html>