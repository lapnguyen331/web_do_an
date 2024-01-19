<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <!-- Thư viện ngoài (Luôn để đầu tiên) -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/stylesheet/fontawesome.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/libs/mdb-bootstrap-5/css/mdb.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/stylesheet/all.min.css" />

    <!-- Style của project -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/stylesheet/all.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/main-header.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/main-style.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/main-footer.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/button-title.css" />
    <!-- this page -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/user-profile/user-profile.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/user-profile/user-profile-order-detail.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/user-profile/user-profile-order-popup.css">
    <title>Slider</title>
  </head>
  <body>
<%--  header--%>
  <jsp:include page="/WEB-INF/view/shared/header.jsp" />
<%--  header end--%>
  <section id="user-profile">
      <div class="user-profile-container">
        <div class="left-control">
          <div class="user-profile">
            <a class="user-image" href="user-profile.jsp"></a>
            <!--NOTE : Link tới hồ sơ user-->
            <div class="user-avatar">
              <img
                class="avrtar-img"
                src="${pageContext.request.contextPath}/inventory/images/user-profile/use-avatar-header-default.jpg"
                alt=""
              />
            </div>
            <div class="user-account-name">
              <div class="account-name">User1</div>
              <div>
                <a class="user-profile-modify" href="user-profile-edit.jsp">
                  <!--NOTE: thiếu link tới profile của user-->
                  <i class="fa-solid fa-pen"></i>
                  Sửa Hồ Sơ
                </a>
              </div>
            </div>
          </div>
          <div class="left-controller-but">
            <!-- tài khoản cũa tôi -->
            <div class="account-height startdust-dropdown">
                <div class="startdust-dropdown-item-header">
                    <a class="stardust-link" >
                        <img src="${pageContext.request.contextPath}/inventory/images/user-profile/account.png" alt="">
                        <span>Tài khoản của tôi</span>
                    </a> 
                </div>
                <div class="startdust-dropdown-item-body">
                    <div class="slitter">
                        <a class="body-down" href="user-profile.jsp">
                            <span>Hồ sơ</span>
                        </a> <!--NOTE : link tới prof-->
                        <a class="body-down" href="user-profile-changePass.jsp">
                            <span>Đổi mật khẩu</span>
                        </a> 
                        <a class="body-down" href="user-profile-notification-modify.jsp">
                            <span>Cài đặt thông báo</span>
                        </a> 

                    </div>
                </div>

            </div>
             <!-- Đơn mua -->
             <div class="startdust-dropdown--open">
                <div class="startdust-dropdown-item-header">
                    <a class="stardust-link" href="user-profile-order.jsp">
                        <img src="${pageContext.request.contextPath}/inventory/images/user-profile/donmua-icon.png" alt="">
                        <span>Đơn Mua</span>
                    </a> <!--NOTE: link tới profile-->
                </div>
            </div>
             <!-- thông báo-->
             <div class="startdust-dropdown--open">
                <div class="startdust-dropdown-item-header">
                    <a class="stardust-link" href="user-profile-notification.jsp">
                        <img src="${pageContext.request.contextPath}/inventory/images/user-profile/thongbao-icon.png" alt="">
                        <span>Thông Báo</span>
                    </a> <!--NOTE: link tới profile-->
                </div>
            </div>
        </div>
        </div>
        <div class="right-content">
          <section id="profile">
            <div class="profile-wrapper">
              <!-- head -->
              <div class="profile-header">
                <h1>Chi tiết đơn hàng</h1>
              </div>
               <!-- content tab -->
                <div class="tab-content" id="user-profile-tab-content">
                    <div class="tab-pane fade show active" id="user-profile-order-content-all" role="tabpanel" aria-labelledby="user-profile-order-tab-all">
                        <!-- các order -->
                        <div class="user-profile-order-container">
                            <div class="user-profile-order-show">
                              <div class="user-profile-order-item">
                                <div class="user-profile-order-content">
                                    <section id="user-profile-order-item" class="user-order-item-infor">
                                        <a href="user-profile-order-detail.jsp"></a> <!--Note dẫn đến chi tiết order-->
                                        <div class="order-item" >
                                            <div class="order-item-wrapper">
                                                <div class="order-item-infor-left">
                                                    <img src="${pageContext.request.contextPath}/inventory/images/user-profile/user-profile-order/oder-item1.jpg" alt="">
                                                    <div class="order-item-detail">
                                                        <div class="order-item-title">
                                                            <span>CHẤT CHIẾT ĐÔNG TRÙNG HẠ THẢO HÀN QUỐC</span>
                                                        </div>
                                                        <div class="order-item-specification">
                                                            <div class="order-item-specification-head">
                                                                <span class="order-item-head">Qui cách: </span>
                                                                <span>20 ống x 20ml</span>
                                                            </div>
                                                        </div>
                                                        <div class="order-item-quantity">
                                                            <span class="order-item-head">Số lượng: </span>
                                                            <span >x 1</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="order-item-infor-right">
                                                <div class="order-item-total">
                                                    <span>1.200.000</span>
                                                    <span class="curency">đ</span>
                                                </div>
                                            </div> 
                                        </div>       
                                    </section>
                                </div>
                                <div class="user-profile-order-item-userfunction">
                                  <div class="user-profile-rating-quote">
                                      <span>Mời bạn đánh giá sản phẩm!</span>
                                  </div>
                                  <div class="user-profile-bu-container">
                                      <button data-mdb-toggle="modal" data-mdb-target="#rating-product-order">Đánh giá</button>
                                      <button  data-mdb-toggle="modal" data-mdb-target="#complaint-product-order">Khiếu nại</button>
                                      <button href="cart.jsp">Mua lại</button> <!--Note dẫn qua file mua hàng-->
                                  </div>
                              </div>
                              </div>
                                <div class="user-profile-order-detail">
                                    <div class="user-profile-order-delivery">
                                       <h5>Thông tin người nhận</h5>
                                      <div class="user-profile-order-delivery-wrapper">
                                        <div class="user-profile-order-delivery-left">
                                          <div class="order-delivery-label">
                                            <span>Họ tên</span>  
                                          </div>
                                          <div class="order-delivery-label">
                                            <span>Email</span>
                                          </div>
                                          <div class="order-delivery-label">
                                            <span>Địa chỉ</span>
                                          </div>
                                          <div class="order-delivery-label">
                                            <span>Số điện thoại</span>
                                          </div>
                                          <div class="order-delivery-label">
                                            <span>Thông tin bổ sung</span>
                                          </div>
                                        </div>
                                        <div class="user-profile-order-delivery-right">
                                          <div class="order-delivery-content"> 
                                            <span>
                                              Nguyễn Hoàng Lập
                                            </span>
                                          </div>
                                          <div class="order-delivery-content">
                                            <span>hehe@gmail.com</span>
                                          </div>
                                          <div class="order-delivery-content">
                                            <span>211 Nguyễn văn cừ</span>
                                          </div>
                                          <div class="order-delivery-content">
                                            <span>0233344444</span>
                                          </div>
                                          <div class="order-delivery-content">
                                            <span>Không giao sau 6h tối</span>
                                          </div>
                                        </div>
                                      </div>
                                    </div>
                                    <div class="user-profile-order-bill">
                                      <h5>Tổng cộng</h5>
                                      <div class="user-profile-order-bill-wrapper">
                                        <div class="order-bill-label-left">
                                          <i class="fa-solid fa-money-bill"></i>
                                          <div class="user-profile-order-bill-vat">
                                            <span>Tổng cộng(bao gồm VAT)</span>                                      
                                          </div>                                        
                                        </div>
                                        <div class="order-bill-content-right">
                                          <span class="total">1.400.000</span>
                                          <span class="curency">đ</span>
                                        </div>
                                      </div>
                                    </div>

                                </div>
                               
                            </div>
                        </div>
                    </div>    
                </div>
            </div>
          </section>
        </div>
      </div>   
    </section>

 <!-- Modal popup đánh giá sp order -->
 <div class="modal top fade" id="rating-product-order" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true" data-mdb-backdrop="static" data-mdb-keyboard="true">
    <div class="modal-dialog modal-lg ">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Đánh giá sản phẩm</h5>
          <button type="button" class="btn-close" data-mdb-dismiss="modal" aria-label="Đóng"></button>
        </div>
        <div class="modal-body">
          <div class="rating-wrapper">
            <div class="service-rating">
                <div class="label-left">
                    <div>Tư vấn:</div>
                    <div>Chất lượng sản phẩm</div>
                </div>
                <div class="rating-start-right">
                    <div class="service container">
                        <ul class="rating" data-mdb-toggle="rating">
                            <i class="far fa-star fa-sm text-primary"></i>
                            <i class="far fa-star fa-sm text-primary"></i>
                            <i class="far fa-star fa-sm text-primary"></i>
                            <i class="far fa-star fa-sm text-primary"></i>
                            <i class="far fa-star fa-sm text-primary"></i>
                        </ul>
                    </div>
                    <div class="quality container">
                        <ul class="rating" data-mdb-toggle="rating">
                            <i class="far fa-star fa-sm text-primary"></i>
                            <i class="far fa-star fa-sm text-primary"></i>
                            <i class="far fa-star fa-sm text-primary"></i>
                            <i class="far fa-star fa-sm text-primary"></i>
                            <i class="far fa-star fa-sm text-primary"></i>
                        </ul>
                    </div> 
                </div>
            </div>
            <div class="raing-comment">
              <label for="">Đánh giá sản phẩm</label>
              <textarea name="" id="" cols="70" rows="20"></textarea>
            </div>
          </div>  
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-mdb-dismiss="modal">
            Đóng
          </button>
          <button type="button" class="btn btn-primary">Lưu thay đổi</button>
        </div>
      </div>
    </div>
  </div>
 <!-- Modal popup khiếu nại sp order -->
 <div class="modal top fade" id="complaint-product-order" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true" data-mdb-backdrop="static" data-mdb-keyboard="true">
    <div class="modal-dialog modal-lg ">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Khiếu nại sản phẩm</h5>
          <button type="button" class="btn-close" data-mdb-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
            <h5 class="complaint-tittle">Thông tin liên hệ</h5>
            
           <div class="complaint-wrapper">
            <div class="complaint-customer-infor">
              <div class="label-left">
                <label for="">Họ tên</label>
                <label for="">Số diện thoại</label>
                <label for="">Email</label>
              </div>
              <div class="in-infor-right">
                <input type="text">
                <input type="text">
                <input type="text">
              </div>
            </div>
             <div class="complaint-comment">
              <label for="">Khiếu nại của khách hàng</label>
              <textarea name="" id="" cols="70" rows="20"></textarea>
            </div>
           </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-mdb-dismiss="modal">
            Đóng
          </button>
          <button type="button" class="btn btn-primary">Lưu thay đổi</button>
        </div>
      </div>
    </div>
  </div>
<%--footer--%>
<jsp:include page="/WEB-INF/view/shared/footer.jsp" />
<%--footer--%>
<div id="fb-root"></div>
    <script src="js/user-profile.js"></script>
    <script
      async
      defer
      crossorigin="anonymous"
      src="https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v18.0"
      nonce="Qoebijhj"
    ></script>
    <script src="js/jquery.js"></script>
    <script src="libs/mdb-bootstrap-5/js/mdb.min.js"></script>
    <!-- for this page -->
    <script src="js/user-profile/user-profile.js"></script>
    <script src="js/user-profile/user-profile-order.js"></script>
    <script src="js/user-profile/user-profile-order-startRating.js"></script>
  </body>
</html>
