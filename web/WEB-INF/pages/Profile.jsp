<%--
  Created by IntelliJ IDEA.
  User: Александр Таран
  Date: 25.02.2019
  Time: 20:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="res/styles/profile.css" type="text/css">
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
                <div class="menu-items">
                    <div class="menu-item" id="info">
                        <p>Информация</p>
                    </div>
                    <div class="menu-item" id="oper">
                        <p>Операции</p>
                    </div>
                </div>
                <div class="main-content" id="main-info">
                    <div class="image-container">
                        <div class="image">
                            <img src="uploads/${Image}" alt="Image_user">
                        </div>
                        <div class="change-image">
                            <form action="FileUploadServlet" method="post" enctype="multipart/form-data">
                                <input type="file" name="fileName">
                                <br>
                                <input type="submit" value="Загрузить">
                            </form>
                        </div>
                    </div>
                    <div class="user-info">
                        <h2>Информация о пользователе</h2>
                        <hr>
                        <div class="Name inf">
                            <p>Name</p>
                            <div class="data">
                                <p>${currentUser.name}</p>
                                <input type="submit" value="Изменить">
                            </div>
                        </div>
                        <div class="SurName inf">
                            <p>SurName</p>
                            <div class="data">
                                <p>${currentUser.secondName}</p>
                                <input type="submit" value="Изменить">
                            </div>
                        </div>
                        <div class="login inf">
                            <p>Login</p>
                            <div class="data">
                                <p>${currentUser.login}</p>
                                <input type="submit" value="Изменить">
                            </div>
                        </div>
                        <div class="mail inf">
                            <p>Mail</p>
                            <div class="data">
                                <p>${currentUser.mail}</p>
                                <input type="submit" value="Изменить">
                            </div>
                        </div>
                        <div class="password inf">
                            <p>Пароль</p>
                            <input type="submit" value="Изменить пароль">
                        </div>
                    </div>
                </div>
                <div class="history-content" id="main-history">
                    <table>
                        <tr>
                            <th>Дата</th>
                            <th>Описание операции</th>
                            <th>Результат</th>
                        </tr>
                        <tr>
                            <td>
                                25.02.2019 16:57
                            </td>
                            <td>
                                Пополнение баланса на сумму 100р
                            </td>
                            <td>
                                Успешно
                            </td>
                        </tr>
                        <tr>
                            <td>
                                25.02.2019 16:57
                            </td>
                            <td>
                                Пополнение баланса на сумму 100р
                            </td>
                            <td>
                                Успешно
                            </td>
                        </tr>
                        <tr>
                            <td>
                                25.02.2019 16:57
                            </td>
                            <td>
                                Пополнение баланса на сумму 100р
                            </td>
                            <td>
                                Успешно
                            </td>
                        </tr>
                        <tr>
                            <td>
                                25.02.2019 16:57
                            </td>
                            <td>
                                Пополнение баланса на сумму 100р
                            </td>
                            <td>
                                Успешно
                            </td>
                        </tr>
                        <tr>
                            <td>
                                25.02.2019 16:57
                            </td>
                            <td>
                                Пополнение баланса на сумму 100р
                            </td>
                            <td>
                                Успешно
                            </td>
                        </tr>
                        <tr>
                            <td>
                                25.02.2019 16:57
                            </td>
                            <td>
                                Пополнение баланса на сумму 100р
                            </td>
                            <td>
                                Успешно
                            </td>
                        </tr>
                        <tr>
                            <td>
                                25.02.2019 16:57
                            </td>
                            <td>
                                Пополнение баланса на сумму 100р
                            </td>
                            <td>
                                Успешно
                            </td>
                        </tr>
                        <tr>
                            <td>
                                25.02.2019 16:57
                            </td>
                            <td>
                                Пополнение баланса на сумму 100р
                            </td>
                            <td>
                                Успешно
                            </td>
                        </tr>
                        <tr>
                            <td>
                                25.02.2019 16:57
                            </td>
                            <td>
                                Пополнение баланса на сумму 100р
                            </td>
                            <td>
                                Успешно
                            </td>
                        </tr>
                        <tr>
                            <td>
                                25.02.2019 16:57
                            </td>
                            <td>
                                Пополнение баланса на сумму 100р
                            </td>
                            <td>
                                Успешно
                            </td>
                        </tr>
                        <tr>
                            <td>
                                25.02.2019 16:57
                            </td>
                            <td>
                                Пополнение баланса на сумму 100р
                            </td>
                            <td>
                                Успешно
                            </td>
                        </tr>
                        <tr>
                            <td>
                                25.02.2019 16:57
                            </td>
                            <td>
                                Пополнение баланса на сумму 100р
                            </td>
                            <td>
                                Успешно
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
        <div class="clear"></div>
        <%@include file="footer.jsp"%>
    </div>

    <script src="res/js/profile.js"></script>
    <script src="res/js/Height.js"></script>
    </body>
</html>