<%-- 
    Document   : register
    Created on : Oct 4, 2022, 1:51:29 PM
    Author     : tranq
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Page</title>
        <link href="css/login.css" rel="stylesheet" type="text/css"/>  
    </head>


    <body>

        <div class="container">
            <div class="title-text">
                <div class="title login">
                    Đăng Ký
                </div>
                <div class="title signup">
                    Đăng Ký
                </div>
            </div>

            <div class="form-inner">   
                <form action="MainController" method="POST">    
                    <div class="pass-link">
                        <a>${requestScope.INSERT_USER_ERRORS}</a>
                    </div>

                    <div class="field">
                        <input type="text" placeholder="Nhập Tên Tài Khoản" name="txtRegisterUsername" required>
                    </div>

                    <div class="field">
                        <input type="password" placeholder="Nhập Mật Khẩu" name="txtRegisterPassword" required>
                    </div>

                    <div class="field">
                        <input type="password" placeholder="Nhập Lại Mật Khẩu" name="txtConfirmPassword" required>
                    </div>

                    <div class="field btn">
                        <div class="btn-layer"></div>
                        <input type="submit" value="SignUp" name="btAction">
                    </div>
                    <div class="signup-link">
                        Đã Có Tài Khoản?<a href="login.jsp">Đăng Nhập</a>
                    </div>
                </form>
                <div/>

                </body>
                </html>
