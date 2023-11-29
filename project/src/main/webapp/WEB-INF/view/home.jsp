<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 11/29/2023
  Time: 7:24 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Thư viện ngoài (Luôn để đầu tiên) -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/stylesheet/fontawesome.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/libs/swiper/swiper-bundle-min.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/libs/mdb-bootstrap-5-pro/css/mdb.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/libs/mdb-bootstrap-5-pro/css/mdb.min.css">

    <!-- Style của project -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/stylesheet/all.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/main-style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/home-slider.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/button-title.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/product-card.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/product-filter.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/product-category.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/home-featured-products.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/home-about.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/home-store.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/fixed-buttons.css">

    <title>Trang chủ</title>
</head>
<body>
<div id="fixed-btns">
    <div class="cart-btn" type="button" data-mdb-toggle="modal" data-mdb-target="#my-cart">
        <i class="fa-solid fa-cart-plus d-inline-block pt-1 pe-none"></i>
    </div>
</div>
<div class="modal fade right" id="my-cart" tabindex="-1">
    <div class="modal-dialog modal-side modal-top-right">
        <div class="modal-content bg-gold">
            <div class="modal-header">
                <div class="modal-title">
                    <div class="fw-semibold fs-5 text-up">
                        <span>Giỏ hàng của tôi</span>
                        <i class="fa-solid fa-basket-shopping"></i>
                    </div>
                </div>
                <button type="button" class="btn-close" data-mdb-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="cart-products d-flex flex-column">
                    <div class="product-wrap d-flex align-items-center gap-2">
                        <div class="btn-product-remove">
                            <i class="fa-regular fa-trash-can"></i>
                        </div>
                        <div class="img-wrap border rounded d-flex align-items-center justify-content-center">
                            <img src="/template/image/cao-hong-sam-hong-seon-gold-hop-2-lo-250g-1.webp" width="100%">
                        </div>
                        <div class="d-flex flex-column justify-content-center">
                            <div class="product-name">
                                Cao hồng sâm Hong Seon Gold hộp 2 lọ 250g
                            </div>
                            <div class="text-primray-red-color-main fw-bold">
                                980.000₫
                            </div>
                        </div>
                        <div class="amount-btns">
                            <div class="bg-primary-red-main-color text-wheat-color d-flex align-items-center arrow-wrap">
                                <div class="arrow arrow-down"></div>
                            </div>
                            <input type="text">
                            <div class="bg-primary-red-main-color text-wheat-color d-flex align-items-center arrow-wrap">
                                <div class="arrow arrow-up"></div>
                            </div>
                        </div>
                    </div>
                    <div class="product-wrap d-flex align-items-center gap-2">
                        <div class="btn-product-remove">
                            <i class="fa-regular fa-trash-can"></i>
                        </div>
                        <div class="img-wrap border rounded d-flex align-items-center justify-content-center">
                            <img src="/template/image/cao-sam-hu-doi-1.jpg" width="100%">
                        </div>
                        <div class="d-flex flex-column justify-content-center">
                            <div class="product-name">
                                Cao Sâm Hũ Đôi Arirang Hàn Quốc
                            </div>
                            <div class="text-primray-red-color-main fw-bold">
                                2.100.000₫
                            </div>
                        </div>
                        <div class="amount-btns">
                            <div class="bg-primary-red-main-color text-wheat-color d-flex align-items-center arrow-wrap">
                                <div class="arrow arrow-down"></div>
                            </div>
                            <input type="text">
                            <div class="bg-primary-red-main-color text-wheat-color d-flex align-items-center arrow-wrap">
                                <div class="arrow arrow-up"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <div class="bg-gold bg-sharp-5">
                    <button class="btn-moveTo" >
                        <a href="cart.html" >
                            <span >Xem chi tiết giỏ hàng</span>
                        </a>
                    </button>
                </div>

                <div class="bg-gold bg-sharp-5">
                    <button class="btn-closeModal" type="button" data-mdb-dismiss="modal">
                        <span>Hủy bỏ</span>
                    </button>
                </div>
            </div>
        </div>
    </div>
</div>

