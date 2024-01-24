<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Thư viện ngoài (Luôn để đầu tiên) -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/stylesheet/fontawesome.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/stylesheet/all.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/libs/mdb-bootstrap-5-pro/css/mdb.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/libs/image-uploader/image-uploader.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/libs/DataTables/datatables.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/libs/daterangepicker-master/daterangepicker.css">


    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/main-style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/admin/sidebar.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/main-header.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/admin/admin-orders-edit.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap-override.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/datatables-override.css">
    <title>Quản lí sản phẩm</title>
</head>

<body>
<%@ include file="/WEB-INF/view/admin/shared/header.jsp" %>
<%@ include file="/WEB-INF/view/admin/shared/sidebar.jsp" %>
<input type="hidden" value="${requestScope.order.id}" id="order-item">
<section id="main-content-section">
    <div class="main-content">
        <section id="product_edit">
            <div class="container">
                <div class="row">
                    <div class="col-md-3">
                        <div class="left-container">
                            <section id="order-info">
                                <h4 class="form-title pb-3">Thông tin đơn hàng</h4>
                                <h6>Mã đơn hàng</h6>
                                <h5>#VZ120001</h5>
                                <label for="txt_date" class="d-block py-2 fw-semibold">Ngày tạo đơn *</label>
                                <div class="form-outline">
                                    <input type="text" class="form-control" placeholder="Ngày tạo đơn" id="txt_date" value="10/27/2023">
                                </div>
                                <label for="select_order_date" class="d-block py-2 fw-semibold">Tình trạng đơn hàng</label>
                                <select class="select" id="select_order_date">
                                    <option value="1">Đã được giao</option>
                                    <option value="2">Đang xử lí</option>
                                    <option value="2">Đang được giao</option>
                                    <option value="3">Đang trả về</option>
                                    <option value="4">Đã bị hủy</option>
                                </select>
                            </section>

                            <section id="order-info">
                                <h4 class="form-title pb-3">Thông tin chủ đơn</h4>
                                <div class="input-group">
                                    <div id="search-autocomplete" class="form-outline">
                                        <input type="search" id="form1" class="form-control" value="pnHung1709z"/>
                                        <label class="form-label" for="form1">Tên tài khoản</label>
                                    </div>
                                    <button type="button" class="btn btn-primary d-flex align-items-center gap-2 px-2 text-wheat-color fw-semibold">
                                        <i class="fa-solid fa-arrows-rotate"></i>
                                        <span class="text-nowrap">Tải dữ liệu</span>
                                    </button>
                                </div>
                                <hr>
                                <div class="customer-wrapper">
                                    <div class="avatar">
                                        <img src="${pageContext.request.contextPath}/image/customer-male-demo.png" width="100%" alt="">
                                    </div>
                                    <div class="customer-info">
                                        <div class="customer-name fw-semibold">Phạm Nhật Hùng</div>
                                        <div class="customer-role">Khách hàng</div>
                                    </div>
                                </div>
                                <div class="customer-contact">
                                    <ul>
                                        <li>
                                            <i class="fa-regular fa-envelope"></i>
                                            <span>pnh21378@yahoo.com</span>
                                        </li>
                                        <li>
                                            <i class="fa-solid fa-phone-volume"></i>
                                            <span>093-312-1234</span>
                                        </li>
                                    </ul>
                                </div>
                            </section>
                        </div>
                    </div>
                    <div class="col-md-9">
                        <div class="right-container">
                            <form action="" id="products-form">
                                <section id="products-list-section">
                                    <h4 class="form-title">Lựa chọn sản phẩm</h4>
                                    <h6 class="form-title">Thêm sản phẩm vào đơn hàng này</h6>
                                    <div class="products-range">
                                    </div>
                                    <h4 class="form-title">Tổng tiền: <span id="total-price">0</span>₫</h4>
                                    <hr class="horizontal">
                                    <div class="filter-input">
                                        <i class="fa-solid fa-magnifying-glass"></i>
                                        <input type="text" placeholder="Tìm kiếm sản phẩm">
                                    </div>
                                    <table id="products_filter_table" class="display" style="width:100%">
                                        <thead>
                                        <tr>
                                            <th>#</th>
                                            <th>Sản phẩm</th>
                                            <th>Tồn kho</th>
                                        </tr>
                                        </thead>
                                    </table>
                                </section>
                                <section id="order-details-section">
                                    <h4 class="form-title">Thông tin đơn hàng</h4>
                                    <h6 class="form-title">Nhập thông tin người nhận vào trường dưới đây</h6>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="input-field">
                                                <label for="txt_fullname">Họ và tên *</label>
                                                <input type="text" placeholder="Họ và tên" value="Phạm Quốc Trị" id="txt_fullname">
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="input-field">
                                                <label for="txt_email">Email *</label>
                                                <input type="text" placeholder="Email" id="txt_email" value="pnh21378@yahoo.com">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row mt-3">
                                        <div class="col-md-6">
                                            <div class="input-field">
                                                <label for="txt_phone">Số điện thoại *</label>
                                                <input type="text" placeholder="Số điện thoại" value="0933121234" id="txt_phone">
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="input-field">
                                                <label for="txt_address">Địa chỉ nhận hàng *</label>
                                                <input type="text" placeholder="Địa chỉ" value="" id="txt_address">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row mt-3">
                                        <div class="col-md-12">
                                            <div class="input-field">
                                                <label for="txtArea_note">Ghi chú (tùy chọn)</label>
                                                <textarea name="" id="txtArea_note" rows="5"></textarea>
                                            </div>
                                        </div>
                                    </div>
                                </section>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="actions-field">
                        <button class="cancel-btn">Làm mới</button>
                        <button class="update-btn">Cập nhật thông tin</button>
                    </div>
                </div>
            </div>
        </section>
    </div>
</section>
<script src="${pageContext.request.contextPath}/js/jquery.js"></script>
<script src="${pageContext.request.contextPath}/libs/mdb-bootstrap-5-pro/js/mdb.min.js"></script>
<script src="${pageContext.request.contextPath}/js/admin/sidebar.js"></script>
<script src="${pageContext.request.contextPath}/libs/DataTables/datatables.min.js"></script>
<script src="${pageContext.request.contextPath}/libs/daterangepicker-master/moment.min.js"></script>
<script src="${pageContext.request.contextPath}/libs/daterangepicker-master/daterangepicker.js"></script>
<script src="${pageContext.request.contextPath}/libs/DataTables/datatables.min.js"></script>
<script src="${pageContext.request.contextPath}/js/admin/order-edit.js?v=11"></script>
</body>
</html>