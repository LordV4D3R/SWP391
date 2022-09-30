<%-- 
    Document   : checkout
    Created on : Sep 27, 2022, 12:41:30 PM
    Author     : thangbv
--%>

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
        <title>ThewayShop - Ecommerce Bootstrap 4 HTML Template</title>
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
                                <option>VN/EN</option>
                            </select>
                        </div>
                        <div class="right-phone-box">
                            <p>Call US :- <a href="#"> +11 900 800 100</a></p>
                        </div>
                        <div class="our-link">
                            <ul>
                                <li><a href="#"><i class="fa fa-user s_color"></i> TÀI KHOẢN</a></li>
                                <li><a href="#"><i class="fas fa-headset"></i> LIÊN HỆ</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                        <div class="login-box">
                            <select id="basic" class="selectpicker show-tick form-control" data-placeholder="Sign In">
                                <option>Register Here</option>
                                <option>Sign In</option>
                            </select>
                        </div>
                        <div class="text-slid-box">
                            <div id="offer-box" class="carouselTicker">
                                <ul class="offer-box">
                                    <li>
                                        <i class="fab fa-opencart"></i> Chào mừng  NestSongAn
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
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar-menu" aria-controls="navbars-rs-food" aria-expanded="false" aria-label="Toggle navigation">
                            <i class="fa fa-bars"></i>
                        </button>
                        <a class="navbar-brand" href="index.jsp"><img src="images/logo.png" class="logo" alt=""></a>
                    </div>
                    <!-- End Header Navigation -->

                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse" id="navbar-menu">
                        <ul class="nav navbar-nav ml-auto" data-in="fadeInDown" data-out="fadeOutUp">
                            <li class="nav-item"><a class="nav-link" href="index.jsp">TRANG CHỦ</a></li>
                            <li class="nav-item"><a class="nav-link" href="about.jsp">GIỚI THIỆU</a></li>
                            <li class="dropdown active">
                                <a href="ViewProductController" class="nav-link">CỬA HÀNG</a>                               
                            </li>
                            <li class="nav-item"><a class="nav-link" href="gallery.jsp">BLOG</a></li>
                            <li class="nav-item"><a class="nav-link" href="contact-us.jsp">LIÊN HỆ</a></li>
                        </ul>
                    </div>
                    <!-- /.navbar-collapse -->

                    <!-- Start Atribute Navigation -->
                    <div class="attr-nav">
                        <ul>
                            <li class="side-menu"><a href="#">
                                    <i class="fa fa-shopping-bag"></i>
                                    <span class="badge">3</span>
                                    <p>Giỏ hàng</p>
                                </a></li>
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
                        <h2>Thanh Toán</h2>
                        <ul class="breadcrumb">
                            <li class="breadcrumb-item"><a href="ViewProductController">Cửa Hàng</a></li>
                            <li class="breadcrumb-item active">Thanh Toán</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!-- End All Title Box -->

        <!-- Start Cart  -->
        <div class="cart-box-main">
            <div class="container">
                <div class="row new-account-login">
                    <div class="col-sm-6 col-lg-6 mb-3">
                        <div class="title-left">
                            <h3>Đăng Nhập</h3>
                        </div>
                        <h5><a data-toggle="collapse" href="#formLogin" role="button" aria-expanded="false">Nhấn vào đây để đăng nhập</a></h5>
                        <form class="mt-3 collapse review-form-box" id="formLogin">
                            <div class="form-row">
                                <div class="form-group col-md-6">
                                    <label for="InputEmail" class="mb-0">Tên đăng nhập</label>
                                    <input type="email" class="form-control" id="InputEmail" placeholder="User Name"> </div>
                                <div class="form-group col-md-6">
                                    <label for="InputPassword" class="mb-0">Mật khẩu</label>
                                    <input type="password" class="form-control" id="InputPassword" placeholder="Password"> </div>
                            </div>
                            <button type="submit" class="btn hvr-hover">Đăng nhập</button>
                        </form>
                    </div>
                    <div class="col-sm-6 col-lg-6 mb-3">
                        <div class="title-left">
                            <h3>Đăng ký tài khoản</h3>
                        </div>
                        <h5><a data-toggle="collapse" href="#formRegister" role="button" aria-expanded="false">Nhấn vào đây để đăng ký</a></h5>
                        <form class="mt-3 collapse review-form-box" id="formRegister">
                            <div class="form-row">
                                <div class="form-group col-md-6">
                                    <label class="mb-0">Tên đăng nhập</label>
                                    <input type="text" class="form-control" id="InputName" placeholder="User Name"> </div>
                                <div class="form-group col-md-6">
                                    <label class="mb-0">Mật khẩu</label>
                                    <input type="password" class="form-control" id="InputLastname" placeholder="Password"> </div>
                                <div class="form-group col-md-6">
                                    <label class="mb-0">Họ và tên</label>
                                    <input type="text" class="form-control" id="InputPassword1" placeholder="FullName"> </div>
                                <div class="form-group col-md-6">
                                    <label class="mb-0">Email</label>
                                    <input type="text" class="form-control" id="InputEmail1" placeholder="Email"> </div>
                                <div class="form-group col-md-6">
                                    <label class="mb-0">Địa chỉ</label>
                                    <input type="text" class="form-control" id="InputPassword1" placeholder="Address"> </div>
                                <div class="form-group col-md-6">
                                    <label class="mb-0">Số điện thoại</label>
                                    <input type="number" class="form-control" id="InputPassword1" placeholder="Phone"> </div>
                            </div>
                            <button type="submit" class="btn hvr-hover">Đăng ký</button>
                        </form>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-6 col-lg-6 mb-3">
                        <div class="checkout-address">
                            <div class="title-left">
                                <h3>Thông tin liên lạc</h3>
                            </div>
                            <form class="needs-validation" novalidate>
