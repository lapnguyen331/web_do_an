<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Thư viện ngoài (Luôn để đầu tiên) -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/stylesheet/fontawesome.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/libs/mdb-bootstrap-5-pro/css/mdb.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/stylesheet/all.min.css">

    <!-- Style của project -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/stylesheet/all.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/main-header.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/main-style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/main-footer.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/button-title.css">
    <!-- this page -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/user/user-profile.css" />
    <title>Trang Hồ Sơ Khách Hàng</title>
</head>
<body>
    <jsp:include page="/WEB-INF/view/shared/header.jsp" />

    <section id="user-profile">
        <div class="user-profile-container">
            <div class="left-control">
                <div class="user-profile">
                    <a class="user-image" href="user-profile.jsp"></a> <!--NOTE : Link tới hồ sơ user-->
                    <div class="user-avatar">
                        <img class="avrtar-img" src="${pageContext.request.contextPath}/inventory/images/user-profile/use-avatar-header-default.jpg" alt="">
                    </div>
                    <div class="user-account-name">
                        <div class="account-name">User1</div>
                        <div>
                            <a class="user-profile-modify" href="user-profile-edit.jsp">  <!--NOTE: thiếu link tới profile của user-->
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
                            <h1>Hồ sơ của tôi</h1>
                            <div>Quản lí thông tin hồ sơ để bảo mật tài khoản</div>
                        </div>
                        <!-- content -->
                        <div class="profile-infor">
                            <div class="profile-infor-container">
                                <div class="profile-left-content">
                                    <form action="">
                                        <table class="profile-infor-detail">
                                            <!-- account -->
                                            <tr>
                                                <td class="label">
                                                    <label>Tên đăng nhập</label>
                                                </td>
                                                <td class="content-space">
                                                    <div class="detail-content">User 1</div>
                                                </td>
                                            </tr>
                                            <!-- tên Kh -->
                                            <tr>
                                                <td class="label">
                                                    <label>Tên Khách Hàng</label>
                                                </td>
                                                <td class="content-space">
                                                    <div class="detail-content">
                                                       Nguyễn Hoàng Lập
                                                    </div>
                                                </td>
                                            </tr>
                                            <!-- email -->
                                            <tr>
                                                <td class="label">
                                                    <label>Email</label>
                                                </td>
                                                <td class="content-space">
                                                    <div class="detail-content">hau**************.com
                                                    </div>
                                                </td>
                                            </tr>
                                            <!-- số diện thoại -->
                                            <tr>
                                                <td class="label">
                                                    <label>Số điện thoại</label>
                                                </td>
                                                <td class="content-space">
                                                    <div class="detail-content">0************27
                                                    </div>
                                                </td>
                                            </tr>
                                            <!-- giới tính -->
                                            <tr>
                                                <td class="label">
                                                    <label>Giới tính</label>
                                                </td>
                                                <td class="content-space">
                                                    <div class="detail-content">
                                                    Nam
                                                    </div>
                                                </td>
                                            </tr>
                                            <!-- Ngày sinh -->
                                            <tr>
                                                <td class="label">
                                                    <label>Ngày sinh</label>
                                                </td>
                                                <td class="content-space">
                                                   20/03/2023
                                                </td>
                                            </tr>
                                            <!-- Nút lưu -->
                                            <tr>
                                                <td class="label">
                                                    <label></label>
                                                </td>
                                            </tr>
                                        </table>
                                    </form>
                                </div>
                                <div class="profile-right-content">
                                    <div class="avartar-wrapper">
                                        <div class="profile-image" >
                                            <img src="${pageContext.request.contextPath}/inventory/images/user-profile/use-avatar-header-default.jpg" alt="">
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
    <jsp:include page="/WEB-INF/view/shared/footer.jsp" />
    <div id="fb-root"></div>
    <script src="${pageContext.request.contextPath}/js/user/user-profile.js"></script>
    <script async defer crossorigin="anonymous" 
        src="https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v18.0" nonce="Qoebijhj">
    </script>
    <script src="js/jquery.js"></script>
    <script src="libs/mdb-bootstrap-5-pro/js/mdb.min.js"></script>
</body>
</html>