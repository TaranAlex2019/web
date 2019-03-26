<%--
  Created by IntelliJ IDEA.
  User: Александр Таран
  Date: 15.02.2019
  Time: 18:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="../../res/styles/uslugi.css" type="text/css">
    <title>DDbust - boost accounts and learn Dota 2</title>
</head>
<body onload="Height();">
<div id="wrapper-container">
    <div id="wrapper">

        <c:if test="${isLogin==null || isLogin==0}">
            <%@include file="headerUnlog.jsp"%>
        </c:if>
        <c:if test="${isLogin==1}">
            <%@include file="headerLog.jsp"%>
        </c:if>

        <div class="main-container">
            <%@include file="reklam.jsp"%>
            <div class="content-conteiner" id="content">
                <div class="usluga">
                    <div class="img">
                        <a href="../../index.html"><img src="../../res/img/boost.png" alt="boost"></a>
                    </div>
                    <div class="text">
                        <p><a href="../../index.html">Буст</a></p>
                    </div>
                </div>

                <div class="usluga">
                    <div class="img">
                        <a href="../../index.html"><img src="../../res/img/cal.jpg" alt="cal"></a>
                    </div>
                    <div class="text">
                        <p><a href="../../index.html">Калибровка</a></p>
                    </div>
                </div>

                <div class="usluga">
                    <div class="img">
                        <a href="../../index.html"><img src="../../res/img/learn.jpg" alt="learn"></a>
                    </div>
                    <div class="text">
                        <p><a href="../../index.html">Обучение</a></p>
                    </div>
                </div>
            </div>
        </div>
        <div class="clear"></div>
        <%@include file="footer.jsp"%>
    </div>
</div>

<script src="../../res/js/Height.js"></script>
</body>
</html>