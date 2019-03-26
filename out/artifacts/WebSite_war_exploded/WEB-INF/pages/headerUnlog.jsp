<%--
  Created by IntelliJ IDEA.
  User: Александр Таран
  Date: 14.02.2019
  Time: 22:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<header class="header-container">
    <div class="header-top-container">
        <div class="logo">
            <img src="res/img/logo.png" alt="Logo">
        </div>
        <form action="/SessionLog" method="post">
            <div class="autorization-container">
                <div class="autorization-data-container">
                    <div class="login">
                        <div class="autorization-text">
                            <p>Login:</p>
                        </div>
                        <div class="login-input">
                            <input type="text" name="login" placeholder="Your login">
                        </div>
                    </div>
                    <div class="password">
                        <div class="autorization-text">
                            <p>Password: </p>
                        </div>
                        <div class="password-input">
                            <input type="password" name="password" placeholder="Your password">
                        </div>
                    </div>
                </div>
                <div class="buttons-container">
                    <input type="submit" value="Log in"> <a href="/registration"><input type="button" value="Registration"></a>
                </div>
                <c:if test="${status!=null}">
                    <div class="incorect">
                        <p class="incorect-data">Проверьте введенные данные либо активируйте аккаунт после регистрации!!!</p>
                    </div>
                </c:if>
            </div>
        </form>
    </div>
    <div class="header-bottom-container">
        <div class="header-bottom-menu">
            <nav role="navigation">
                <ul>
                    <li><a href="/index">Главная</a></li>
                    <li><a href="/uslugi">Услуги</a></li>
                    <li><a href="/pay">Оплата</a></li>
                    <li><a href="/otzivi">Отзывы</a></li>
                </ul>
            </nav>
        </div>
    </div>
</header>