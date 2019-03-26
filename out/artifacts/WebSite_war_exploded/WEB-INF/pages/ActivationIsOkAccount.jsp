<%--
  Created by IntelliJ IDEA.
  User: Александр Таран
  Date: 17.02.2019
  Time: 2:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="res/styles/Activation.css  " type="text/css">
    <title>DDbust - boost accounts and learn Dota 2</title>
</head>
<body onload="Height();">
<div id="wrapper-container">
    <div id="wrapper">
        <%@include file="headerUnlog.jsp"%>

        <div class="main-container">
            <%@include file="reklam.jsp"%>
            <div class="content-conteiner" id="content">
                <div class="license">
                    <p>Ваш аккаунт был успешно актривирован!</p>
                    <p>Для продолжения ввойдите в свой аакаунт</p>
                </div>
            </div>
        </div>
        <div class="clear"></div>
        <%@include file="footer.jsp"%>
    </div>
</div>


<script src="res/js/Height.js"></script>
</body>
</html>