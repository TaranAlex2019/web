<%--
  Created by IntelliJ IDEA.
  User: Александр Таран
  Date: 04.03.2019
  Time: 17:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="res/styles/yandex.css" type="text/css">
    <title>Пополнение баланса с помощью Yandex.Money</title>
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
                        <div class="img">
                            <img src="res/img/yandex-money.png" alt="">
                        </div>
                        <iframe src="https://money.yandex.ru/quickpay/shop-widget?writer=seller&targets=%D0%9F%D0%BE%D0%BF%D0%BE%D0%BB%D0%BD%D0%B5%D0%BD%D0%B8%D0%B5%20%D0%B1%D0%B0%D0%BB%D0%B0%D0%BD%D1%81%D0%B0%20%D0%B0%D0%BA%D0%BA%D0%B0%D1%83%D0%BD%D1%82%D0%B0%20ddbust.com&targets-hint=&default-sum=300&button-text=11&fio=on&phone=on&comment=on&mail=on&hint=%D0%A3%D0%BA%D0%B0%D0%B6%D0%B8%D1%82%D0%B5%20%D1%81%D0%B2%D0%BE%D0%B9%20%D0%BB%D0%BE%D0%B3%D0%B8%D0%BD%20%D0%B8%20%D0%BA%D0%B0%D0%BA%D0%BE%D0%B9%20%D1%83%D1%81%D0%BB%D1%83%D0%B3%D0%BE%D0%B9%20%D0%B2%D1%8B%20%D1%81%D0%BE%D0%B1%D0%B8%D1%80%D0%B0%D0%B5%D1%82%D0%B5%D1%81%D1%8C%20%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D1%8C%D1%81%D1%8F%20%D0%BD%D0%B0%20%D0%B4%D0%B0%D0%BD%D0%BD%D0%BE%D0%BC%20%D1%81%D0%B0%D0%B9%D1%82%D0%B5%20(%D0%BC%D0%BE%D0%B6%D0%BD%D0%BE%20%D1%83%D0%BA%D0%B0%D0%B7%D0%B0%D1%82%D1%8C%20%D0%BD%D0%B5%D1%81%D0%BA%D0%BE%D0%BB%D1%8C%D0%BA%D0%BE%20%D1%83%D1%81%D0%BB%D1%83%D0%B3)&successURL=https%3A%2F%2Fwww.youtube.com%2F&quickpay=shop&account=410017763290997" width="423" height="353" frameborder="0" allowtransparency="true" scrolling="no"></iframe>
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