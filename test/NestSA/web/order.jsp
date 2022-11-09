<%-- 
    Document   : order.jsp
    Created on : Oct 25, 2022, 2:11:18 PM
    Author     : thangbv
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <meta http-equiv="X-UA-Compatible" content="ie=edge" />
        <!-- Css -->
        <link rel="stylesheet" href="./dist/styles.css" />
        <link rel="stylesheet" href="./dist/all.css" />
        <link
            href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:400,400i,600,600i,700,700i"
            rel="stylesheet"
            />
        <title>Tables | Tailwind Admin</title>
        <style>
            @keyframes show-hide {
                from {
                    opacity: 0;
                }
                to {
                    opacity: 1;
                }
            }
            .show {
                display: table-row;
            }
            .hide {
                display: none;
            }

            .row-info:hover {
                background-color: rgb(226 232 240);
            }
            .handModal {
                position: fixed;
                top: 0;
                right: 0;
                bottom: 0;
                left: 0;
                z-index: 1050;
                overflow-x: hidden;
                overflow-y: auto;
                outline: 0;
                display: none;
            }

            .handModal .overlay {
                position: fixed;
                top: 0;
                left: 0;
                width: 100%;
                height: 100%;
                background: rgba(0, 0, 0, 0.5);
                z-index: -1;
            }
            @keyframes modal {
                from {
                    transform: translateY(-30%);
                    opacity: 0;
                }
                to {
                    transform: translateY(0);
                    opacity: 1;
                }
            }
            .content-animation {
                animation: modal ease-out 0.2s;
            }
        </style>
    </head>

    <body>
        <!--Container -->
        <div class="mx-auto bg-grey-lightest">
            <!--Screen-->
            <div class="min-h-screen flex flex-col">
                <!--Header Section Starts Here-->
                <header class="bg-nav">
                    <div class="flex justify-between">
                        <div class="p-1 mx-3 inline-flex items-center cursor-pointer">
                            <i
                                class="fas fa-bars pr-2 text-white"
                                onclick="sidebarToggle()"
                                ></i>
                            <h1 class="text-white p-2">NestSongAn</h1>
                        </div>
                        <div class="p-1 flex flex-row items-center">
                            <!--              <img
                                            class="inline-block h-8 w-8 rounded-full"
                                            src="https://avatars0.githubusercontent.com/u/4323180?s=460&v=4"
                                            alt=""
                                          />-->
                        </div>
                    </div>
                </header>
                <!--/Header-->