<!--                                <div class="row">
                                    <div class="col-md-6 mb-3">
                                        <label for="firstName">First name *</label>
                                        <input type="text" class="form-control" id="firstName" placeholder="" value="" required>
                                        <div class="invalid-feedback"> Valid first name is required. </div>
                                    </div>
                                    <div class="col-md-6 mb-3">
                                        <label for="lastName">Last name *</label>
                                        <input type="text" class="form-control" id="lastName" placeholder="" value="" required>
                                        <div class="invalid-feedback"> Valid last name is required. </div>
                                    </div>
                                </div>-->
                                <div class="mb-3">
                                    <label for="username">Họ và tên</label>
                                    <div class="input-group">
                                        <input type="text" class="form-control" id="username" placeholder="" required>
                                        <div class="invalid-feedback" style="width: 100%;"> Your full name is required. </div>
                                    </div>
                                </div>
                                <div class="mb-3">
                                    <label for="email">Địa chỉ</label>
                                    <input type="email" class="form-control" id="email" placeholder="">
                                    <div class="invalid-feedback"> Please enter a valid address for shipping updates. </div>
                                </div>
                                <div class="mb-3">
                                    <label for="address">Số điện thoại</label>
                                    <input type="number" class="form-control" id="address" placeholder="" required>
                                    <div class="invalid-feedback"> Please enter your shipping address. </div>
                                </div>
