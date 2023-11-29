<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Giỏ hàng</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/fixed-buttons.css">
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
                                <img src="${pageContext.request.contextPath}/inventory/images/cao-hong-sam-hong-seon-gold-hop-2-lo-250g-1.webp" width="100%">
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
                                <img src="${pageContext.request.contextPath}/inventory/images/cao-sam-hu-doi-1.jpg" width="100%">
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
</body>
</html>
