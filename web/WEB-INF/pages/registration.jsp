<%--
  Created by IntelliJ IDEA.
  User: Александр Таран
  Date: 14.02.2019
  Time: 22:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="../../res/styles/registration.css" type="text/css">
    <title>DDbust - boost accounts and learn Dota 2</title>
</head>
<body onload="Height(); hideInfo(); isActiveButton();">
<div id="wrapper-container">
    <div id="wrapper">

        <%@include file="headerUnlog.jsp"%>

        <div class="main-container">
            <%@include file="reklam.jsp"%>
            <div class="content-conteiner" id="content">
                <form action="/registration" method="post">
                    <div class="registration-container">
                        <div class="data-container">
                            <div class="data">
                                <div class="text">
                                    <p>Name:</p>
                                </div>
                                <div class="input">
                                    <input name="name" type="text" placeholder="Your Name">
                                </div>
                                <div class="infoAboutField">
                                    <p onclick="showInfo('nameInfo');">?</p>
                                    <div class="info">
                                    </div>
                                </div>
                            </div>
                            <pre class="infoP" id="nameInfo">Введите свое имя. Русские символы. Цифры и специальные символы
не допускаются!</pre>
                        </div>

                        <div class="data-container">
                            <div class="data">
                                <div class="text">
                                    <p>Surname:</p>
                                </div>
                                <div class="input">
                                    <input name="surname" type="text" placeholder="Your Surname">
                                </div>
                                <div class="infoAboutField">
                                    <p onclick="showInfo('surnameInfo');">?</p>
                                    <div class="info">
                                    </div>
                                </div>
                            </div>
                            <pre class="infoP"  id="surnameInfo">Введите свою фамилию. Русские символы. Цифры и специальные
символы не допускаются!</pre>
                        </div>

                        <div class="data-container">
                            <div class="data">
                                <div class="text">
                                    <p>Login:</p>
                                </div>
                                <div class="input">
                                    <input name="login" type="text" placeholder="Your Login">
                                </div>
                                <div class="infoAboutField">
                                    <p onclick="showInfo('loginInfo');">?</p>
                                    <div class="info">
                                    </div>
                                </div>
                            </div>
                            <pre class="infoP"  id="loginInfo">Придумайте себе логин. Только латинские символы и цифры.
Такие специальные символы как : ; = + * $ % & ` | , не допускаются!</pre>
                        </div>

                        <div class="data-container">
                            <div class="data">
                                <div class="text">
                                    <p>Password:</p>
                                </div>
                                <div class="input">
                                    <input name="password" type="password" placeholder="Your Password">
                                </div>
                                <div class="infoAboutField">
                                    <p onclick="showInfo('passwordInfo');">?</p>
                                    <div class="info">
                                    </div>
                                </div>
                            </div>
                            <pre class="infoP"  id="passwordInfo">Придумайте себе пароль. Только латинские символы и цифры.
Такие специальные символы как : ; = + * $ % & ` | , не допускаются!
Минимум 8 символов.</pre>
                        </div>


                        <div class="data-container">
                            <div class="data">
                                <div class="text">
                                    <p>Try password:</p>
                                </div>
                                <div class="input">
                                    <input name="tryPassword" type="password" placeholder="Try your password">
                                </div>
                                <div class="infoAboutField">
                                    <p onclick="showInfo('trypasswordInfo');">?</p>
                                    <div class="info">
                                    </div>
                                </div>
                            </div>
                            <pre class="infoP"  id="trypasswordInfo">Повторите Ваш пароль. Пароли дожны полностью совпадать!</pre>
                        </div>


                        <div class="data-container" id="lastData-container">
                            <div class="data">
                                <div class="text">
                                    <p>Mail:</p>
                                </div>
                                <div class="input">
                                    <input name="mail" type="text" placeholder="Your mail">
                                </div>
                                <div class="infoAboutField">
                                    <p onclick="showInfo('mailInfo');">?</p>
                                    <div class="info">
                                    </div>
                                </div>
                            </div>
                            <pre class="infoP"  id="mailInfo">Укажите Ваш email для связи с вами и активации аккаунта. Формат ввода:
логин-на-почте@Ваша-почта! Пример: user@gmail.com</pre>
                        </div>

                        <div class="soglashenie">
                            <label><input type="checkbox" value="agree" name="checkS" id="check">
                                <pre>Внимательно прочтите <a href="/license" target="_blank">соглашение</a> и согласитесь
с ним для регистрации</pre></label>
                        </div>

                        <div class="inputs">
                            <input type="submit" value="Зарегистрироваться" id="reg">
                            <input type="reset" value="Очистить">
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <div class="clear"></div>
        <%@include file="footer.jsp"%>
    </div>
</div>


<script src="../../res/js/Height.js"></script>
<script src="../../res/js/infoAboutField.js"></script>
<script src="../../res/js/isActive.js"></script>
</body>
</html>