<<<<<<< HEAD
        <div class="flex flex-1">
          <!--Sidebar-->
          <aside
            id="sidebar"
            class="bg-side-nav w-1/2 md:w-1/6 lg:w-1/6 border-r border-side-nav hidden md:block lg:block"
          >
            <div class="flex"></div>
            <ul class="list-reset flex flex-col">
              <li class="w-full h-full py-3 px-2 border-b border-light-border">
                <a
                  href="admin.jsp"
                  class="font-sans font-hairline hover:font-normal text-sm text-nav-item no-underline"
                >
                  <i class="fas fa-tachometer-alt float-left mx-2"></i>
                  Dashboard
                  <span><i class="fas fa-angle-right float-right"></i></span>
                </a>
              </li>
              <li class="w-full h-full py-3 px-2 border-b border-light-border">
                <a
                  href="product.jsp"
                  class="font-sans font-hairline hover:font-normal text-sm text-nav-item no-underline"
                >
                  <i class="fab fa-wpforms float-left mx-2"></i>
                  Sản phẩm
                  <span><i class="fa fa-angle-right float-right"></i></span>
                </a>
              </li>
              <li
                class="w-full h-full py-3 px-2 border-b border-light-border bg-white"
              >
                <a
                  href="order.jsp"
                  class="font-sans font-hairline hover:font-normal text-sm text-nav-item no-underline"
                >
                  <i class="fas fa-grip-horizontal float-left mx-2"></i>
                  Đơn hàng
                  <span><i class="fa fa-angle-right float-right"></i></span>
                </a>
              </li>
              <li class="w-full h-full py-3 px-2 border-b border-light-border">
                <a
                  href="#"
                  class="font-sans font-hairline hover:font-normal text-sm text-nav-item no-underline"
                >
                  <i class="fas fa-table float-left mx-2"></i>
                  Bình luận
                  <span><i class="fa fa-angle-right float-right"></i></span>
                </a>
              </li>
              <li class="w-full h-full py-3 px-2 border-b border-light-border">
                <a
                  href="#"
                  class="font-sans font-hairline hover:font-normal text-sm text-nav-item no-underline"
                >
                  <i class="fab fa-uikit float-left mx-2"></i>
                  Liện hệ
                  <span><i class="fa fa-angle-right float-right"></i></span>
                </a>
              </li>
              <li class="w-full h-full py-3 px-2 border-b border-300-border">
                <a
                  href="LogoutController"
                  class="font-sans font-hairline hover:font-normal text-sm text-nav-item no-underline"
                >
                  <i class="fas fa-square-full float-left mx-2"></i>
                  Đăng xuất
                  <span><i class="fa fa-angle-right float-right"></i></span>
                </a>
              </li>
            </ul>
          </aside>
          <!--/Sidebar-->
          <!--Main-->
          <main class="bg-white-500 flex-1 p-3 overflow-hidden">
            <div class="flex flex-col">
              <div class="flex flex-1 flex-col md:flex-row lg:flex-row mx-2">
                <div
                  class="mb-2 border-solid border-gray-300 rounded border shadow-sm w-full"
                >
                  <div
                    class="bg-gray-200 px-2 py-3 border-solid border-gray-200 border-b"
                  >
                    Product
                  </div>
                  <div class="p-3">
                    <table
                      class="table-responsive w-full rounded"
                      style="text-align: center"
                    >
                      <thead>
                        <tr>
                          <th class="border w-1/5 px-4 py-2">Tên người nhận</th>
                          <th class="border w-1/4 px-4 py-2">Địa chỉ</th>
                          <th class="border w-1/12 px-4 py-2">Số điện thoại</th>
                          <th class="border w-1/5 px-4 py-2">Ngày mua</th>
                          <th class="border w-1/12 px-4 py-2">Trạng thái</th>
                          <th class="border w-1/12 px-4 py-2">Phí giao hàng</th>
                          <th class="border w-1/5 px-4 py-2">Tổng hóa đơn</th>
                        </tr>
                      </thead>
                      <tbody>
                    
                          <tr class="cursor-pointer row-info">                           
                          <td class="border w-1/5 py-2">Micheal Clarke</td>
                          <td class="border w-1/4 py-2">HCM</td>
                          <td class="border w-1/12 py-2">0378301007</td>
                          <td class="border w-1/5 py-2">22/10</td>
                          <td class="border w-1/12 py-2">Đang giao</td>
                          <td class="border w-1/12 py-2">5000000</td>
                          <td class="border w-1/5 py-2">50000000</td>                  
                        </tr>
                       
                        <!--  -->
<!--                        <tr id="orderdetail" class="hide">
                          <td colspan="7">
                            <table class="w-full">
                              <thead>
                                <tr>
                                  <th class="border px-4 py-2">Tên sản phẩm</th>
                                  <th class="border px-4 py-2">Số lượng</th>
                                  <th class="border px-4 py-2">Giá</th>
                                </tr>
                              </thead>
                              <tbody>
                                <tr>
                                  <td class="border px-4 py-2">helloword</td>name
                                  <td class="border px-4 py-2">10</td>quantity
                                  <td class="border px-4 py-2">500</td>price
                                </tr>
                              </tbody>
                            </table>
                          </td>
                        </tr>-->
                        <!--  -->
                      </tbody>
                    </table>
                  </div>
