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
                    <c:set var="errors" value="${requestScope.INSERT_USER_ERRORS}"/>
                    <c:if test="${not empty errors.usernameDuplicate}">
                        <div class="pass-link">
                            <a>${errors.usernameDuplicate}</a>
                        </div>
                    </c:if>
                    <c:if test="${not empty errors.usernameErr}">
                        <div class="pass-link">
                            <a>${errors.usernameErr}</a>
                        </div>
                    </c:if>
                    <div class="field">
                        <input type="text" placeholder="Nhập Tên Tài Khoản" name="txtRegisterUsername" value ="${param.txtRegisterUsername}" required>
                    </div>

                    <div class="field">
                        <input type="password" placeholder="Nhập Mật Khẩu" name="txtRegisterPassword" required>
                    </div>

                    <c:if test="${not empty errors.confirmNotMatch}">
                        <div class="pass-link">
                            <a>${errors.confirmNotMatch}</a>
                        </div>
                    </c:if>
                    
                    <c:if test="${not empty errors.passwordErr}">
                        <div class="pass-link">
                            <a>${errors.passwordErr}</a>
                        </div>
                    </c:if>

                    <div class="field">
                        <input type="password" placeholder="Nhập Lại Mật Khẩu" name="txtConfirmPassword" required>
                    </div>

                    <%--
                <div class="field">
                    <input type="text" placeholder="Họ Và Tên (Không bắt buộc)" name="txtFullName" value="${param.txtFullName}">
                </div>

                    <div class="field">
                        <input type="text" placeholder="Email (Không bắt buộc)" name="txtEmail" value="${param.txtEmail}">
                    </div>

                    <div class="field">
                        <input type="text" placeholder="Điện Thoại (Không bắt buộc)" name="txtPhone" value="${param.txtPhone}">
                    </div>

                    <div class="field">
                        <input type="text" placeholder="Địa Chỉ (Không bắt buộc)" name="txtAddress" value="${param.txtAddress}">
                    </div>
                    --%>
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
