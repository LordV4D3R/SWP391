<%-- 
    Document   : product.jsp
    Created on : Oct 25, 2022, 2:10:44 PM
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
            #add_product_swp:hover{
                background-color: rgb(161 161 170) !important;
                color: #FFFFFF;
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
                            <li
                                class="w-full h-full py-3 px-2 border-b border-light-border bg-white"
                                >
                                <a
                                    href="product.jsp"
                                    class="font-sans font-hairline hover:font-normal text-sm text-nav-item no-underline"
                                    >
                                    <i class="fab fa-wpforms float-left mx-2"></i>
                                    Sản phẩm
                                    <span><i class="fa fa-angle-right float-right"></i></span>
                                </a>
                            </li>
                            <li class="w-full h-full py-3 px-2 border-b border-light-border">
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
                                    Liên hệ
                                    <span><i class="fa fa-angle-right float-right"></i></span>
                                </a>
                            </li>
                            <li class="w-full h-full py-3 px-2 border-b border-300-border">
                                <a
                                    href="#"
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
                                        class="bg-gray-200 px-2 py-3 border-solid border-gray-200 border-b flex justify-between items-center"
                                        >
                                        Product
                                        <a href="add_edit_product.jsp" class="px-4 py-2 rounded block leading-7" id="add_product_swp" style="background-color: rgb(212 212 216);">Thêm sản phẩm mới</a>
                                    </div>
                                    <div class="p-3 ">
                                        <table
                                            class="table-responsive w-full rounded"
                                            style="text-align: center"
                                            >
                                            <thead>
                                                <tr>
                                                    <th class="border w-1/2 px-4 py-2">Tên sản phẩm</th>
                                                    <th class="border w-96 px-4 py-2">Số lượng</th>
                                                    <th class="border w-1/4 px-4 py-2">Giá</th>
                                                    <th class="border w-96 px-4 py-2">Status</th>
                                                    <th class="border w-full px-4 py-2"></th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                            
                                            <c:forEach items="${VIEW_PRODUCT_VER_FULL}" var="o">
                                                <tr>
                                                    <td class="border w-1/2 py-2">${o.name}</td>
                                                    <td class="border w-96 py-2">${o.quantity}</td>
                                                    <td class="border w-1/4 py-2">${o.price}</td>
                                                    <td class="border w-96 py-2">
                                                        <i class="fas fa-check text-green-500 mx-2"></i>
                                                        <i class="fas fa-times text-red-500 mx-2"></i>
                                                    </td>
                                                    <td class="border w-full py-2">
                                                        <a
                                                            class="bg-teal-300 rounded p-1 mx-1 text-white"
                                                            href="MainController?btAction=UpdateProductManager&id=${o.productId}&name=${o.name}&quantity=${o.quantity}&price=${o.price}&image=${o.image}&description=${o.description}&categoryId=${o.categoryId}&categoryName=${o.categoryName}&status=${o.status}"
                                                            >
                                                            <i class="fas fa-edit"></i
                                                            ></a>
                                                        <a
                                                            onclick="handalModal('centeredModal', 'block')"
                                                            class="bg-teal-300 rounded p-1 mx-1 text-red-500"
                                                            href="#"
                                                            >
                                                            <i class="fas fa-trash"></i>
                                                        </a>
                                                    </td>
                                                </tr>
                                            </c:forEach>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                            <!--/Grid Form-->
                        </div>
                    </main>
                    <!--/Main-->
                </div>
                <!-- modal -->
                <div id="centeredModal" class="handModal">
                    <div class="overlay close-modal"></div>
                    <div class="modal modal-centered">
                        <div class="modal-content shadow-lg p-5 content-animation">
                            <div class="border-b p-2 pb-3 pt-0 mb-4">
                                <div class="flex justify-between items-center">
                                    Xác nhận
                                    <span
                                        onclick="handalModal('centeredModal', 'none')"
                                        class="close-modal cursor-pointer px-3 py-1 rounded-full bg-gray-100 hover:bg-gray-200"
                                        >
                                        <i class="fas fa-times text-gray-700"></i>
                                    </span>
                                </div>
                            </div>
                            <!-- Modal content -->
                            <div class="flex justify-between">
                                <span>Bạn có muốn xóa sản phẩm này không?</span>
                                <a href="#" onclick="handalModal('centeredModal', 'none')"
                                   >Có<i class="fas fa-check text-green-500 mx-2"></i>
                                </a>
                                <a href="#" onclick="handalModal('centeredModal', 'none')"
                                   >Không<i class="fas fa-ban text-red-500 mx-2"></i
                                    ></a>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- modal -->
                <!--Footer-->
                <footer class="bg-grey-darkest text-white p-2">
                    <div class="flex flex-1 mx-auto">&copy; My Design</div>
                </footer>
                <!--/footer-->
            </div>
        </div>
        <!--  -->

        <!-- modal -->

        <script src="./main.js"></script>
        <script>
                        function handalModal(id, display) {
                            document.getElementById(id).style.display = display;
                        }
        </script>
    </body>
</html>