=======
                <div class="flex flex-1">
                    <!--Sidebar-->
                    <aside
                        id="sidebar"
                        class="bg-side-nav w-1/2 md:w-1/6 lg:w-1/6 border-r border-side-nav hidden md:block lg:block"
                        >
                        <div class="flex"></div>
                        <ul class="list-reset flex flex-col">
                            <li class="w-full h-full py-3 px-2 border-b border-light-border">
                                <a
                                    href="admin.jsp"
                                    class="font-sans font-hairline hover:font-normal text-sm text-nav-item no-underline"
                                    >
                                    <i class="fas fa-tachometer-alt float-left mx-2"></i>
                                    Dashboard
                                    <span><i class="fas fa-angle-right float-right"></i></span>
                                </a>
                            </li>
                            <li class="w-full h-full py-3 px-2 border-b border-light-border">
                                <a
                                    href="product.jsp"
                                    class="font-sans font-hairline hover:font-normal text-sm text-nav-item no-underline"
                                    >
                                    <i class="fab fa-wpforms float-left mx-2"></i>
                                    Sản phẩm
                                    <span><i class="fa fa-angle-right float-right"></i></span>
                                </a>
                            </li>
                            <li
                                class="w-full h-full py-3 px-2 border-b border-light-border bg-white"
                                >
                                <a
                                    href="order.jsp"
                                    class="font-sans font-hairline hover:font-normal text-sm text-nav-item no-underline"
                                    >
                                    <i class="fas fa-grip-horizontal float-left mx-2"></i>
                                    Đơn hàng
                                    <span><i class="fa fa-angle-right float-right"></i></span>
                                </a>
                            </li>
                            <li class="w-full h-full py-3 px-2 border-b border-light-border">
                                <a
                                    href="#"
                                    class="font-sans font-hairline hover:font-normal text-sm text-nav-item no-underline"
                                    >
                                    <i class="fas fa-table float-left mx-2"></i>
                                    Bình luận
                                    <span><i class="fa fa-angle-right float-right"></i></span>
                                </a>
                            </li>
                            <li class="w-full h-full py-3 px-2 border-b border-light-border">
                                <a
                                    href="#"
                                    class="font-sans font-hairline hover:font-normal text-sm text-nav-item no-underline"
                                    >
                                    <i class="fab fa-uikit float-left mx-2"></i>
                                    Liện hệ
                                    <span><i class="fa fa-angle-right float-right"></i></span>
                                </a>
                            </li>
                            <li class="w-full h-full py-3 px-2 border-b border-300-border">
                                <a
                                    href="LogoutController"
                                    class="font-sans font-hairline hover:font-normal text-sm text-nav-item no-underline"
                                    >
                                    <i class="fas fa-square-full float-left mx-2"></i>
                                    Đăng xuất
                                    <span><i class="fa fa-angle-right float-right"></i></span>
                                </a>
                            </li>
                        </ul>
                    </aside>
                    <!--/Sidebar-->
                    <!--Main-->
                    <main class="bg-white-500 flex-1 p-3 overflow-hidden">
                        <div class="flex flex-col">
                            <div class="flex flex-1 flex-col md:flex-row lg:flex-row mx-2">
                                <div
                                    class="mb-2 border-solid border-gray-300 rounded border shadow-sm w-full"
                                    >
                                    <div
                                        class="bg-gray-200 px-2 py-3 border-solid border-gray-200 border-b"
                                        >
                                        Product
                                    </div>
                                    <div class="p-3">
                                        <table
                                            class="table-responsive w-full rounded"
                                            style="text-align: center"
                                            >
                                            <thead>
                                                <tr>
                                                    <th class="border w-1/5 px-4 py-2">Tên người nhận</th>
                                                    <th class="border w-1/4 px-4 py-2">Địa chỉ</th>
                                                    <th class="border w-1/12 px-4 py-2">Số điện thoại</th>
                                                    <th class="border w-1/5 px-4 py-2">Ngày mua</th>
                                                    <th class="border w-1/12 px-4 py-2">Trạng thái</th>
                                                    <th class="border w-1/12 px-4 py-2">Phí giao hàng</th>
                                                    <th class="border w-1/5 px-4 py-2">Tổng hóa đơn</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <c:forEach items="${VIEW_ORDER_VER_FULL}" var="o">
                                                    <tr
                                                        class="cursor-pointer row-info"
                                                        id="order"
                                                        onclick="showOrder()"
                                                        >
                                                        <td class="border w-1/5 py-2">${o.receiver}</td>
                                                        <td class="border w-1/4 py-2">${o.address}</td>
                                                        <td class="border w-1/12 py-2">${o.phone}</td>
                                                        <td class="border w-1/5 py-2">${o.date}</td>
                                                        <td class="border w-1/12 py-2">${o.status}</td>
                                                        <td class="border w-1/12 py-2">${o.shippingfee}</td>
                                                        <td class="border w-1/5 py-2">${o.total}</td>
                                                    </tr>
                                                </c:forEach>
                                                <!--  -->
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                            <!--/Grid Form-->
                        </div>
                    </main>
                    <!--/Main-->
>>>>>>> 7187f8bf7e501226882838ab9251c7d16c8622eb
                </div>
                <!--Footer-->
                <footer class="bg-grey-darkest text-white p-2">
                    <div class="flex flex-1 mx-auto">&copy; My Design</div>
                </footer>
                <!--/footer-->
            </div>
        </div>
        <!--  -->

        <!-- modal -->

<<<<<<< HEAD
    <script src="./main.js"></script>
    <script>
//      function showOrder() {
//        const check = document.getElementById("orderdetail");
//        if (check.classList.contains("hide")) {
//          check.classList.remove("hide");
//          check.classList.add("show");
//        } else {
//          check.classList.remove("show");
//          check.classList.add("hide");
//        }
//      }
    </script>
  </body>
=======
        <script src="./main.js"></script>
        <script>
                                  function showOrder() {
                                      const check = document.getElementById("orderdetail");
                                      if (check.classList.contains("hide")) {
                                          check.classList.remove("hide");
                                          check.classList.add("show");
                                      } else {
                                          check.classList.remove("show");
                                          check.classList.add("hide");
                                      }
                                  }
        </script>
    </body>
>>>>>>> 7187f8bf7e501226882838ab9251c7d16c8622eb
</html>
