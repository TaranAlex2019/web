<%--
  Created by IntelliJ IDEA.
  User: Александр Таран
  Date: 26.02.2019
  Time: 23:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="res/styles/payment.css" type="text/css">
    <title>DDbust - boost accounts and learn Dota 2</title>
</head>
<body onload="Height();">
<div id="wrapper-container">
    <div id="wrapper">

        <c:if test="${isLogin==null ||isLogin==0}">
            <%@include file="headerUnlog.jsp"%>
        </c:if>
        <c:if test="${isLogin==1}">
            <%@include file="headerLog.jsp"%>
        </c:if>

        <div class="main-container">
            <div class="reklalm-container" id="reklam">
                <img src="res/img/Screenshot_1.png" alt="Logo">
                <img src="res/img/Screenshot_1.png" alt="Logo">
                <img src="res/img/Screenshot_1.png" alt="Logo">
            </div>
            <div class="content-conteiner" id="content">

                <c:if test="${isLogin==null ||isLogin==0}">
                    <div class="unLogin-container">
                        <p>Для пополнения баланса необходимо авторизироваться!</p>
                    </div>
                </c:if>
                <c:if test="${isLogin==1}">
                    <div class="pay-container">
                        <div class="pay-item">
                            <img src="res/img/yandex-money.png" alt="">
                            <a href="/yandex-money"><input type="text" value="Оплатить"></a>
                        </div>
                        <div class="pay-item">
                            <img src="res/img/qiwi_logo_rgb_small.png" alt="">
                            <a href="/qiwi"><input type="text" value="Оплатить"></a>
                        </div>
                        <div class="pay-item">
                            <img src="res/img/yandex-money.png" alt="">
                            <a href="https://www.youtube.com/"><input type="text" value="Оплатить"></a>
                        </div>
                    </div>
                </c:if>
            </div>
        </div>
        <div class="clear"></div>
        <%@include file="footer.jsp"%>
    </div>

    <script src="res/js/Height.js"></script>
    </body>
</html>