<!--                                <div class="mb-3">
                                    <label for="address2">Address</label>
                                    <input type="text" class="form-control" id="address2" placeholder=""> </div>
                                <div class="row">
                                    <div class="col-md-5 mb-3">
                                        <label for="country">Country *</label>
                                        <select class="wide w-100" id="country">
                                            <option value="Choose..." data-display="Select">Choose...</option>
                                            <option value="United States">United States</option>
                                        </select>
                                        <div class="invalid-feedback"> Please select a valid country. </div>
                                    </div>
                                    <div class="col-md-4 mb-3">
                                        <label for="state">State *</label>
                                        <select class="wide w-100" id="state">
                                            <option data-display="Select">Choose...</option>
                                            <option>California</option>
                                        </select>
                                        <div class="invalid-feedback"> Please provide a valid state. </div>
                                    </div>
                                    <div class="col-md-3 mb-3">
                                        <label for="zip">Zip *</label>
                                        <input type="text" class="form-control" id="zip" placeholder="" required>
                                        <div class="invalid-feedback"> Zip code required. </div>
                                    </div>
                                </div>-->
                                <hr class="mb-4">
                                <div class="custom-control custom-checkbox">
                                    <input type="checkbox" class="custom-control-input" id="same-address">
                                    <label class="custom-control-label" for="same-address">Shipping address is the same as my billing address</label>
                                </div>
                                <div class="custom-control custom-checkbox">
                                    <input type="checkbox" class="custom-control-input" id="save-info">
                                    <label class="custom-control-label" for="save-info">Save this information for next time</label>
                                </div>
                                <hr class="mb-4">
                                <div class="title"> <span>Phương thức thanh toán</span> </div>
                                <div class="d-block my-3">
                                    <div class="custom-control custom-radio">
                                        <input id="credit" name="paymentMethod" type="radio" class="custom-control-input" checked required>
                                        <label class="custom-control-label" for="credit">Thẻ ngân hàng</label>
                                    </div>
                                    <div class="custom-control custom-radio">
                                        <input id="debit" name="paymentMethod" type="radio" class="custom-control-input" required>
                                        <label class="custom-control-label" for="debit">PayPal</label>
                                    </div>
                                    <div class="custom-control custom-radio">
                                        <input id="paypal" name="paymentMethod" type="radio" class="custom-control-input" required>
                                        <label class="custom-control-label" for="paypal">Thanh toán trực tiếp</label>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6 mb-3">
                                        <label for="cc-name">Name on card</label>
                                        <input type="text" class="form-control" id="cc-name" placeholder="" required> <small class="text-muted">Full name as displayed on card</small>
                                        <div class="invalid-feedback"> Name on card is required </div>
                                    </div>
                                    <div class="col-md-6 mb-3">
                                        <label for="cc-number">Credit card number</label>
                                        <input type="text" class="form-control" id="cc-number" placeholder="" required>
                                        <div class="invalid-feedback"> Credit card number is required </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-3 mb-3">
                                        <label for="cc-expiration">Expiration</label>
                                        <input type="text" class="form-control" id="cc-expiration" placeholder="" required>
                                        <div class="invalid-feedback"> Expiration date required </div>
                                    </div>
                                    <div class="col-md-3 mb-3">
                                        <label for="cc-expiration">CVV</label>
                                        <input type="text" class="form-control" id="cc-cvv" placeholder="" required>
                                        <div class="invalid-feedback"> Security code required </div>
                                    </div>
                                    <div class="col-md-6 mb-3">
                                        <div class="payment-icon">
                                            <ul>
                                                <li><img class="img-fluid" src="images/payment-icon/1.png" alt=""></li>
                                                <li><img class="img-fluid" src="images/payment-icon/2.png" alt=""></li>
                                                <li><img class="img-fluid" src="images/payment-icon/3.png" alt=""></li>
                                                <li><img class="img-fluid" src="images/payment-icon/5.png" alt=""></li>
                                                <li><img class="img-fluid" src="images/payment-icon/7.png" alt=""></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <hr class="mb-1"> </form>
                        </div>
                    </div>
                    <div class="col-sm-6 col-lg-6 mb-3">
                        <div class="row">
                            <div class="col-md-12 col-lg-12">
                                <div class="shipping-method-box">
                                    <div class="title-left">
                                        <h3>Phương thức vận chuyển</h3>
                                    </div>
                                    <div class="mb-4">
                                        <div class="custom-control custom-radio">
                                            <input id="shippingOption1" name="shipping-option" class="custom-control-input" checked="checked" type="radio">
                                            <label class="custom-control-label" for="shippingOption1">Giao hàng truyền thống</label> <span class="float-right font-weight-bold">FREE</span> </div>
                                        <div class="ml-4 mb-2 small">(1-2 ngày)</div>
                                        <div class="custom-control custom-radio">
                                            <input id="shippingOption2" name="shipping-option" class="custom-control-input" type="radio">
                                            <label class="custom-control-label" for="shippingOption2">Giao hàng nhanh</label> <span class="float-right font-weight-bold">$10.00</span> </div>
                                        <div class="ml-4 mb-2 small">(Giao ngay trong ngày đặt hàng)</div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-12 col-lg-12">
                                <div class="odr-box">
                                    <div class="title-left">
                                        <h3>Giỏ Hàng</h3>
                                    </div>
                                    <div class="rounded p-2 bg-light">
                                        <div class="media mb-2 border-bottom">
                                            <div class="media-body"> <a href="shop-detail.jsp"> Lorem ipsum dolor sit amet</a>
                                                <div class="small text-muted">Price: $80.00 <span class="mx-2">|</span> Qty: 1 <span class="mx-2">|</span> Subtotal: $80.00</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-12 col-lg-12">
                                <div class="order-box">
                                    <div class="title-left">
                                        <h3>Hóa Đơn</h3>
                                    </div>
                                    <div class="d-flex">
                                        <div class="font-weight-bold">Sản phẩm</div>
                                        <div class="ml-auto font-weight-bold">Tổng tiền</div>
                                    </div>
                                    <hr class="my-1">
                                    <div class="d-flex">
                                        <h4>Sub Total</h4>
                                        <div class="ml-auto font-weight-bold"> $ 440 </div>
                                    </div>
                                    <div class="d-flex">
                                        <h4>Discount</h4>
                                        <div class="ml-auto font-weight-bold"> $ 40 </div>
                                    </div>
                                    <hr class="my-1">
                                    <div class="d-flex">
                                        <h4>Coupon Discount</h4>
                                        <div class="ml-auto font-weight-bold"> $ 10 </div>
                                    </div>
                                    <div class="d-flex">
                                        <h4>Tax</h4>
                                        <div class="ml-auto font-weight-bold"> $ 2 </div>
                                    </div>
                                    <div class="d-flex">
                                        <h4>Shipping Cost</h4>
                                        <div class="ml-auto font-weight-bold"> Free </div>
                                    </div>
                                    <hr>
                                    <div class="d-flex gr-total">
                                        <h5>Grand Total</h5>
                                        <div class="ml-auto h5"> $ 388 </div>
                                    </div>
                                    <hr> </div>
                            </div>
                            <div class="col-12 d-flex shopping-box"> <a href="checkout.jsp" class="ml-auto btn hvr-hover">Thanh Toán</a> </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
        <!-- End Cart -->

        <!-- Start Instagram Feed  -->
        <div class="instagram-box">
            <div class="main-instagram owl-carousel owl-theme">
                <div class="item">
                    <div class="ins-inner-box">
                        <img src="images/instagram-img-01.jpg" alt="" />
                        <div class="hov-in">
                            <a href="#"><i class="fab fa-instagram"></i></a>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="ins-inner-box">
                        <img src="images/instagram-img-02.jpg" alt="" />
                        <div class="hov-in">
                            <a href="#"><i class="fab fa-instagram"></i></a>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="ins-inner-box">
                        <img src="images/instagram-img-03.jpg" alt="" />
                        <div class="hov-in">
                            <a href="#"><i class="fab fa-instagram"></i></a>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="ins-inner-box">
                        <img src="images/instagram-img-04.jpg" alt="" />
                        <div class="hov-in">
                            <a href="#"><i class="fab fa-instagram"></i></a>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="ins-inner-box">
                        <img src="images/instagram-img-05.jpg" alt="" />
                        <div class="hov-in">
                            <a href="#"><i class="fab fa-instagram"></i></a>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="ins-inner-box">
                        <img src="images/instagram-img-06.jpg" alt="" />
                        <div class="hov-in">
                            <a href="#"><i class="fab fa-instagram"></i></a>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="ins-inner-box">
                        <img src="images/instagram-img-07.jpg" alt="" />
                        <div class="hov-in">
                            <a href="#"><i class="fab fa-instagram"></i></a>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="ins-inner-box">
                        <img src="images/instagram-img-08.jpg" alt="" />
                        <div class="hov-in">
                            <a href="#"><i class="fab fa-instagram"></i></a>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="ins-inner-box">
                        <img src="images/instagram-img-09.jpg" alt="" />
                        <div class="hov-in">
                            <a href="#"><i class="fab fa-instagram"></i></a>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="ins-inner-box">
                        <img src="images/instagram-img-05.jpg" alt="" />
                        <div class="hov-in">
                            <a href="#"><i class="fab fa-instagram"></i></a>
                        </div>
                    </div>
                </div>
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
    </body>

</html>