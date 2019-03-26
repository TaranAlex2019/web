<%--
  Created by IntelliJ IDEA.
  User: Александр Таран
  Date: 19.03.2019
  Time: 2:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>DDBUST******AdminPage</title>
    <link rel="stylesheet" href="res/styles/LoginAdmin.css" type="text/css">
</head>
<body>
<div class="wrapper">
    <div class="Autorization">
        <p>Для входа как администратор нужно авторизироваться!</p>
        <form action="/LoginAdmin" method="post">
            <input type="text" name="login" placeholder="Login">
            <input type="password" name="password" placeholder="Password">
            <c:if test="${!ok}">
                <p style="background: red; color: white; padding: 10px">Неверно введены данные!</p>
            </c:if>
            <input type="submit" value="Ввойти">
        </form>
    </div>
</div>
</body>
</html>