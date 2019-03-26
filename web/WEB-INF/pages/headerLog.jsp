<%--
  Created by IntelliJ IDEA.
  User: Александр Таран
  Date: 14.02.2019
  Time: 22:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<header class="header-container">
    <div class="header-top-container">
        <div class="logo">
            <img src="res/img/logo.png" alt="Logo">
        </div>
        <div class="user-container">
            <div class="info-user">
                <div class="img">
                    <img src="uploads/${Image}" alt="Image_user">
                </div>
                <div class="meta-user">
                    <p class="login">${Login}</p>
                    <p class="balance">Ваш баланс: ${Balance}p</p>
                </div>
            </div>
            <div class="button">
                <a href="/Profile"><button>Ввойти в профиль</button></a>
                <form action="SessionOut" method="post">
                    <input type="submit" value="Выйти из аккаунта">
                </form>
            </div>
        </div>
    </div>
    <div class="header-bottom-container">
        <div class="header-bottom-menu">
            <nav role="navigation">
                <ul>
                    <li><a href="/index.jsp">Главная</a></li>
                    <li><a href="/uslugi">Услуги</a></li>
                    <li><a href="/pay">Оплата</a></li>
                    <li><a href="/otzivi">Отзывы</a></li>
                </ul>
            </nav>
        </div>
    </div>
</header>