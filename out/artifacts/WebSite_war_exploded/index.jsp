<%--
  Created by IntelliJ IDEA.
  User: Александр Таран
  Date: 14.02.2019
  Time: 20:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="res/styles/index.css" type="text/css">
    <title>DDbust - boost accounts and learn Dota 2</title>
</head>
<body onload="start();">
<div id="modal">
    <div class="modal-content-container">
        <div class="image">
            <img class="flangImages" src="res/img/storm.png" alt="storm">
            <img id="ModalImage" src="res/img/rubicks_cube_dota_2.jpg" alt="rubic">
            <img class="flangImages" src="res/img/storm1.png" alt="storm">
        </div>
        <div class="button">
            <img id="ModalButton" src="res/img/Cubic.png" alt="button" onclick="CloseModal();">
        </div>
        <div id="message">
            <p>&and;</p>
            <p>Нажмите что бы перейти на сайт</p>
        </div>
    </div>
</div>
<div id="wrapper-container">
    <div id="wrapper">

        <c:if test="${isLogin==null ||isLogin==0}">
            <%@include file="WEB-INF/pages/headerUnlog.jsp"%>
        </c:if>
        <c:if test="${isLogin==1}">
            <%@include file="WEB-INF/pages/headerLog.jsp"%>
        </c:if>


        <div class="main-container">
            <%@include file="WEB-INF/pages/reklam.jsp"%>
            <div class="content-conteiner" id="content">
                <section class="news-conteiner">
                    <div class="articles-conteiner">
                        <article class="article">
                            <div class="image">
                                <img src="res/img/Screenshot_1.png" alt="article-img1">
                            </div>
                            <div class="title">
                                <h2>
                                    <a href="#">Meeponegeroi - the best meepo player!</a>
                                </h2>
                            </div>
                            <div class="meta">
                                <p>31.01.2019</p>
                                <p>22:09</p>
                            </div>
                            <div class="text">
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Recusandae, voluptatum sapiente! Officia sapiente praesentium totam repellat recusandae ad distinctio voluptas modi, expedita similique voluptate culpa officiis voluptatem optio architecto obcaecati assumenda ipsum nostrum suscipit vero, a asperiores maiores. Consequuntur, facere! Voluptatem asperiores fuga maxime cumque dicta, numquam tempora perferendis eos.</p>
                            </div>
                        </article>


                        <article class="article">
                            <div class="image">
                                <img src="res/img/Screenshot_1.png" alt="article-img1">
                            </div>
                            <div class="title">
                                <h2>
                                    <a href="#">Meeponegeroi - the best meepo player!</a>
                                </h2>
                            </div>
                            <div class="meta">
                                <p>31.01.2019</p>
                                <p>22:09</p>
                            </div>
                            <div class="text">
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Recusandae, voluptatum sapiente! Officia sapiente praesentium totam repellat recusandae ad distinctio voluptas modi, expedita similique voluptate culpa officiis voluptatem optio architecto obcaecati assumenda ipsum nostrum suscipit vero, a asperiores maiores. Consequuntur, facere! Voluptatem asperiores fuga maxime cumque dicta, numquam tempora perferendis eos.</p>
                            </div>
                        </article>

                        <article class="article">
                            <div class="image">
                                <img src="res/img/Screenshot_1.png" alt="article-img1">
                            </div>
                            <div class="title">
                                <h2>
                                    <a href="#">Meeponegeroi - the best meepo player!</a>
                                </h2>
                            </div>
                            <div class="meta">
                                <p>31.01.2019</p>
                                <p>22:09</p>
                            </div>
                            <div class="text">
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Recusandae, voluptatum sapiente! Officia sapiente praesentium totam repellat recusandae ad distinctio voluptas modi, expedita similique voluptate culpa officiis voluptatem optio architecto obcaecati assumenda ipsum nostrum suscipit vero, a asperiores maiores. Consequuntur, facere! Voluptatem asperiores fuga maxime cumque dicta, numquam tempora perferendis eos.</p>
                            </div>
                        </article>

                        <article class="article">
                            <div class="image">
                                <img src="res/img/Screenshot_1.png" alt="article-img1">
                            </div>
                            <div class="title">
                                <h2>
                                    <a href="#">Meeponegeroi - the best meepo player!</a>
                                </h2>
                            </div>
                            <div class="meta">
                                <p>31.01.2019</p>
                                <p>22:09</p>
                            </div>
                            <div class="text">
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Recusandae, voluptatum sapiente! Officia sapiente praesentium totam repellat recusandae ad distinctio voluptas modi, expedita similique voluptate culpa officiis voluptatem optio architecto obcaecati assumenda ipsum nostrum suscipit vero, a asperiores maiores. Consequuntur, facere! Voluptatem asperiores fuga maxime cumque dicta, numquam tempora perferendis eos.</p>
                            </div>
                        </article>

                        <article class="article">
                            <div class="image">
                                <img src="res/img/Screenshot_1.png" alt="article-img1">
                            </div>
                            <div class="title">
                                <h2>
                                    <a href="#">Meeponegeroi - the best meepo player!</a>
                                </h2>
                            </div>
                            <div class="meta">
                                <p>31.01.2019</p>
                                <p>22:09</p>
                            </div>
                            <div class="text">
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Recusandae, voluptatum sapiente! Officia sapiente praesentium totam repellat recusandae ad distinctio voluptas modi, expedita similique voluptate culpa officiis voluptatem optio architecto obcaecati assumenda ipsum nostrum suscipit vero, a asperiores maiores. Consequuntur, facere! Voluptatem asperiores fuga maxime cumque dicta, numquam tempora perferendis eos.</p>
                            </div>
                        </article>

                        <article class="article">
                            <div class="image">
                                <img src="res/img/Screenshot_1.png" alt="article-img1">
                            </div>
                            <div class="title">
                                <h2>
                                    <a href="#">Meeponegeroi - the best meepo player!</a>
                                </h2>
                            </div>
                            <div class="meta">
                                <p>31.01.2019</p>
                                <p>22:09</p>
                            </div>
                            <div class="text">
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Recusandae, voluptatum sapiente! Officia sapiente praesentium totam repellat recusandae ad distinctio voluptas modi, expedita similique voluptate culpa officiis voluptatem optio architecto obcaecati assumenda ipsum nostrum suscipit vero, a asperiores maiores. Consequuntur, facere! Voluptatem asperiores fuga maxime cumque dicta, numquam tempora perferendis eos.</p>
                            </div>
                        </article>

                        <article class="article">
                            <div class="image">
                                <img src="res/img/Screenshot_1.png" alt="article-img1">
                            </div>
                            <div class="title">
                                <h2>
                                    <a href="#">Meeponegeroi - the best meepo player!</a>
                                </h2>
                            </div>
                            <div class="meta">
                                <p>31.01.2019</p>
                                <p>22:09</p>
                            </div>
                            <div class="text">
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Recusandae, voluptatum sapiente! Officia sapiente praesentium totam repellat recusandae ad distinctio voluptas modi, expedita similique voluptate culpa officiis voluptatem optio architecto obcaecati assumenda ipsum nostrum suscipit vero, a asperiores maiores. Consequuntur, facere! Voluptatem asperiores fuga maxime cumque dicta, numquam tempora perferendis eos.</p>
                            </div>
                        </article>



                        <article class="article">
                            <div class="image">
                                <img src="res/img/Screenshot_1.png" alt="article-img1">
                            </div>
                            <div class="title">
                                <h2>
                                    <a href="#">Meeponegeroi - the best meepo player!</a>
                                </h2>
                            </div>
                            <div class="meta">
                                <p>31.01.2019</p>
                                <p>22:09</p>
                            </div>
                            <div class="text">
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Recusandae, voluptatum sapiente! Officia sapiente praesentium totam repellat recusandae ad distinctio voluptas modi, expedita similique voluptate culpa officiis voluptatem optio architecto obcaecati assumenda ipsum nostrum suscipit vero, a asperiores maiores. Consequuntur, facere! Voluptatem asperiores fuga maxime cumque dicta, numquam tempora perferendis eos.</p>
                            </div>
                        </article>
                    </div>
                </section>
            </div>
        </div>
        <div class="clear"></div>
       <%@include file="WEB-INF/pages/footer.jsp"%>
    </div>

    <script src="res/js/Height.js"></script>
    <script src="res/js/ModalAnimation.js"></script>
    <script src="res/js/IndexModal.js"></script>
</body>
</html>