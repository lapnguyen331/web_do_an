<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Thư viện ngoài (Luôn để đầu tiên) -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/stylesheet/fontawesome.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/libs/flickity/flickity.min.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/libs/mdb-bootstrap-5-pro/css/mdb.min.css">

    <!-- Style của project -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/stylesheet/all.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/main-header.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/main-style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/main-footer.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/button-title.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/product-card.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/details-product.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/breadcrumbs.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/fixed-buttons.css">


    <title>Slider</title>
</head>
<body>
<jsp:include page="/WEB-INF/view/shared/cart.jsp"></jsp:include>
<jsp:include page="/WEB-INF/view/shared/header.jsp"></jsp:include>
<div class="breadcrumbs-wrap">
    <ul class="breadcrumbs">
        <li><a href="">Trang chủ</a></li>
        <li><a href="">Hồng sâm Hàn Quốc</a></li>
        <li><a href="">Cao Hồng Sâm</a></li>
        <li><a href="">Cao Hồng Sâm Hong Seon Gold Hộp 2 Lọ 250G</a></li>
    </ul>
</div>
<section id="details-product">
    <div class="container">
        <div class="row">
            <div class="col-md-5">
                <div class="carousel-wrapper">
                    <!-- Flickity HTML init -->
                    <div class="carousel carousel-main" data-flickity='{"pageDots": false, "contain": true, "fullscreen": true, "wrapAround": true}'>
                        <div class="carousel-cell">
                            <img src="https://hongsamkimy.vn/wp-content/uploads/2023/07/Untitled-design-2023-07-13T093015.683-jpg.webp" alt="">
                        </div>
                        <div class="carousel-cell">
                            <img src="https://hongsamkimy.vn/wp-content/uploads/2023/07/cao-hong-sam-hong-seon-gold-3-768x768.webp" alt="">
                        </div>
                        <div class="carousel-cell">
                            <img src="https://hongsamkimy.vn/wp-content/uploads/2023/07/cao-hong-sam-hong-seon-gold-2-768x768.webp" alt="">
                        </div>
                        <div class="carousel-cell">
                            <img src="https://hongsamkimy.vn/wp-content/uploads/2023/07/cao-hong-sam-hong-seon-gold-5-768x768.webp" alt="">
                        </div>
                        <div class="carousel-cell">
                            <img src="https://hongsamkimy.vn/wp-content/uploads/2023/07/cao-hong-sam-hong-seon-gold-4-768x768.webp" alt="">
                        </div>
                    </div>

                    <div class="carousel carousel-nav"
                         data-flickity='{ "asNavFor": ".carousel-main", "contain": true, "pageDots": false, "contain": true}'>
                        <div class="carousel-cell">
                            <img src="https://hongsamkimy.vn/wp-content/uploads/2023/07/Untitled-design-2023-07-13T093015.683-jpg.webp" alt="">
                        </div>
                        <div class="carousel-cell">
                            <img src="https://hongsamkimy.vn/wp-content/uploads/2023/07/cao-hong-sam-hong-seon-gold-3-768x768.webp" alt="">
                        </div>
                        <div class="carousel-cell">
                            <img src="https://hongsamkimy.vn/wp-content/uploads/2023/07/cao-hong-sam-hong-seon-gold-2-768x768.webp" alt="">
                        </div>
                        <div class="carousel-cell">
                            <img src="https://hongsamkimy.vn/wp-content/uploads/2023/07/cao-hong-sam-hong-seon-gold-5-768x768.webp" alt="">
                        </div>
                        <div class="carousel-cell">
                            <img src="https://hongsamkimy.vn/wp-content/uploads/2023/07/cao-hong-sam-hong-seon-gold-4-768x768.webp" alt="">
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-7">
                <h2>Cao hồng sâm Hong Seon Gold hộp 2 lọ 250g</h2>
                <div class="rating-stars">
                    <span class="rating-score">4.8</span>
                    <div class="rating-empty">
                        <span>&#xf005;&#xf005;&#xf005;&#xf005;&#xf005;</span>
                        <div class="rating-fill" style="width: 50%;">&#xf005;&#xf005;&#xf005;&#xf005;&#xf005;</div>
                    </div>
                </div>
                <span class="sold-amount"><b>1.2k</b> Đã bán</span>
                <p>Cao hồng sâm 6 năm tuổi kết hợp bới một số loại thảo dược quý như linh chi, bạch chỉ, xuyên khung,… làm gia tăng những thành phần đặc hiệu và công năng của sản phẩm giúp cho việc hỗ trợ và tăng cường bồi bổ cơ thể, cải thiện sức khỏe đạt hiệu quả tốt nhất…</p>
                <div class="row d-flex align-items-start">
                    <div class="col-md-6 pl-0">
                        <div class="products-stats">
                            <div class="stat-label">Quy cách</div>
                            <span class="stat-text">Hộp 2 lọ 250g</span>

                            <div class="stat-label">Mã sản phẩm</div>
                            <span class="stat-text">8809308650564</span>

                            <div class="stat-label">Thương hiệu</div>
                            <span class="stat-text">Hong Seon</span>

                            <div class="stat-label">Giá thị trường</div>
                            <span class="stat-text text-through">1.100.000 ₫</span>

                            <div class="stat-label">Giá khuyến mãi</div>
                            <h4>980.000₫</h4>

                            <div class="stat-label">Số lượng</div>
                            <div class="number-field">
                                <div class="number-btn btn-left bg-gold bg-sharp-no-right">
                                    <span>-</span>
                                </div>
                                <div class="bg-gold">
                                    <input type="number" data-amount="0">
                                </div>
                                <div class="number-btn btn-right bg-gold bg-sharp-no-left">
                                    <span>+</span>
                                </div>
                            </div>
                        </div>
                        <div class="btn-submit bg-gold bg-sharp">
                            <a href="#">Mua hàng</a>
                        </div>
                    </div>
                    <div class="col-md-6 pl-0 d-flex flex-column align-items-center">
                        <div class="buying-offer bg-gold bg-sharp-5">
                            <div class="offer">
                                <div class="bg-gold icon">
                                    <i class="fa-regular fa-thumbs-up"></i>
                                </div>
                                <span class="offer-text">Cam kết hàng chính hãng 100%</span>
                            </div>
                            <div class="offer">
                                <div class="bg-gold icon">
                                    <i class="fa-solid fa-truck-fast"></i>
                                </div>
                                <span class="offer-text">Giao hàng toàn quốc</span>
                            </div>
                            <div class="offer">
                                <div class="bg-gold icon">
                                    <i class="fa-solid fa-money-bill-wave"></i>
                                </div>
                                <span class="offer-text">Miễn phí vận chuyển từ 500k</span>
                            </div>
                            <div class="offer">
                                <div class="bg-gold icon">
                                    <i class="fa-solid fa-handshake-angle"></i>
                                </div>
                                <span class="offer-text">Tư vấn nhiệt tình tận tâm</span>
                            </div>
                        </div>
                        <form action="" class="recall-form bg-gold bg-sharp">
                            <input class="bg-sharp-no-right input-field" type="text" placeholder="SĐT yêu cầu gọi lại">
                            <input class="bg-sharp-no-left btn-submit" type="submit" value="&#xf2a0;  Tư vấn tôi">
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="tabs">
                    <div class="tablinks tablinks-is-active" data-tab-target="#tab-product-content">Mô tả sản phẩm</div>
                    <div class="tablinks" data-tab-target="#tab-product-guide">Địa chỉ mua hàng</div>
                    <div class="tablinks" data-tab-target="#tab-product-review">Đánh giá sản phẩm (3)</div>
                </div>
            </div>
            <div class="col-md-12">
                <div class="tab-content-wrapper">
                    <section class="tab-content tab-is-active" id="tab-product-content">
                        <h4>Cao hồng sâm Hong Seon Gold hộp 2 lọ 250g</h4>
                        <img src="${pageContext.request.contextPath}/inventory/images/cao-hong-sam-hong-seon-gold-hop-2-lo-250g.webp" alt="">
                        <h4>Thành phần:</h4>
                        <p>15% Hồng sâm cô đặc 6 năm tuổi (Ginsenosides Rg1, Rb1 và Rg3 tổng 4mg/g, chất rắn 70% trở lên), 70% hỗn hợp thực vật cô đặc (táo tàu 9%, rễ bạch chỉ 9%, rễ hoa cúc 9%, ngải cứu, Gujeolcho, Rễ Jihwang (Sukjihwang), lá non Artemisia, rễ hoa cúc, thân rễ sapju, rễ mẫu đơn, rễ xương cựa, hạch nấm bokryeong, nấm linh chi, cam thảo, chất rắn 60% trở lên), isomaltooligosaccharide.</p>
                        <h4>Công dụng:</h4>
                        <ul>
                            <li>Bồi bổ cơ thể, tăng sức lao động trí óc và chân tay, chống mệt mỏi.</li>
                            <li>Chống lão hóa, cải thiện chức năng não bộ ở người lớn tuổi, tăng khả năng tập trung trí tuệ, tăng trí nhớ</li>
                            <li>Tăng cường khả năng miễn dịch, giúp cơ thể tăng khả năng thích nghi phòng vệ đối với những kích thích có hại</li>
                            <li>Điều hòa huyết áp, giúp hồi phục huyết áp ở cơ thể.</li>
                            <li>Giảm tác hại của chất phóng xạ, cải thiện và phòng ngừa sự phát triển của các tế bào ung thư.</li>
                            <li>Ngăn ngừa nguy cơ phát sinh cholesterol cao, từ đó hạn chế sự hình thành các mảng xơ vữa động mạch</li>
                            <li>Thành phần chính Saponin có trong cao sâm có tác dụng loại bỏ chất Alloxan và chất Streptozotocin là nguyên nhân làm tăng đường huyết do đó cao sâm cũng hỗ trợ trong việc giảm đường huyết, tiểu đường</li>
                            <li>Saponin trong hồng sâm làm tăng hoạt động enzym liên quan tới sự thoái hóa ethanol và acetaldehyd, do đó đối với người hay uống rượu, để giảm gan tránh được độc tính</li>
                        </ul>
                        <h4>Đối tượng sử dụng: </h4>
                        <ul>
                            <li>Người suy kiệt cơ thể hậu điều trị cần tăng cường đề kháng và bồi bổ sức khỏe.</li>
                            <li>Người làm việc trí óc hoặc học tập cường độ cao.</li>
                            <li>Người bị ung thư, mắc các bệnh về rối loạn chuyển hóa đường trong nước tiểu, mỡ, tim, huyết áp…</li>
                            <li>Người già cần bồi bổ sức khỏe, tăng cường trí nhớ.</li>
                            <li>Phụ nữ hơn 30 tuổi mong muốn duy trì một cơ thể khỏe mạnh và một làn da tươi trẻ.</li>
                        </ul>
                        <img src="${pageContext.request.contextPath}/inventory/images/cao-hong-sam-hong-seon-gold-hop-2-lo-250g-1.webp" alt="">
                        <h4>Cách dùng:</h4>
                        <ul>
                            <li><b>Phòng bệnh:</b> Mỗi ngày uống 2 lần, mỗi lần uống lấy 1 thìa cao nhỏ (có trong hộp)= 5mg, pha với nước ấm rồi uống trước bữa ăn 15-20 phút.</li>
                            <li><b>Chữa bệnh:</b> Mỗi ngày uống 3 lần. Mỗi lần uống lấy 2 thìa cao nhỏ, pha với nước ấm, uống trước bữa ăn 15-20 phút.</li>
                        </ul>
                        <p><b>Quy cách đóng gói:</b> Hộp 2 lọ 250g</p>
                        <p><b>Hạn sử dụng:</b> 2 năm kể từ ngày sản xuất</p>
                        <p><b>Lưu ý:</b> Thực phẩm không là thuốc, không thay thế thuốc chữa bệnh</p>
                        <p><b>Nhà sản xuất:</b> KOREA GINSENG CENTER</p>
                        <p><b>Điện thoại:</b> 0934 138 985</p>
                    </section>
                    <section class="tab-content" id="tab-product-guide">
                        <div class="container">
                            <div class="row">
                                <h3>Hướng dẫn mua hàng</h3>
                                <div class="col-md-6">
                                    <div class="guide-content">
                                        <p>Bạn có thể đặt hàng với K-GIN theo một trong các cách sau:</p>
                                        <p>1. Đặt hàng trực tiếp: thông qua chức năng Bán hàng online với trực tiếp trên website.</p>
                                        <p>2. Điện thoại trực tiếp: Hotline 19004625 (Zalo,sms: 0936.319.818)</p>
                                        <p>3. Mua hàng trực tiếp:</p>
                                        <p>Quý khách hàng có thể qua các địa chỉ sau để mua hàng trực tiếp – Mở cửa từ 8h đến 20h45′ tất cả các ngày trong tuần:</p>

                                        <b>TP Hồ Chí Minh</b>
                                        <ul class="store-addresses">
                                            <li class="address">
                                                <div class="store store-is-active" data-map-data="https://maps.google.com/maps?width=100%25&amp;height=600&amp;hl=en&amp;q=Th%C6%B0%20vi%E1%BB%87n%20Tr%C6%B0%E1%BB%9Dng%20%C4%90%E1%BA%A1i%20h%E1%BB%8Dc%20N%C3%B4ng%20L%C3%A2m%20TP.HCM,%20VQCR+GP6,%20Khu%20Ph%E1%BB%91%206,%20Th%E1%BB%A7%20%C4%90%E1%BB%A9c,%20Th%C3%A0nh%20ph%E1%BB%91%20H%E1%BB%93%20Ch%C3%AD%20Minh,%20Vi%E1%BB%87t%20Nam+(Tr%C6%B0%E1%BB%9Dng%20%C4%91%E1%BA%A1i%20h%E1%BB%8Dc%20n%C3%B4ng%20l%C3%A2m)&amp;t=h&amp;z=14&amp;ie=UTF8&amp;iwloc=B&amp;output=embed">
                                                    51 Võ Thị Sáu - Phường VTS - Quận 3 - TP.HCM
                                                </div>
                                            </li>
                                        </ul>
                                        <b>Hà Nội</b>
                                        <ul class="store-addresses">
                                            <li class="address">
                                                <div class="store" data-map-data="https://maps.google.com/maps?width=100%25&amp;height=600&amp;hl=en&amp;q=V%C4%83n%20Ph%C3%B2ng%20BIDV%20Thi%C3%AAn%20L%C3%AD%20%C4%90%E1%BA%A1i%20H%E1%BB%8Dc%20N%C3%B4ng%20L%C3%A2m+(Tr%C6%B0%E1%BB%9Dng%20%C4%91%E1%BA%A1i%20h%E1%BB%8Dc%20n%C3%B4ng%20l%C3%A2m)&amp;t=h&amp;z=14&amp;ie=UTF8&amp;iwloc=B&amp;output=embed">
                                                    21 Tây Sơn - Quan Trung- Đống Đa - Hà Nội
                                                </div>
                                            </li>
                                            <li class="address">
                                                <div class="store" data-map-data="https://maps.google.com/maps?width=100%25&amp;height=600&amp;hl=en&amp;q=B%C3%A3i%20Gi%E1%BB%AF%20Xe%20Sinh%20VI%C3%AAn%20N%C3%B4ng%20L%C3%A2m+(Tr%C6%B0%E1%BB%9Dng%20%C4%91%E1%BA%A1i%20h%E1%BB%8Dc%20n%C3%B4ng%20l%C3%A2m)&amp;t=h&amp;z=14&amp;ie=UTF8&amp;iwloc=B&amp;output=embed">
                                                    121A Phố Huế - Hai Bà Trưng - Hà Nội (Ngã tư Phố Huế - Tuệ Tĩnh)
                                                </div>
                                            </li>
                                            <li class="address">
                                                <div class="store" data-map-data="https://maps.google.com/maps?width=100%25&amp;height=600&amp;hl=en&amp;q=Gi%E1%BA%A3ng%20%C4%91%C6%B0%E1%BB%9Dng%20R%E1%BA%A1ng%20%C4%90%C3%B4ng+(Tr%C6%B0%E1%BB%9Dng%20%C4%91%E1%BA%A1i%20h%E1%BB%8Dc%20n%C3%B4ng%20l%C3%A2m)&amp;t=h&amp;z=14&amp;ie=UTF8&amp;iwloc=B&amp;output=embed">
                                                    149 Cầu Giấy - Quan Hoa - Cầu Giấy - Hà Nội
                                                </div>
                                            </li>
                                            <li class="address">
                                                <div class="store" data-map-data="https://maps.google.com/maps?width=100%25&amp;height=600&amp;hl=en&amp;q=Khoa%20Khoa%20H%E1%BB%8Dc%20NLU%20%C4%90%E1%BA%A1i%20H%E1%BB%8Dc%20N%C3%B4ng%20L%C3%A2m+(Tr%C6%B0%E1%BB%9Dng%20%C4%91%E1%BA%A1i%20h%E1%BB%8Dc%20n%C3%B4ng%20l%C3%A2m)&amp;t=h&amp;z=14&amp;ie=UTF8&amp;iwloc=B&amp;output=embed">
                                                    577 Nguyễn Trãi - Thanh Xuân Nam - Thanh Xuân - Hà Nội ( Đối diện Pico Trung Văn)
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div style="width: 100%">
                                        <iframe class="google-map-frame" width="100%" height="600" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.com/maps?width=100%25&amp;height=600&amp;hl=en&amp;q=Th%C6%B0%20vi%E1%BB%87n%20Tr%C6%B0%E1%BB%9Dng%20%C4%90%E1%BA%A1i%20h%E1%BB%8Dc%20N%C3%B4ng%20L%C3%A2m%20TP.HCM,%20VQCR+GP6,%20Khu%20Ph%E1%BB%91%206,%20Th%E1%BB%A7%20%C4%90%E1%BB%A9c,%20Th%C3%A0nh%20ph%E1%BB%91%20H%E1%BB%93%20Ch%C3%AD%20Minh,%20Vi%E1%BB%87t%20Nam+(Tr%C6%B0%E1%BB%9Dng%20%C4%91%E1%BA%A1i%20h%E1%BB%8Dc%20n%C3%B4ng%20l%C3%A2m)&amp;t=h&amp;z=14&amp;ie=UTF8&amp;iwloc=B&amp;output=embed">
                                        </iframe>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                    <section class="tab-content" id="tab-product-review">
                        <div class="container">
                            <div class="row">
                                <div class="col-7">
                                    <div class="review-comments">
                                        <h4>4 đánh giá cho Cao hồng sâm Hong Seon Gold hộp 2 lọ 250g</h4>
                                        <div class="comments">
                                            <div class="comment-field">
                                                <p class="comment-author"><b>Lê Hoàng</b> - 19/10/2023</p>
                                                <div class="rating-stars">
                                                    <span class="rating-score">4.0</span>
                                                    <div class="rating-empty">
                                                        <span></span>
                                                        <div class="rating-fill" style="width: 80%;"></div>
                                                    </div>
                                                </div>
                                                <p class="comment-content">"Lorem ipsum dolor sit, amet consectetur adipisicing elit. Expedita culpa quae reprehenderit velit accusamus nemo soluta obcaecati rerum, id totam, dolor nisi voluptatem excepturi earum inventore cum mollitia corrupti! Exercitationem!"</p>
                                            </div>
                                            <div class="comment-field">
                                                <p class="comment-author"><b>Bình quang</b> - 19/10/2023</p>
                                                <div class="rating-stars">
                                                    <span class="rating-score">5.0</span>
                                                    <div class="rating-empty">
                                                        <span></span>
                                                        <div class="rating-fill" style="width: 100%;"></div>
                                                    </div>
                                                </div>
                                                <p class="comment-content">"Lorem ipsum dolor sit, amet consectetur adipisicing elit. Expedita culpa quae reprehenderit velit accusamus nemo soluta obcaecati rerum, id totam, dolor nisi voluptatem excepturi earum inventore cum mollitia corrupti! Exercitationem!"</p>
                                            </div>
                                            <div class="comment-field">
                                                <p class="comment-author"><b>Trần Anh Sơn</b> - 19/10/2023</p>
                                                <div class="rating-stars">
                                                    <span class="rating-score">5.0</span>
                                                    <div class="rating-empty">
                                                        <span></span>
                                                        <div class="rating-fill" style="width: 100%;"></div>
                                                    </div>
                                                </div>
                                                <p class="comment-content">"Lorem ipsum dolor sit, amet consectetur adipisicing elit. Expedita culpa quae reprehenderit velit accusamus nemo soluta obcaecati rerum, id totam, dolor nisi voluptatem excepturi earum inventore cum mollitia corrupti! Exercitationem!"</p>
                                            </div>
                                            <div class="comment-field">
                                                <p class="comment-author"><b>Phạm Hoàng Việt</b> - 18/10/2023</p>
                                                <div class="rating-stars">
                                                    <span class="rating-score">3.0</span>
                                                    <div class="rating-empty">
                                                        <span></span>
                                                        <div class="rating-fill" style="width: 60%;"></div>
                                                    </div>
                                                </div>
                                                <p class="comment-content">"Lorem ipsum dolor sit, amet consectetur adipisicing elit. Expedita culpa quae reprehenderit velit accusamus nemo soluta obcaecati rerum, id totam, dolor nisi voluptatem excepturi earum inventore cum mollitia corrupti! Exercitationem!"</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-5 bg-gold bg-sharp-5 align-self-start">
                                    <form action="" class="review-product-form">
                                        <div class="form-title">Thêm đánh giá sản phẩm</div>
                                        <p class="title-field">Đánh giá của bạn *</p>
                                        <div class="rating-field">
                                            <input type="radio" id="star5" name="rating" value="5" />
                                            <label class = "radio-star" for="star5" title="Awesome - 5 stars"></label>

                                            <input type="radio" id="star4" name="rating" value="4" />
                                            <label class = "radio-star" for="star4" title="Pretty good - 4 stars"></label>

                                            <input type="radio" id="star3" name="rating" value="3" />
                                            <label class = "radio-star" for="star3" title="Meh - 3 stars"></label>

                                            <input type="radio" id="star2" name="rating" value="2" />
                                            <label class = "radio-star" for="star2" title="Kinda bad - 2 stars"></label>

                                            <input type="radio" id="star1" name="rating" value="1" />
                                            <label class = "radio-star" for="star1" title="Sucks big time - 1 star"></label>
                                        </div>
                                        <p class="title-field">Nhận xét của bạn</p>
                                        <textarea name=""></textarea>
                                        <div class="bg-gold bg-sharp btn-submit">
                                            <input type="submit" value="Gửi đánh giá  &#xf1d8;">
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </section>
                </div>
            </div>
        </div>
    </div>
    <div class="bg-gold bg-sharp mt-3">
        <div class="title-primary">
            Sản phẩm liên quan
        </div>
    </div>
    <div class="container bg-transparent">
        <div class="row">
            <!-- Col 1 -->
            <div class="col-md-3">
                <div class="product-card">
                    <a href="#">
                        <div class="product-img">
                            <img src="${pageContext.request.contextPath}/inventory/images/cao-sam-hu-doi-1.jpg" alt="">
                        </div>

                        <div class="product-name">
                            <p>Cao Sâm Hũ Đôi Arirang Hàn Quốc</p>
                        </div>
                    </a>
                    <div class="product-price-wrapper">
                        <div class="discount-label">-13</div>
                        <div class="price">
                            <p class="m-price">2.400.000</p>
                            <p class="c-price">2.100.000</p>
                        </div>
                    </div>
                    <div class="product-button">
                        <div class="bg-gold bg-sharp-5">
                            <button class="btn-review">
                                Xem nhanh
                            </button>
                        </div>
                        <div class="bg-gold bg-sharp-5">
                            <button class="btn-details">
                                Xem chi tiết
                            </button>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Col 2 -->
            <div class="col-md-3">
                <div class="product-card">
                    <a href="#">
                        <div class="product-img">
                            <img src="${pageContext.request.contextPath}/inventory/images/cao-sam-hu-doi-1.jpg" alt="">
                        </div>

                        <div class="product-name">
                            <p>Cao Sâm Hũ Đôi Arirang Hàn Quốc</p>
                        </div>
                    </a>
                    <div class="product-price-wrapper">
                        <div class="discount-label">-13</div>
                        <div class="price">
                            <p class="m-price">2.400.000</p>
                            <p class="c-price">2.100.000</p>
                        </div>
                    </div>
                    <div class="product-button">
                        <div class="bg-gold bg-sharp-5">
                            <button class="btn-review">
                                Xem nhanh
                            </button>
                        </div>
                        <div class="bg-gold bg-sharp-5">
                            <button class="btn-details">
                                Xem chi tiết
                            </button>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Col 3 -->
            <div class="col-md-3">
                <div class="product-card">
                    <a href="#">
                        <div class="product-img">
                            <img src="${pageContext.request.contextPath}/inventory/images/cao-sam-hu-doi-1.jpg" alt="">
                        </div>

                        <div class="product-name">
                            <p>Cao Sâm Hũ Đôi Arirang Hàn Quốc</p>
                        </div>
                    </a>
                    <div class="product-price-wrapper">
                        <div class="discount-label">-13</div>
                        <div class="price">
                            <p class="m-price">2.400.000</p>
                            <p class="c-price">2.100.000</p>
                        </div>
                    </div>
                    <div class="product-button">
                        <div class="bg-gold bg-sharp-5">
                            <button class="btn-review">
                                Xem nhanh
                            </button>
                        </div>
                        <div class="bg-gold bg-sharp-5">
                            <button class="btn-details">
                                Xem chi tiết
                            </button>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Col 4 -->
            <div class="col-md-3">
                <div class="product-card">
                    <a href="#">
                        <div class="product-img">
                            <img src="${pageContext.request.contextPath}/inventory/images/cao-sam-hu-doi-1.jpg" alt="">
                        </div>

                        <div class="product-name">
                            <p>Cao Sâm Hũ Đôi Arirang Hàn Quốc</p>
                        </div>
                    </a>
                    <div class="product-price-wrapper">
                        <div class="discount-label">-13</div>
                        <div class="price">
                            <p class="m-price">2.400.000</p>
                            <p class="c-price">2.100.000</p>
                        </div>
                    </div>
                    <div class="product-button">
                        <div class="bg-gold bg-sharp-5">
                            <button class="btn-review">
                                Xem nhanh
                            </button>
                        </div>
                        <div class="bg-gold bg-sharp-5">
                            <button class="btn-details">
                                Xem chi tiết
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<jsp:include page="/WEB-INF/view/shared/footer.jsp"></jsp:include>
<div id="fb-root"></div>
<script async defer crossorigin="anonymous"
        src="https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v18.0" nonce="Qoebijhj">
</script>
<script src="${pageContext.request.contextPath}/js/jquery.js"></script>
<script src="${pageContext.request.contextPath}/libs/flickity/flickity.pkgd.min.js"></script>
<script src="${pageContext.request.contextPath}/libs/mdb-bootstrap-5-pro/js/mdb.min.js"></script>
<script src="${pageContext.request.contextPath}/js/details_product.js"></script>

<script>
    const gMap = $('.google-map-frame');
    const stores = $('#tab-product-guide .address .store');
    $(stores).on('click', function() {
        stores.removeClass('store-is-active');
        $(this).addClass('store-is-active');
        const mapData = this.dataset.mapData;
        gMap[0].src = this.dataset.mapData;
    })
</script>
</body>
</html>
