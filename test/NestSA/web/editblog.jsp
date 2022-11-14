<%-- 
    Document   : add_edit_product.jsp
    Created on : Oct 25, 2022, 2:12:30 PM
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
        <title>Forms | Tailwind Admin</title>
        <style>
            .price-curren {
                top: 50%;
                transform: translateY(-32%);
                right: 12px;
            }

            .show-swp{
                display: block;
            }
            .show-swp-icon{
                transform: rotate(90deg)
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
                            <li class="w-full h-full py-3 px-2 border-b border-light-border">
                                <!--href="ViewOrderManagerController"-->
                                <div id="menu">
                                    <a
                                        href="#"
                                        class="font-sans font-hairline hover:font-normal text-sm text-nav-item no-underline"
                                        >
                                        <i class="fas fa-grip-horizontal float-left mx-2"></i>
                                        Đơn hàng
                                        <span><i class="fa fa-angle-right float-right" id="icon-xoay"></i></span>
                                    </a>
                                </div>
                                <ul class="text-sm border-t-2 mt-2 hidden" id="list-menu">
                                    <li id="item"><a href="#" class="block py-2 font-sans font-hairline hover:font-normal text-nav-item text-sm">Đang chuẩn bị hàng</a></li> 
                                    <li id="item"><a href="#" class="block py-2 font-sans font-hairline hover:font-normal text-nav-item text-sm">Đang vận chuyển</a></li> 
                                    <li id="item"><a href="#" class="block py-2 font-sans font-hairline hover:font-normal text-nav-item text-sm">Đã hoàn tất</a></li> 
                                </ul>
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
                    <main
                        class="bg-white-500 flex-1 p-3 overflow-hidden flex justify-center items-center"
                        >
                        <div class="flex flex-col">
                            <!--Grid Form-->

                            <div class="flex flex-1 flex-col md:flex-row lg:flex-row mx-2">
                                <div
                                    class="mb-2 border-solid border-gray-300 rounded border shadow-sm w-full"
                                    >
                                    <div
                                        class="bg-gray-200 px-2 py-3 border-solid border-gray-200 border-b"
                                        >
                                        Form Grid
                                    </div>
                                    <div class="p-3">
                                        <form class="w-full" action="MainController" method="GET">
                                            <div class="flex flex-wrap -mx-3 mb-6">
                                                <!-- full input -->
                                                <div class="w-full px-3 mb-2">
                                                    <label
                                                        class="block uppercase tracking-wide text-gray-900 text-sm font-medium mb-1"
                                                        for="grid-password"
                                                        >
                                                        Tên bài viết
                                                    </label>
                                                    <input
                                                        class="appearance-none block w-full bg-grey-200 text-grey-darker border border-grey-200 rounded py-3 px-4 mb-3 leading-tight focus:outline-none focus:bg-white focus:border-grey"
                                                        id="grid-password"
                                                        name="postTitle"
                                                        type="text"
                                                        value="${requestScope.EDIT_BLOG.postTitle}"
                                                        placeholder="Nhập tên của bài viết"                         
                                                        />
                                                </div>
                                                <!-- double input -->
                                                <div class="flex flex-wrap -mx-3 pl-3 w-full mt-4">
                                                    
                                                    
                                                    <!--  -->
                                                    <!-- img -->
                                                    <div class="w-full md:w-2/5 px-3">
                                                        <label
                                                            class="block uppercase tracking-wide text-gray-900 text-sm font-medium mb-1"
                                                            for="grid-last-name"
                                                            >
                                                            Ảnh
                                                        </label>
                                                        <input
                                                            class="appearance-none block w-full bg-gray-200 text-grey-darker border border-gray-200 rounded py-3 px-4 leading-tight focus:outline-none focus:bg-white-500 focus:border-gray-600"
                                                            id="grid-last-name"
                                                            type="text"
                                                            name="image"
                                                            style="width: 700px;"
                                                            value="${requestScope.EDIT_BLOG.image}"
                                                            placeholder="Nhập liên kết đến ảnh của sản phẩm"
                                                            />
                                                    </div>
                                                </div>
                                                <!-- end double input -->
                                            </div>
                                            <div class="flex flex-wrap -mx-3 mb-2 px-3">
                                                <!-- <div class="w-full md:w-1/3 px-3 mb-6 md:mb-0">
                                                  <label
                                                    class="block uppercase tracking-wide text-grey-darker text-xs font-light mb-1"
                                                    for="grid-zip"
                                                  >
                                                    Zip
                                                  </label>
                                                  <input
                                                    class="appearance-none block w-full bg-grey-200 text-grey-darker border border-grey-200 rounded py-3 px-4 leading-tight focus:outline-none focus:bg-white focus:border-grey"
                                                    id="grid-zip"
                                                    type="text"
                                                    placeholder="90210"
                                                  />
                                                </div> -->
                                                <label
                                                    for="message"
                                                    class="block mb-2 text-sm font-medium text-gray-900"
                                                    >Mô tả sản phẩm</label
                                                >
                                                <textarea
                                                    name="postContent"
                                                    id="message"
                                                    rows="4"
                                                    class="block p-4 w-full text-sm text-grey-darker bg-gray-200 rounded border border-gray-200 focus:ring-blue-500 focus:border-gray-600 focus:outline-none"
                                                    placeholder="Your message..."
                                                    >${requestScope.EDIT_BLOG.postContent}</textarea>
                                            </div>
                                            <input type ="hidden" name="postId" value="${requestScope.EDIT_BLOG.postId}"/>
                                            <input type ="hidden" name="category" value="${requestScope.EDIT_BLOG.category}"/>
                                            <button type="submit" name="btAction" value="EditBlog"
                                                class="text-white bg-blue-700 hover:bg-blue-800 font-medium rounded text-sm px-5 py-3 mb-2 block float-right"
                                                >
                                                Xác nhận
                                            </button>
                                        </form>
                                    </div>
                                </div>
                            </div>
                            <!--/Grid Form-->
                        </div>
                    </main>
                    <!--/Main-->
                </div>
                <!--Footer-->
                <footer class="bg-grey-darkest text-white p-2">
                    <div class="flex flex-1 mx-auto">&copy; My Design</div>
                </footer>
                <!--/footer-->
            </div>
        </div>

        <script src="./main.js"></script>
        <script>
                                    const items = document.querySelectorAll('#item');
                                    const menu = document.getElementById('menu')
                                    const icon = document.getElementById('icon-xoay')
                                    const listMenu = document.getElementById('list-menu')
                                    console.log(listMenu)

                                    menu.addEventListener('click', () => {
                                        listMenu.classList.toggle('show-swp')
                                        icon.classList.toggle('show-swp-icon')
                                    })


        </script>
    </body>
</html>