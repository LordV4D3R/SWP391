<%-- 
    Document   : index
    Created on : Sep 27, 2022, 12:45:12 PM
    Author     : thangbv
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">
    <!-- Basic -->

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">

        <!-- Mobile Metas -->
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!-- Site Metas -->
        <title>NestSongAn Landing Page</title>
        <meta name="keywords" content="">
        <meta name="description" content="">
        <meta name="author" content="">

        <!-- Site Icons -->
        <link rel="shortcut icon" href="images/logo.png" type="image/x-icon">
        <link rel="apple-touch-icon" href="images/logo.png">

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
        <!-- Start Main Top -->
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
                        <!--                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar-menu"
                                                aria-controls="navbars-rs-food" aria-expanded="false" aria-label="Toggle navigation">
                                                <i class="fa fa-bars"></i>
                                            </button>-->
                        <a class="navbar-brand" href="index.jsp"><img src="images/logo.png" class="logo" alt=""></a>
                    </div>
                    <!-- End Header Navigation -->

                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse" id="navbar-menu">
                        <ul class="nav navbar-nav ml-auto" data-in="fadeInDown" data-out="fadeOutUp">
                            <li class="nav-item active"><a class="nav-link" href="index.jsp">Trang chủ</a></li>
                            <li class="nav-item"><a class="nav-link" href="about.jsp">Giới thiệu</a></li>
                            <li class="dropdown">
                                <a href="ViewProductController" class="nav-link">Sản phẩm</a>
                            </li>
                            <li class="nav-item"><a class="nav-link" href="ViewListBlogController">Blog</a></li>
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
        <!-- Start Slider -->
        <div id="slides-shop" class="cover-slides">
            <ul class="slides-container">
                <li class="text-center">
                    <img src="images/banner-01.jpg" alt="">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12">
                                <h1 class="m-b-20"><strong>Chào mừng đến với <br> NestSongAn</strong></h1>
                                <p class="m-b-40">Yến sào thượng hạng, Thượng đỉnh yến sào, Vì sức khỏe của gia đình</p>
                                <p><a class="btn hvr-hover" href="gallery.jsp">Blog</a></p>
                            </div>
                        </div>
                    </div>
                </li>
                <li class="text-center">
                    <img src="images/banner-02.jpg" alt="">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12">
                                <h1 class="m-b-20"><strong>Chào mừng đến với <br> NestSongAn</strong></h1>
                                <p class="m-b-40">Yến sào thượng hạng, Thượng đỉnh yến sào, Vì sức khỏe của gia đình.</p>
                                <p><a class="btn hvr-hover" href="gallery.jsp">Blog</a></p>
                            </div>
                        </div>
                    </div>
                </li>
                <li class="text-center">
                    <img src="images/banner-03.jpg" alt="">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12">
                                <h1 class="m-b-20"><strong>Chào mừng đến với <br> NestSongAn</strong></h1>
                                <p class="m-b-40">Yến sào thượng hạng, Thượng đỉnh yến sào, Vì sức khỏe của gia đình.</p>
                                <p><a class="btn hvr-hover" href="gallery.jsp">Blog</a></p>
                            </div>
                        </div>
                    </div>
                </li>
            </ul>
            <div class="slides-navigation">
                <a href="#" class="next"><i class="fa fa-angle-right" aria-hidden="true"></i></a>
                <a href="#" class="prev"><i class="fa fa-angle-left" aria-hidden="true"></i></a>
            </div>
        </div>
        <!-- End Slider -->

        <!-- Start Categories  -->
        <div class="categories-shop">
            <div class="container">
                <div class="title-all text-center">
                    <h1>Phân loại</h1>
                </div>
                <div class="row justify-content-center">
                    <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                        <div class="shop-cat-box">
                            <img class="img-fluid" style="height: 325px" src="https://yensaohaiphong.net/wp-content/uploads/2021/08/yen-dao-tho-cao-cap-1.png" alt="" />
                            <a class="btn hvr-hover" href="MainController?btAction=ViewProductByCategory&categoryId=C01">Yến đảo thô nguyên tổ</a>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                        <div class="shop-cat-box">
                            <img class="img-fluid" style="height: 325px" src="https://vuayen.vn/wp-content/uploads/2019/05/t%E1%BB%95-y%E1%BA%BFn-%C4%91%E1%BA%A3o-th%C6%B0%E1%BB%A3ng-h%E1%BA%A1ng-2.jpg" alt="" />
                            <a class="btn hvr-hover" href="MainController?btAction=ViewProductByCategory&categoryId=C02">Yến đảo tinh chế</a>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                        <div class="shop-cat-box">
                            <img class="img-fluid" style="height: 325px" src="https://cdn.tgdd.vn/Products/Images/4585/112153/bhx/loc-6-lon-nuoc-yen-sao-khanh-hoa-gold-co-duong-190ml-202001161028030919.jpg" alt="" />
                            <a class="btn hvr-hover" href="MainController?btAction=ViewProductByCategory&categoryId=C03">Nước yến</a>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                        <div class="shop-cat-box">
                            <img class="img-fluid" style="height: 325px" src="https://yensaokhanhhoa.com.vn/img/Products/H12-1.jpg" alt="" />
                            <a class="btn hvr-hover" href="MainController?btAction=ViewProductByCategory&categoryId=C04">Bánh yến sào</a>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                        <div class="shop-cat-box">
                            <img class="img-fluid" style="height: 325px" src="https://yanyen.vn/wp-content/uploads/2022/02/cach-chung-yen-tao-do-ky-tu-hat-sen-4-scaled.jpg" alt="" />
                            <a class="btn hvr-hover" href="MainController?btAction=ViewProductByCategory&categoryId=C05">Yến chưng</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Categories -->

        <!-- Start Products  -->
        <div class="products-box">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="title-all text-center">
                            <h1>Sản phẩm</h1>
                            <p>Các sản phẩm bán chạy</p>
                        </div>
                    </div>
                </div>


                <div class="row special-list">
                    <div class="col-lg-3 col-md-6 special-grid best-seller">
                        <a href="#">
                            <div class="products-single fix">
                                <div class="box-img-hover">
                                    <img src="images/img-pro-01.jpg" class="img-fluid" alt="Image">
                                </div>
                                <div class="why-text">
                                    <h4>Lorem ipsum dolor sit amet</h4>
                                    <h5> $7.79</h5>
                                </div>
                            </div>
                        </a>
                    </div>

                    <div class="col-lg-3 col-md-6 special-grid top-featured">
                        <a href="#">
                            <div class="products-single fix">
                                <div class="box-img-hover">                               
                                    <img src="images/img-pro-02.jpg" class="img-fluid" alt="Image">                           
                                </div>
                                <div class="why-text">
                                    <h4>Lorem ipsum dolor sit amet</h4>
                                    <h5> $9.79</h5>
                                </div>
                            </div>
                        </a>
                    </div>

                    <div class="col-lg-3 col-md-6 special-grid top-featured">
                        <a href="#">
                            <div class="products-single fix">
                                <div class="box-img-hover">                               
                                    <img src="images/img-pro-03.jpg" class="img-fluid" alt="Image">                              
                                </div>
                                <div class="why-text">
                                    <h4>Lorem ipsum dolor sit amet</h4>
                                    <h5> $10.79</h5>
                                </div>
                            </div>
                        </a>
                    </div>

                    <div class="col-lg-3 col-md-6 special-grid best-seller">
                        <a href="#">
                            <div class="products-single fix">
                                <div class="box-img-hover">

                                    <img src="images/img-pro-04.jpg" class="img-fluid" alt="Image">                                
                                </div>
                                <div class="why-text">
                                    <h4>Lorem ipsum dolor sit amet</h4>
                                    <h5> $15.79</h5>
                                </div>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Products  -->

        <!-- Start Blog  -->
        <div class="latest-blog">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="title-all text-center">
                            <h1>Bài viết</h1>
                            <p>Các thông tin về yến</p>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6 col-lg-4 col-xl-4">
                        <div class="blog-box">
                            <div class="blog-img">
                                <img class="img-fluid" src="images/blog-img.jpg" alt="" />
                            </div>
                            <div class="blog-content">
                                <div class="title-blog">
                                    <h3>Fusce in augue non nisi fringilla</h3>
                                    <p>Nulla ut urna egestas, porta libero id, suscipit orci. Quisque in lectus sit amet
                                        urna dignissim feugiat. Mauris molestie egestas pharetra. Ut finibus cursus nunc sed
                                        mollis. Praesent laoreet lacinia elit id lobortis.</p>
                                </div>
                                <ul class="option-blog">
                                    <li><a href="#"><i class="far fa-heart"></i></a></li>
                                    <li><a href="#"><i class="fas fa-eye"></i></a></li>
                                    <li><a href="#"><i class="far fa-comments"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-4">
                        <div class="blog-box">
                            <div class="blog-img">
                                <img class="img-fluid" src="images/blog-img-01.jpg" alt="" />
                            </div>
                            <div class="blog-content">
                                <div class="title-blog">
                                    <h3>Fusce in augue non nisi fringilla</h3>
                                    <p>Nulla ut urna egestas, porta libero id, suscipit orci. Quisque in lectus sit amet
                                        urna dignissim feugiat. Mauris molestie egestas pharetra. Ut finibus cursus nunc sed
                                        mollis. Praesent laoreet lacinia elit id lobortis.</p>
                                </div>
                                <ul class="option-blog">
                                    <li><a href="#"><i class="far fa-heart"></i></a></li>
                                    <li><a href="#"><i class="fas fa-eye"></i></a></li>
                                    <li><a href="#"><i class="far fa-comments"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-4">
                        <div class="blog-box">
                            <div class="blog-img">
                                <img class="img-fluid" src="images/blog-img-02.jpg" alt="" />
                            </div>
                            <div class="blog-content">
                                <div class="title-blog">
                                    <h3>Fusce in augue non nisi fringilla</h3>
                                    <p>Nulla ut urna egestas, porta libero id, suscipit orci. Quisque in lectus sit amet
                                        urna dignissim feugiat. Mauris molestie egestas pharetra. Ut finibus cursus nunc sed
                                        mollis. Praesent laoreet lacinia elit id lobortis.</p>
                                </div>
                                <ul class="option-blog">
                                    <li><a href="#"><i class="far fa-heart"></i></a></li>
                                    <li><a href="#"><i class="fas fa-eye"></i></a></li>
                                    <li><a href="#"><i class="far fa-comments"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Blog  -->


        <!-- Start Instagram Feed  -->
        <div class="instagram-box">
            <div class="main-instagram owl-carousel owl-theme">
                <c:forEach items="${sessionScope.VIEW_PRODUCT_INDEX}" var="o">
                    <div class="item">
                        <div class="ins-inner-box">
                            <img style="width: 320px; height: 225px" src="${o.image}" alt="Image" />
                           
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
        <script src="js/form-validator.min.js"></script>
        <script src="js/contact-form-script.js"></script>
        <script src="js/custom.js"></script>
        <script src="js/sweetalert.min.js"></script>
        <script src="js/sweetalertAccWarning.js"></script>
    </body>

</html>
