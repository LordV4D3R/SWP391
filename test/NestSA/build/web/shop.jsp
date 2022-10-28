<%-- 
    Document   : shop
    Created on : Sep 26, 2022, 12:48:19 PM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <!-- Basic -->

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">

        <!-- Mobile Metas -->
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!-- Site Metas -->
        <title>Freshshop - Ecommerce Bootstrap 4 HTML Template</title>
        <meta name="keywords" content="">
        <meta name="description" content="">
        <meta name="author" content="">

        <!-- Site Icons -->
        <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon">
        <link rel="apple-touch-icon" href="images/apple-touch-icon.png">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <!-- Site CSS -->
        <link rel="stylesheet" href="css/style.css">
        <!-- Responsive CSS -->
        <link rel="stylesheet" href="css/responsive.css">
        <!-- Custom CSS -->
        <link rel="stylesheet" href="css/custom.css">

        <link rel="stylesheet" href="css/sweetalertAccWarning.css">
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
          <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->

    </head>

    <body>
        <div class="main-top">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                        <div class="custom-select-box">
                            <select id="basic" class="selectpicker show-tick form-control" data-placeholder="$ USD">
                                <option>$ VND</option>
                            </select>
                        </div>
                        <div class="right-phone-box">
                            <p>Hotline :- <a href="#"> +87378873548</a></p>
                        </div>
                        <c:set var="checkLogin" scope="session" value="${sessionScope.LOGIN_USER}"/>
                        <c:if test="${checkLogin != null}">
                            <div class="our-link">
                                <ul>
                                    <li><a href="my-account.jsp"><i class="fa fa-user s_color"></i> ${sessionScope.LOGIN_USER.fullName}</a></li>
                                    <li><a href="https://facebook.com/NestSongAnSWP" target="_blank"><i class="fas fa-headset"></i> Liên hệ</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                            <div class="login-box">

                                <a href="MainController?btAction=Logout" style="color: #FFFFFF;font-size: 14px;font-weight: 700;text-transform: uppercase">Logout <i class="fas fa-sign-out-alt"></i></a>
                            </div>
                        </c:if>
                        <c:if test="${checkLogin == null}" >
                            <div class="our-link">
                                <ul>
                                    <li>
                                        <button id="swa" style="color: white; background-color: black; text-transform: uppercase; font-weight: bold">
                                            <i class="fa fa-user s_color"></i> 
                                            Tài khoản
                                        </button>
                                    </li>

                                    <li><a href="https://facebook.com/NestSongAnSWP" target="_blank"><i class="fas fa-headset"></i> Liên hệ</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                            <div class="login-box" style="margin-right: 20px">
                                <a href="login.jsp" style="color: white;font-weight: bold">Đăng nhập/</a>
                                <a href="register.jsp" style="color: white; position: absolute;font-weight: bold">Đăng ký</a>
                                <!--                            <select id="basic" class="selectpicker show-tick form-control" data-placeholder="Sign In">
                                                                <option>Đăng ký</option>
                                                                <option>Đăng nhập</option>
                                                            </select>-->
                            </div>
                        </c:if>
                        <div class="text-slid-box">
                            <div id="offer-box" class="carouselTicker">
                                <ul class="offer-box">
                                    <li>
                                        <i class="fab fa-opencart"></i> Chào mừng NestSongAn
                                    </li>
                                    <li>
                                        <i class="fab fa-opencart"></i> Ở đây chúng tôi có các loại yến sào
                                    </li>
                                    <li>
                                        <i class="fab fa-opencart"></i> Giảm giá 10%! đối với yến thô
                                    </li>
                                    <li>
                                        <i class="fab fa-opencart"></i> Giảm giá 5%! đối với yến dạng lọ
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Main Top -->

        <!-- Start Main Top -->
        <header class="main-header">
            <!-- Start Navigation -->
            <nav class="navbar navbar-expand-lg navbar-light bg-light navbar-default bootsnav">
                <div class="container">
                    <!-- Start Header Navigation -->
                    <div class="navbar-header">
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar-menu"
                                aria-controls="navbars-rs-food" aria-expanded="false" aria-label="Toggle navigation">
                            <i class="fa fa-bars"></i>
                        </button>
                        <a class="navbar-brand" href="index.jsp"><img src="images/logo.png" class="logo" alt=""></a>
                    </div>
                    <!-- End Header Navigation -->

                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse" id="navbar-menu">
                        <ul class="nav navbar-nav ml-auto" data-in="fadeInDown" data-out="fadeOutUp">
                            <li class="nav-item active"><a class="nav-link" href="index.jsp">Trang chủ</a></li>
                            <li class="nav-item"><a class="nav-link" href="about.jsp">Giới thiệu</a></li>
                            <li class="dropdown">
                                <a href="ViewProductController" class="nav-link ">Cửa hàng</a>                               
                            </li>
                            <li class="nav-item"><a class="nav-link" href="gallery.jsp">Blog</a></li>
                            <li class="nav-item"><a class="nav-link" href="contact-us.jsp">Liên hệ</a></li>
                        </ul>
                    </div>
                    <!-- /.navbar-collapse -->

                    <!-- Start Atribute Navigation -->
                    <div class="attr-nav">
                        <ul>
                            <li class="side-menu">
                                <a href="cart.jsp">
                                    <i class="fa fa-shopping-cart"></i>
                                    <span class="badge">${sessionScope.QUANTITY_IN_CART}</span>
                                    <p>Giỏ hàng</p>
                                </a>
                            </li>
                        </ul>
                    </div>
                    <!-- End Atribute Navigation -->
                </div>                  
            </nav>
            <!-- End Navigation -->
        </header>
        <!-- End Main Top -->
        <!-- Start All Title Box -->
        <div class="all-title-box">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <h2>Sản phẩm</h2>
                        <ul class="breadcrumb">
                            <li class="breadcrumb-item"><a href="index.jsp">Về trang chủ</a></li>
                            <li class="breadcrumb-item active">Sản phẩm</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!-- End All Title Box -->

        <!-- Start Shop Page  -->
        <div class="shop-box-inner">
            <div style=" width: 855px;text-align: center;margin-left: 200px"><h2>${requestScope.CART_SUCCESS}</h2></div>

            <div class="container">
                <div class="row">
                    <div class="col-xl-9 col-lg-9 col-sm-12 col-xs-12 shop-content-right">
                        <div class="right-product-box">
                            <div class="product-item-filter row">
                                <div class="col-12 col-sm-8 text-center text-sm-left">
                                    <div class="toolbar-sorter-right">
                                        <span>Sắp xếp</span>
                                        <select id="basic" class="selectpicker show-tick form-control"
                                                data-placeholder="$ USD">
                                            <option data-display="Select">Theo</option>
                                            <option value="1">Từ giá cao → giá thấp</option>
                                            <option value="2">Từ giá thấp → Giá cao</option>
                                        </select>
                                    </div>
                                    <!--<p>sản phẩm đã thêm vào giỏ hàng thành công, mời bạn tiếp tục mua sắm</p>-->
                                </div>
                                <div class="col-12 col-sm-4 text-center text-sm-right">
                                    <ul class="nav nav-tabs ml-auto">
                                        <li>
                                            <a class="nav-link active" href="#grid-view" data-toggle="tab"> <i
                                                    class="fa fa-th"></i> </a>
                                        </li>
                                        <li>
                                            <a class="nav-link" href="#list-view" data-toggle="tab"> <i
                                                    class="fa fa-list-ul"></i> </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>

                            <div class="product-categorie-box">
                                <div class="tab-content">
                                    <div role="tabpanel" class="tab-pane fade show active" id="grid-view">
                                        <div class="row">
                                            <c:forEach items="${requestScope.VIEW_PRODUCT}" var="o">

                                                <div class="col-sm-6 col-md-6 col-lg-4 col-xl-4">
                                                    <form action="MainController">

                                                        <div class="products-single fix">
                                                            <div class="box-img-hover">
                                                                <a href="MainController?btAction=Detail&id=${o.productId}&name=${o.name}&img=${o.image}&des=${o.description}&quantity=${o.quantity}&price=${o.price}"><img style="width: 320px; height: 225px" src="${o.image}" class="img-fluid" alt="Image"></a>
                                                                <!--                                                                <div class="mask-icon">
                                                                                                                                    <ul>
                                                                                                                                        <li><a href="ViewProductDetailController" data-toggle="tooltip" data-placement="right"
                                                                                                                                               title="View"><i class="fas fa-eye"></i></a></li>
                                                                                                                                    </ul>                  
                                                                                                                                    <a class="cart" href="">Thêm vào giỏ</a>  
                                                                                                                                    url re-writing
                                                                                                                                </div>-->
                                                            </div>
                                                            <div class="why-text">
                                                                <a href="MainController?btAction=Detail&id=${o.productId}&name=${o.name}&img=${o.image}&des=${o.description}&quantity=${o.quantity}&price=${o.price}">
                                                                    <h4>${o.name}</h4>
                                                                </a> 
                                                                <h5>${o.price}đ</h5>
                                                            </div>
                                                            <input type="hidden" name="images" value="${o.image}">
                                                            <input type="hidden" name="name" value="${o.name}">
                                                            <!--                                                            <input type="hidden" name="price" value="{o.price}">-->
                                                            <input type="hidden" name="quantity" value="${o.quantity}">
                                                            <input type="hidden" name="description" value="${o.description}">
                                                        </div>
                                                    </form>
                                                </div>
                                            </c:forEach>
                                        </div>
                                    </div>
                                    <div role="tabpanel" class="tab-pane fade" id="list-view">
                                        <c:forEach items="${requestScope.VIEW_PRODUCT}" var="o">
                                            <div class="list-view-box">
                                                <div class="row">
                                                    <div class="col-sm-6 col-md-6 col-lg-4 col-xl-4">
                                                        <div class="products-single fix">
                                                            <div class="box-img-hover">                                                               
                                                                <img src="${o.image}" class="img-fluid" alt="Image">
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-6 col-md-6 col-lg-8 col-xl-8">
                                                        <div class="full-width" style="margin-bottom: 30px">
                                                            <div style="text-align: justify;padding: 0 12px;background: #6666661c;">
                                                                <h4 style="font-size: 24px;
                                                                    font-weight: 700;
                                                                    padding-bottom: 15px">${o.name}</h4>
                                                                <h5 style="font-weight: 700;font-size: 18px">${o.price} VND</h5>
                                                                <p>${o.description}</p>
                                                            </div>
                                                            <a class="btn hvr-hover" href="#" style="margin-top: 12px;color: #FFFFFF;font-weight: 700">Add to Cart</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div> 
                                        </c:forEach>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-3 col-sm-12 col-xs-12 sidebar-shop-left">
                        <div class="product-categori">
                            <div class="search-product">
                                <form action="MainController">
                                    <input class="form-control" placeholder="Search here..." type="text" name="search">
                                    <button type="submit" name = "btAction" value = "Search"> <i class="fa fa-search"></i> </button>
                                </form>
                            </div>
                            <div class="filter-sidebar-left">
                                <div class="title-left">                                                                                                                                    
                                    <h3>Phân loại</h3>
                                </div>
                                <div class="list-group list-group-collapse list-group-sm list-group-tree"
                                     id="list-group-men" data-children=".sub-men">
                                    <!--                                    <div class="list-group-collapse sub-men">
                                                                            <a class="list-group-item list-group-item-action" href="#sub-men1"
                                                                               data-toggle="collapse" aria-expanded="true" aria-controls="sub-men1">Fruits &
                                                                                Drinks <small class="text-muted">(100)</small>
                                                                            </a>
                                                                            <div class="collapse show" id="sub-men1" data-parent="#list-group-men">
                                                                                <div class="list-group">
                                                                                    <a href="#" class="list-group-item list-group-item-action active">Fruits 1
                                                                                        <small class="text-muted">(50)</small></a>
                                                                                    <a href="#" class="list-group-item list-group-item-action">Fruits 2 <small
                                                                                            class="text-muted">(10)</small></a>
                                                                                    <a href="#" class="list-group-item list-group-item-action">Fruits 3 <small
                                                                                            class="text-muted">(10)</small></a>
                                                                                    <a href="#" class="list-group-item list-group-item-action">Fruits 4 <small
                                                                                            class="text-muted">(10)</small></a>
                                                                                    <a href="#" class="list-group-item list-group-item-action">Fruits 5 <small
                                                                                            class="text-muted">(20)</small></a>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="list-group-collapse sub-men">
                                                                            <a class="list-group-item list-group-item-action" href="#sub-men2"
                                                                               data-toggle="collapse" aria-expanded="false" aria-controls="sub-men2">Vegetables
                                                                                <small class="text-muted">(50)</small>
                                                                            </a>
                                                                            <div class="collapse" id="sub-men2" data-parent="#list-group-men">
                                                                                <div class="list-group">
                                                                                    <a href="#" class="list-group-item list-group-item-action">Vegetables 1
                                                                                        <small class="text-muted">(10)</small></a>
                                                                                    <a href="#" class="list-group-item list-group-item-action">Vegetables 2
                                                                                        <small class="text-muted">(20)</small></a>
                                                                                    <a href="#" class="list-group-item list-group-item-action">Vegetables 3
                                                                                        <small class="text-muted">(20)</small></a>
                                                                                </div>
                                                                            </div>
                                                                        </div>-->
                                    <c:forEach var="c" items="${sessionScope.VIEW_CATEGORY}"> 
                                        <a href="MainController?btAction=ViewProductByCategory&categoryId=${c.categoryId}" class="list-group-item list-group-item-action">${c.categoryName}<small
                                                class="text-muted">(150) </small></a>

                                    </c:forEach>
                                </div>
                            </div>
                            <!--                            <div class="filter-price-left">
                                                            <div class="title-left">
                                                                <h3>Phân loại theo giá</h3>
                                                            </div>
                                                            <div class="price-box-slider">
                                                                <div id="slider-range"></div>
                                                                <p>
                                                                    <input type="text" id="amount" readonly
                                                                           style="border:0; color:#fbb714; font-weight:bold;">
                                                                    <button class="btn hvr-hover" type="submit">Phân loại</button>
                                                                </p>
                                                            </div>
                                                        </div>-->
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Shop Page -->

        <!-- Start Instagram Feed  -->
        <div class="instagram-box">
            <div class="main-instagram owl-carousel owl-theme">
                <c:forEach items="${requestScope.VIEW_PRODUCT}" var="o">
                <div class="item">
                    <div class="ins-inner-box">
                        <img style="width: 320px; height: 225px" src="${o.image}" alt="Image" />
                        <div class="hov-in">
                            <a href="#"><i class="fab fa-instagram"></i></a>
                        </div>
                    </div>
                </div>  
                </c:forEach>
            </div>
        </div>
        <!-- End Instagram Feed  -->


        <!-- Start Footer  -->
        <footer>
            <div class="footer-main">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-4 col-md-12 col-sm-12">
                            <div class="footer-top-box">
                                <h3>Giờ làm việc</h3>
                                <ul class="list-time">
                                    <li>Thứ hai - Thứ Sáu: 08.00am to 05.00pm</li> <li>Thứ bảy - Chủ nhật: 10.00am to 08.00pm</li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-12 col-sm-12">
                            <div class="footer-top-box">
                                <h3>Liên hệ</h3>
                                <form class="newsletter-box">
                                    <div class="form-group">
                                        <input class="" type="email" name="Email" placeholder="Email Address*" />
                                        <i class="fa fa-envelope"></i>
                                    </div>
                                    <button class="btn hvr-hover" type="submit">Nhập</button>
                                </form>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-12 col-sm-12">
                            <div class="footer-top-box">
                                <h3>Mạng xã hội</h3>
                                <p>Các mạng xã hội chúng tôi đang sử dụng</p>
                                <ul>
                                    <li><a href="#"><i class="fab fa-facebook" aria-hidden="true"></i></a></li>
                                    <li><a href="#"><i class="fab fa-twitter" aria-hidden="true"></i></a></li>
                                    <li><a href="#"><i class="fab fa-linkedin" aria-hidden="true"></i></a></li>
                                    <li><a href="#"><i class="fab fa-google-plus" aria-hidden="true"></i></a></li>
                                    <li><a href="#"><i class="fa fa-rss" aria-hidden="true"></i></a></li>
                                    <li><a href="#"><i class="fab fa-pinterest-p" aria-hidden="true"></i></a></li>
                                    <li><a href="#"><i class="fab fa-whatsapp" aria-hidden="true"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <hr>
                    <div class="row">
                        <div class="col-lg-4 col-md-12 col-sm-12">
                            <div class="footer-widget">
                                <h4>THông tin về NestSongAn</h4>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p> 
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. </p> 							
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-12 col-sm-12">
                            <div class="footer-link">
                                <h4>Information</h4>
                                <ul>
                                    <li><a href="#">Giới thiệu</a></li>
                                    <li><a href="#">Hướng dẫn mua hàng</a></li>

                                    <li><a href="#">Chính sách bảo mật</a></li>
                                    <li><a href="#">Thông tin vận chuyển</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-12 col-sm-12">
                            <div class="footer-link-contact">
                                <h4>Liên hệ với chúng tôi</h4>
                                <ul>
                                    <li>
                                        <p><i class="fas fa-map-marker-alt"></i>Address: 90 Nguyễn Tất Thành <br>Phường 13, Quận 4,<br> TP. Hồ Chí Minh </p>
                                    </li>
                                    <li>
                                        <p><i class="fas fa-phone-square"></i>Điện thoại: <a href="tel:+1-888705770">870378873548</a></p>
                                    </li>
                                    <li>
                                        <p><i class="fas fa-envelope"></i>Email: <a href="mailto:contactinfo@gmail.com">contactinfo@gmail.com</a></p>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
        <!-- End Footer  -->

        <!-- Start copyright  -->
        <div class="footer-copyright">
            <p class="footer-company">All Rights Reserved. &copy; 202   2 <a href="#">NestSongAn</a> Design By :
                <a href="#">Team1SWP</a></p>
        </div>
        <!-- End copyright  -->

        <a href="#" id="back-to-top" title="Back to top" style="display: none;">&uarr;</a>

        <!-- ALL JS FILES -->
        <script src="js/jquery-3.2.1.min.js"></script>
        <script src="js/popper.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <!-- ALL PLUGINS -->
        <script src="js/jquery.superslides.min.js"></script>
        <script src="js/bootstrap-select.js"></script>
        <script src="js/inewsticker.js"></script>
        <script src="js/bootsnav.js."></script>
        <script src="js/images-loded.min.js"></script>
        <script src="js/isotope.min.js"></script>
        <script src="js/owl.carousel.min.js"></script>
        <script src="js/baguetteBox.min.js"></script>
        <script src="js/jquery-ui.js"></script>
        <script src="js/jquery.nicescroll.min.js"></script>
        <script src="js/form-validator.min.js"></script>
        <script src="js/contact-form-script.js"></script>
        <script src="js/custom.js"></script>
        <script src="js/sweetalert.min.js"></script>
        <script src="js/sweetalertAccWarning.js"></script>
    </body>

</html>