<main>
    <jsp:include page="/WEB-INF/view/shared/header.jsp"></jsp:include>

    <section id="home-slider-section">
        <!-- Slider main container -->
        <div class="swiper">
            <!-- Additional required wrapper -->
            <div class="swiper-wrapper">
                <!-- Slides -->
                <div class="swiper-slide">
                    <img src="${pageContext.request.contextPath}/inventory/images/banner-1.jpg" width="100%" alt="">
                </div>
                <div class="swiper-slide">
                    <img src="${pageContext.request.contextPath}/inventory/images/banner-2.png" width="100%" alt="">
                </div>
                <div class="swiper-slide">
                    <img src="${pageContext.request.contextPath}/inventory/images/banner-3.jpg" width="100%" alt="">
                </div>
            </div>
            <!-- If we need pagination -->
            <div class="swiper-pagination"></div>
        </div>
    </section>

    <!-- Product Featured Section -->
    <section id="home-featured-products-section">
        <div class="container">
            <div class="row pt-3">
                <div class="col-md-12">
                    <div class="shipment-wrapper">
                        <div class="shipment-col">
                            <div class="shipment-icon">
                                <img src="icon/ship-toan-quoc.jpg" alt="">
                            </div>
                            <div>
                                <strong>Giao hàng toàn quốc</strong>
                                <p>Hà Nội, Hồ Chí Minh trong ngày</p>
                            </div>
                        </div>

                        <div class="shipment-col">
                            <div class="shipment-icon">
                                <img src="icon/nhan-hang-thanh-toan.jpg" alt="">
                            </div>
                            <div>
                                <strong>Nhận hàng thanh toán</strong>
                                <p>Trực tiếp với người giao</p>
                            </div>
                        </div>

                        <div class="shipment-col">
                            <div class="shipment-icon">
                                <img src="icon/mien-phi-van-chuyen.jpg" alt="">
                            </div>
                            <div>
                                <strong>Miễn phí vận chuyển</strong>
                                <p>Đơn hàng >= 500.000đ</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row gy-md-4 pt-3 featured-row">
                <!-- Title -->
                <div class="col-12 d-flex justify-content-center">
                    <div class="bg-gold bg-sharp">
                        <div class="title-primary">Sản phẩm bán chạy</div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <div class="container">
        <div class="row">
            <div class="col-3">
                <!-- Section Product Filter -->
                <section id="section-product-filter">
                    <div class="filter-header bg-rounded bg-gold">
                        <div class="title-primary">Lọc sản phẩm</div>
                    </div>
                    <div class="filter-content">
                        <form action='/template/search.html' method="get" >
                            <p class="filter-title">Lọc theo giá</p>
                            <ul class="radio-filter">
                                <li>
                                    <input type="radio" name="price-from" value="0-1000000" id="price_0-1m">
                                    <label for="price_0-1m">< 1 triệu</label>
                                </li>
                                <li>
                                    <input type="radio" name="price-from" value="1000000-2500000" id="price_1-2.5m">
                                    <label for="price_1-2.5m">1 triệu - 2.5 triệu</label>
                                </li>
                                <li>
                                    <input type="radio" name="price-from" value="2500000-5000000" id="price_2.5m-5m">
                                    <label for="price_2.5m-5m">2.5 triệu - 5 triệu</label>
                                </li>
                                <li>
                                    <input type="radio" name="price-from" value="5000000-7500000" id="price_5m-7.5m">
                                    <label for="price_5m-7.5m">5 triệu - 7.5 triệu</label>
                                </li>
                                <li>
                                    <input type="radio" name="price-from" value="7500000-10000000" id="price_7.5m-10m">
                                    <label for="price_7.5m-10m">7.5 triệu - 10 triệu</label>
                                </li>
                            </ul>
                            <p class="filter-title">Theo thương hiệu</p>
                            <div class="filter-type-select">
                                <select name="" id="">
                                    <option value="">Thương hiệu 1</option>
                                    <option value="">Thương hiệu 2</option>
                                    <option value="">Thương hiệu 3</option>
                                    <option value="">Thương hiệu 4</option>
                                    <option value="">Thương hiệu 5</option>
                                </select>
                            </div>
                            <p class="filter-title">Theo danh mục</p>
                            <div class="filter-type-select">
                                <select name="" id="">
                                    <option value="">Nước Hồng Sâm</option>
                                    <option value="">Cao Hồng Sâm</option>
                                    <option value="">Sâm Khô</option>
                                    <option value="">Sâm Mật Ong</option>
                                    <option value="">Hắc Sâm</option>
                                    <option value="">Nhân Sâm Tươi</option>
                                    <option value="">Rượu Sâm Linh Chi</option>
                                    <option value="">Trà Hồng Sâm</option>
                                    <option value="">Viên Hồng Sâm</option>
                                </select>
                            </div>
                            <input type="submit" value="Tìm kiếm sản phẩm" >
                        </form>
                    </div>
                </section>
            </div>
            <div class="col-9" id="category-section">

            </div>
        </div>
    </div>

    <!-- About Section -->
    <section id="about-section">
        <div class="container">
            <div class="row border-bottom pb-2">
                <div class="col-6 ps-0">
                    <div class="bg-gold bg-sharp-no-left">
                        <div class="title-primary">
                            Giới thiệu về Nhân Sâm Hàn Quốc Cheong Kwan Jang
                        </div>
                    </div>
                </div>
            </div>
            <div class="row pt-3 ps-3">
                <div class="col-md-6">
                    <div class="img-about bg-gold bg-sharp">
                        <img src="${pageContext.request.contextPath}/inventory/images/about-img.jpg" alt="">
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="about-content">
                        <h1>Nhân sâm hàn quốc</h1>
                        <p>Cửa hàng Cheong Kwan Jang chuyên phân phối các loại <a href="">nhân sâm Hàn Quốc</a>, hồng sâm 6 năm tuổi,
                            nấm linh chi và đông trùng hạ thảo uy tín, giá tốt nhất thị trường.</p>
                        <p>Chúng tôi chuyên bán buôn và bán lẻ các sản phẩm về thực phẩm chức năng như Sâm Hàn Quốc, Nấm linh chi và đông trùng hạ thảo của Hàn Quốc.</p>
                        <p>Sản phẩm Cheong Kwan Jang cung cấp có giá cả cạnh tranh, có hóa đơn VAT, có giấy công bố chất lượng….</p>
                        <p>Với phương châm Đảm bảo vì lợi ích cao nhất cho Quý khách hàng. Chúng tôi có giới thiệu và bán những sản phẩm Nhân Sâm Hàn Quốc chính hiệu, đảm bảo 100% về chất lượng.</p>
                        <p>Đến với chúng tôi Quý khách hàng có thể lựa chọn cho mình những sản phẩm Nhân Sâm phù hợp nhất, an toàn và đảm bảo nhất.</p>
                        <h1>Nhân sâm Hàn Quốc là gì</h1>
                        <p><a href="">Nhân sâm Hàn Quốc</a> là tên gọi một số cây thân thảo có rễ và củ được dùng trong các bài thuốc đông y, thuộc chi Sâm. Nhân sâm là loại củ sâm có hình dáng hao hao giống hình người, có hàm lượng chất dinh dưỡng cao, do đặc thù về khí hậu, thổ nhưỡng. Nhân sâm có vị đắng, không độc, tác dụng bồi bổ sức khỏe, giải độc gan, chống oxi hóa.</p>
                        <p>Một số sản phẩm từ nhân sâm Hàn Quốc như: rượu nhân sâm, nhân sâm ngâm mật ong, hồng sâm, hắc sâm. Để tìm hiểu xem nhân sâm Hàn Quốc gồm những thành phần gì và có tác dụng như thế nào đến sức khỏe hãy cùng KGIN xem phần tiếp theo nhé!</p>
                        <h3>1. Thành phần của nhân sâm Hàn Quốc</h3>
                        <p>Theo như các nghiên cứu của y học hiện đại, <a href="">nhân sâm</a> có các thành phần chính như <strong>Ginsenoside (Saponin trong nhân sâm còn có tên gọi khác là Ginsenoside)</strong>, Glycoside Panaxin, Tinh dầu (làm Nhân sâm có mùi đặc biệt), các vitamin B1 và B2, các acid béo như acid Palmitic, Stearic và Linoleic, các acid amin và hàm lượng Germanium cao. Những thành phần này có tác dụng rất tích cực với cơ thể con người, mang lại hiệu quả cao cho sức khỏe.</p>
                        <img src="${pageContext.request.contextPath}/inventory/images/about-img-content.webp" alt="" width="100%">
                        <p>Theo thống kê, trong củ và rễ sâm có tới <strong>32 loại Saponin Triterpen  trong đó có tới 30 loại là Saponin Dammaran</strong>. Trong đó phần <strong>thân rễ nhân sâm chiếm tới 10,75% hàm lượng Saponin</strong>. Một số loại Saponin quan trọng có tác dụng:</p>
                        <ul>
                            <li><strong>Saponin Ro</strong> tác dụng giải độc gan, ngăn ngừa tổn thương gan</li>
                            <li><strong>Saponin Rb1</strong> có công dụng kiềm chế hệ thần kinh trung ương, giúp khống chế các cơn đau, bảo vệ tế bào gan.</li>
                            <li><strong>Saponin Rb2</strong> có tác dụng chống tiểu đường, chống xơ gan, đẩy nhanh tốc độ hấp thụ của các tế bào gan.</li>
                            <li><strong>Saponin Rd</strong> có tác dụng tăng cường hoạt động của vỏ tuyến thượng thận.</li>
                            <li><strong>Saponin Rg1</strong> có tác dụng tăng cường sự tập trung của hệ thần kinh, chống mệt mỏi, căng thẳng.</li>
                            <li><strong>Saponin Rg2</strong> giúp hạn chế sự kết dính tiểu cầu, ngăn ngừa xơ vữa động mạch.</li>
                            <li><strong>Saponin Rh2</strong> ngăn ngừa sự hình thành phát triển và di căn của tế bào ung thư.</li>
                        </ul>
                        <h3>2. Nhân sâm Hàn Quốc có tác dụng gì?</h3>
                        <p><a href="#">Nhân sâm Hàn Quốc</a> có tác dụng gì? Và hiệu quả mang lại đối với cơ thể, sức khỏe như thế nào. Hãy cùng KGIN theo dõi một số tác dụng chính mà nhân sâm Hàn Quốc mang lại. </p>
                        <ul>
                            <li>Nhân sâm Hàn Quốc chứa hàm lượng Saponin khá lớn nên có thể giúp tăng cường sức đề kháng, phục hồi cơ thể nhanh chóng sau khi khỏi bệnh. </li>
                            <li>Nhờ thành phần Saponin nên nhân sâm còn giúp làm hạ cholesterol và triglycerid trong máu giúp ngăn được các bệnh về tim mạch, tăng cường tuần hoàn máu. </li>
                            <li>Đối với người cao tuổi hoặc người làm việc ở môi trường áp lực lớn thì nhân sâm giúp bổ sung lượng canxi và giúp kích thích trí não hoạt động tăng cường, cải thiện trí nhớ.</li>
                            <li>Thêm vào đó, nhân sâm Hàn Quốc còn có tác dụng chống lão hóa và làm đẹp da ở nữ giới. </li>
                            <li>Ngoài ra còn giúp cơ thể tránh được sự phát triển của các tế bào độc hại trong cơ thể, hỗ trợ gan tránh được độc tính của rượu và ngăn ngừa một số bệnh hiểm nghèo. </li>
                        </ul>
                        <h3>3. Đối tượng sử dụng nhân sâm Hàn Quốc</h3>
                        <p>Nhân sâm Hàn Quốc là một loại thảo dược vô cùng bổ dưỡng, tuy nhiên có những đối tượng nên sử dụng và không nên sử dụng loại thực phẩm chức năng hảo hạng này. Dưới đây là những người nên dùng và không nên dùng nhân sâm Hàn Quốc: </p>
                        <h4>3.1 Những người nên sử dụng sâm Hàn Quốc</h4>
                        <ul>
                            <li>Người lớn tuổi có sức khỏe yếu, cần bổ sung sức đề kháng.</li>
                            <li>Bệnh nhân sau phẫu thuật hoặc hóa xạ trị, điều trị kháng sinh lâu dài dẫn đến suy nhược, cần hồi phục sức khỏe nhanh.</li>
                            <li>Lao động trong môi trường áp lực cao, làm việc căng thẳng, thường xuyên mệt mỏi.</li>
                            <li>Người có các bệnh về tim mạch, tiểu đường.</li>
                            <li>Người thường xuyên phải tiếp xúc với bia rượu, chức năng gan suy yếu</li>
                            <li>Đây là những đối tượng nên sử dụng sâm Hàn Quốc để giúp cơ thể bồi bổ, ngăn ngừa các loại bệnh có hại cho cơ thể.</li>
                            <li>Ngoài ra, nam giới gặp các vấn đề về sinh lý cũng có thể sử dụng nhân sâm Hàn Quốc để cải thiện tình trạng. </li>
                            <li>Nữ giới muốn làm đẹp, cải thiện làn da và ngăn ngừa lão hóa.</li>
                        </ul>
                        <h4>3.2 Những người không nên sử dụng nhân sâm Hàn Quốc</h4>
                        <p>Nhân sâm tuy có nhiều công dụng tốt đối với sức khỏe, nhưng nên hạn chế sử dụng với những đối tượng sau:</p>
                        <ul>
                            <li>Người có các vấn đề về tiêu hóa, bị bệnh trào ngược dạ dày, xuất huyết dạ dày.</li>
                            <li>Phụ nữ mang thai và cho con bú không nên dùng vì có thể gây ảnh hưởng tới thai nhi và trẻ nhỏ.</li>
                            <li>Với trẻ em dưới 15 tuổi, chỉ nên dùng các sản phẩm nhân sâm Hàn Quốc được chiết xuất riêng phù hợp với thể trạng, như hồng sâm baby.</li>
                            <li>Người bị cảm mạo, phong hàn, ho lao phổi.</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Store Section -->
    <section id="store-section">
        <div class="container">
            <div class="row">
                <div class="col-6 ps-0 pb-3">
                    <div class="bg-gold bg-sharp-no-left">
                        <div class="title-primary">
                            Hệ thống cửa hàng Nhân Sâm Hàn Quốc KGIN
                        </div>
                    </div>
                </div>
                <div class="col-12 col-md-12 col-lg-12 border-top">
                    <div class="row row-cols-5 pb-4 store-slider pt-3 ps-2">
                        <div class="col w-20">
                            <div class="store-wrap">
                                <a href=""  >
                                    <div class="thumbnail-wrap">
                                        <img src="${pageContext.request.contextPath}/inventory/images/cua-hang-1.jpg" alt="">
                                    </div>
                                </a>
                                <div class="info-store">
                                    <a href=""  >
                                        <div class="title">
                                            <p class="h3">Cửa Hàng 51 Võ Thị Sáu</p>
                                        </div>
                                    </a>
                                    <div class="address-wrap">
                                        <i class="fas fa-map-marker-alt"></i>
                                        <div class="address">
                                            <p>51 Võ Thị Sáu - Phường VTS - Quận 3 - TP.HCM</p>
                                        </div>
                                    </div>


                                    <div class="hotline-wrap">
                                        <i class="fas fa-phone-alt"></i>
                                        <div class="hotline">
                                            <div class="">
                                                Hotline:
                                            </div>
                                            <div class="phone-number">
                                                <a href="tel:19004625" rel="nofollow"  >
                                                    <p>1900.4625</p>
                                                </a>
                                            </div>

                                        </div>
                                    </div>
                                    <div class="hotline-wrap zalo-sms">
                                        <i class="far fa-comment-alt"></i>
                                        <div class="hotline">
                                            <div class="">
                                                Zalo, Sms:
                                            </div>
                                            <div class="phone-number">
                                                <a href="tel:0936319818" rel="nofollow"  >
                                                    <p>0936.319.818</p>
                                                </a>
                                            </div>

                                        </div>
                                    </div>
                                    <div class="address-link">
                                        <a href="https://goo.gl/maps/fLkgD7rpPrknqsYu8" rel="nofollow external noopener noreferrer" data-wpel-link="external" target="_blank">
                                            <i class="fas fa-map-marker-alt"></i>
                                            <div class="address">
                                                Xem bản đồ Google maps
                                            </div>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col w-20">
                            <div class="store-wrap">
                                <a href="">
                                    <div class="thumbnail-wrap">
                                        <img src="${pageContext.request.contextPath}/inventory/images/cua-hang-2.jpg" alt="">
                                    </div>
                                </a>
                                <div class="info-store">
                                    <a href=" ">
                                        <div class="title">
                                            <p class="h3">Cửa Hàng 57 Nguyễn Trãi</p>
                                        </div>
                                    </a>
                                    <div class="address-wrap">
                                        <i class="fas fa-map-marker-alt"></i>
                                        <div class="address">
                                            <p>577 Nguyễn Trãi - Thanh Xuân Nam - Thanh Xuân - Hà Nội </p>
                                        </div>
                                    </div>


                                    <div class="hotline-wrap">
                                        <i class="fas fa-phone-alt"></i>
                                        <div class="hotline">
                                            <div class="">
                                                Hotline:
                                            </div>
                                            <div class="phone-number">
                                                <a href="tel:19004625" rel="nofollow"  >
                                                    <p>1900.4625</p>
                                                </a>
                                            </div>

                                        </div>
                                    </div>
                                    <div class="hotline-wrap zalo-sms">
                                        <i class="far fa-comment-alt"></i>
                                        <div class="hotline">
                                            <div class="">
                                                Zalo, Sms:
                                            </div>
                                            <div class="phone-number">
                                                <a href="tel:0936319818" rel="nofollow"  >
                                                    <p>0936.319.818</p>
                                                </a>
                                            </div>

                                        </div>
                                    </div>
                                    <div class="address-link">
                                        <a href="https://goo.gl/maps/AKRkMDbYYqb1H9U97" rel="nofollow external noopener noreferrer" data-wpel-link="external" target="_blank">
                                            <i class="fas fa-map-marker-alt"></i>
                                            <div class="address">
                                                Xem bản đồ Google maps
                                            </div>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col w-20">
                            <div class="store-wrap">
                                <a href="">
                                    <div class="thumbnail-wrap">
                                        <img src="${pageContext.request.contextPath}/inventory/images/cua-hang-3.jpg" alt="">
                                    </div>
                                </a>
                                <div class="info-store">
                                    <a href=" ">
                                        <div class="title">
                                            <p class="h3">Cửa Hàng 149 Cầu Giấy</p>
                                        </div>
                                    </a>
                                    <div class="address-wrap">
                                        <i class="fas fa-map-marker-alt"></i>
                                        <div class="address">
                                            <p>149 Cầu Giấy - Quan Hoa - Cầu Giấy - Hà Nội</p>
                                        </div>
                                    </div>


                                    <div class="hotline-wrap">
                                        <i class="fas fa-phone-alt"></i>
                                        <div class="hotline">
                                            <div class="">
                                                Hotline:
                                            </div>
                                            <div class="phone-number">
                                                <a href="tel:19004625" rel="nofollow"  >
                                                    <p>1900.4625</p>
                                                </a>
                                            </div>

                                        </div>
                                    </div>
                                    <div class="hotline-wrap zalo-sms">
                                        <i class="far fa-comment-alt"></i>
                                        <div class="hotline">
                                            <div class="">
                                                Zalo, Sms:
                                            </div>
                                            <div class="phone-number">
                                                <a href="tel:0936319818" rel="nofollow"  >
                                                    <p>0936.319.818</p>
                                                </a>
                                            </div>

                                        </div>
                                    </div>
                                    <div class="address-link">
                                        <a href="https://goo.gl/maps/4HEVMWuJNEg4NWs27" rel="nofollow external noopener noreferrer" data-wpel-link="external" target="_blank">
                                            <i class="fas fa-map-marker-alt"></i>
                                            <div class="address">
                                                Xem bản đồ Google maps
                                            </div>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col w-20">
                            <div class="store-wrap">
                                <a href="">
                                    <div class="thumbnail-wrap">
                                        <img src="${pageContext.request.contextPath}/inventory/images/cua-hang-4.jpg" alt="">
                                    </div>
                                </a>
                                <div class="info-store">
                                    <a href=" ">
                                        <div class="title">
                                            <p class="h3">Cửa Hàng 21 Tây Sơn</p>
                                        </div>
                                    </a>
                                    <div class="address-wrap">
                                        <i class="fas fa-map-marker-alt"></i>
                                        <div class="address">
                                            <p>21 Tây Sơn - Quan Trung- Đống Đa - Hà Nội</p>
                                        </div>
                                    </div>


                                    <div class="hotline-wrap">
                                        <i class="fas fa-phone-alt"></i>
                                        <div class="hotline">
                                            <div class="">
                                                Hotline:
                                            </div>
                                            <div class="phone-number">
                                                <a href="tel:19004625" rel="nofollow"  >
                                                    <p>1900.4625</p>
                                                </a>
                                            </div>

                                        </div>
                                    </div>
                                    <div class="hotline-wrap zalo-sms">
                                        <i class="far fa-comment-alt"></i>
                                        <div class="hotline">
                                            <div class="">
                                                Zalo, Sms:
                                            </div>
                                            <div class="phone-number">
                                                <a href="tel:0936319818" rel="nofollow"  >
                                                    <p>0936.319.818</p>
                                                </a>
                                            </div>

                                        </div>
                                    </div>
                                    <div class="address-link">
                                        <a href="https://goo.gl/maps/gQBEp9YJfXVxPBAg7" rel="nofollow external noopener noreferrer" data-wpel-link="external" target="_blank">
                                            <i class="fas fa-map-marker-alt"></i>
                                            <div class="address">
                                                Xem bản đồ Google maps
                                            </div>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col w-20">
                            <div class="store-wrap">
                                <a href=" ">
                                    <div class="thumbnail-wrap">
                                        <img src="${pageContext.request.contextPath}/inventory/images/cua-hang-5.jpg" alt="">
                                    </div>
                                </a>
                                <div class="info-store">
                                    <a href=" ">
                                        <div class="title">
                                            <p class="h3">Cửa Hàng 121A Phố Huế</p>
                                        </div>
                                    </a>
                                    <div class="address-wrap">
                                        <i class="fas fa-map-marker-alt"></i>
                                        <div class="address">
                                            <p>121A Phố Huế - Hai Bà Trưng - Hà Nội (Ngã tư Phố Huế - Tuệ Tĩnh)</p>
                                        </div>
                                    </div>


                                    <div class="hotline-wrap">
                                        <i class="fas fa-phone-alt"></i>
                                        <div class="hotline">
                                            <div class="">
                                                Hotline:
                                            </div>
                                            <div class="phone-number">
                                                <a href="tel:19004625" rel="nofollow"  >
                                                    <p>1900.4625</p>
                                                </a>
                                            </div>

                                        </div>
                                    </div>
                                    <div class="hotline-wrap zalo-sms">
                                        <i class="far fa-comment-alt"></i>
                                        <div class="hotline">
                                            <div class="">
                                                Zalo, Sms:
                                            </div>
                                            <div class="phone-number">
                                                <a href="tel:0936319818" rel="nofollow"  >
                                                    <p>0936.319.818</p>
                                                </a>
                                            </div>

                                        </div>
                                    </div>
                                    <div class="address-link">
                                        <a href="https://goo.gl/maps/NJNFZLBJZkSV5tWY6" rel="nofollow external noopener noreferrer" data-wpel-link="external" target="_blank">
                                            <i class="fas fa-map-marker-alt"></i>
                                            <div class="address">
                                                Xem bản đồ Google maps
                                            </div>
                                        </a>
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
<script> var contextPath = "${pageContext.request.contextPath}";</script>
<script async defer crossorigin="anonymous"
        src="https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v18.0" nonce="Qoebijhj">
</script>
<script src="${pageContext.request.contextPath}/js/jquery.js"></script>
<script src="${pageContext.request.contextPath}/libs/swiper/swiper-bundle.min.js"></script>
<script src="${pageContext.request.contextPath}/libs/mdb-bootstrap-5-pro/js/mdb.min.js"></script>
<script src="${pageContext.request.contextPath}/js/load_category_home.js?a=3"></script>
<script src="${pageContext.request.contextPath}/js/load_featured_products_home.js?a=4"></script>
<script>
    const swiper = new Swiper('.swiper', {
        // Optional parameters
        direction: 'horizontal',
        loop: true,

        // If we need pagination
        pagination: {
            el: '.swiper-pagination',
            clickable: true,
            bulletActiveClass: 'custom-bullet-active',
            bulletClass: 'custom-bullet'
        },

        autoheight: true,
        grabCursor: true,
    });
</script>
</body>
</html>