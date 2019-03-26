<%--
  Created by IntelliJ IDEA.
  User: Александр Таран
  Date: 15.02.2019
  Time: 22:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="../../res/styles/otzivi.css" type="text/css">
    <title>DDbust - boost accounts and learn Dota 2</title>
</head>
<body onload="Height();"> <!-- onload="incrementViews();" -->
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
                <section>
                    <div class="otsiv-container">
                        <div class="data">
                            <img src="../../res/img/recrut.png" alt="article-img1">
                            <div class="user">
                                <p>Дядя почтальён</p>
                            </div>

                            <div class="meta">
                                <p>31.01.2019 22:09</p>
                                <!-- <p>22:09</p> -->
                            </div>
                        </div>
                        <div class="otziv">
                            <div class="text">
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Recusandae, voluptatum sapiente! Officia sapiente praesentium totam repellat recusandae ad distinctio voluptas modi, expedita similique voluptate culpa officiis voluptatem optio architecto obcaecati assumenda ipsum nostrum suscipit vero, a asperiores maiores...</p>
                            </div>
                            <div class="likes">
                                <p class="span" onclick="like(this);">Like: <span class="like" id="likesDig">100</span></p>
                                <p class="span" onclick="like(this);">DisLike: <span class="dislike" id="dislikesDig">0</span></p>
                            </div>
                        </div>
                    </div>

                    <div class="otsiv-container">
                        <div class="data">
                            <img src="../../res/img/recrut.png" alt="article-img1">
                            <div class="user">
                                <p>Дядя почтальён</p>
                            </div>

                            <div class="meta">
                                <p>31.01.2019 22:09</p>
                                <!-- <p>22:09</p> -->
                            </div>
                        </div>
                        <div class="otziv">
                            <div class="text">
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Recusandae, voluptatum sapiente! Officia sapiente praesentium totam repellat recusandae ad distinctio voluptas modi, expedita similique voluptate culpa officiis voluptatem optio architecto obcaecati assumenda ipsum nostrum suscipit vero, a asperiores maiores...</p>
                            </div>
                            <div class="likes">
                                <p class="span" onclick="like(this);">Like: <span class="like" id="likesDig">100</span></p>
                                <p class="span" onclick="like(this);">DisLike: <span class="dislike" id="dislikesDig">0</span></p>
                            </div>
                        </div>
                    </div>

                    <div class="otsiv-container">
                        <div class="data">
                            <img src="../../res/img/recrut.png" alt="article-img1">
                            <div class="user">
                                <p>Дядя почтальён</p>
                            </div>

                            <div class="meta">
                                <p>31.01.2019 22:09</p>
                                <!-- <p>22:09</p> -->
                            </div>
                        </div>
                        <div class="otziv">
                            <div class="text">
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Recusandae, voluptatum sapiente! Officia sapiente praesentium totam repellat recusandae ad distinctio voluptas modi, expedita similique voluptate culpa officiis voluptatem optio architecto obcaecati assumenda ipsum nostrum suscipit vero, a asperiores maiores...</p>
                            </div>
                            <div class="likes">
                                <p class="span" onclick="like(this);">Like: <span class="like" id="likesDig">100</span></p>
                                <p class="span" onclick="like(this);">DisLike: <span class="dislike" id="dislikesDig">0</span></p>
                            </div>
                        </div>
                    </div>

                    <div class="otsiv-container">
                        <div class="data">
                            <img src="../../res/img/recrut.png" alt="article-img1">
                            <div class="user">
                                <p>Дядя почтальён</p>
                            </div>

                            <div class="meta">
                                <p>31.01.2019 22:09</p>
                                <!-- <p>22:09</p> -->
                            </div>
                        </div>
                        <div class="otziv">
                            <div class="text">
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Recusandae, voluptatum sapiente! Officia sapiente praesentium totam repellat recusandae ad distinctio voluptas modi, expedita similique voluptate culpa officiis voluptatem optio architecto obcaecati assumenda ipsum nostrum suscipit vero, a asperiores maiores...</p>
                            </div>
                            <div class="likes">
                                <p class="span" onclick="like(this);">Like: <span class="like" id="likesDig">100</span></p>
                                <p class="span" onclick="like(this);">DisLike: <span class="dislike" id="dislikesDig">0</span></p>
                            </div>
                        </div>
                    </div>

                    <div class="otsiv-container">
                        <div class="data">
                            <img src="../../res/img/recrut.png" alt="article-img1">
                            <div class="user">
                                <p>Дядя почтальён</p>
                            </div>

                            <div class="meta">
                                <p>31.01.2019 22:09</p>
                                <!-- <p>22:09</p> -->
                            </div>
                        </div>
                        <div class="otziv">
                            <div class="text">
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Recusandae, voluptatum sapiente! Officia sapiente praesentium totam repellat recusandae ad distinctio voluptas modi, expedita similique voluptate culpa officiis voluptatem optio architecto obcaecati assumenda ipsum nostrum suscipit vero, a asperiores maiores...</p>
                            </div>
                            <div class="likes">
                                <p class="span" onclick="like(this);">Like: <span class="like" id="likesDig">100</span></p>
                                <p class="span" onclick="like(this);">DisLike: <span class="dislike" id="dislikesDig">0</span></p>
                            </div>
                        </div>
                    </div>

                    <div class="otsiv-container">
                        <div class="data">
                            <img src="../../res/img/recrut.png" alt="article-img1">
                            <div class="user">
                                <p>Дядя почтальён</p>
                            </div>

                            <div class="meta">
                                <p>31.01.2019 22:09</p>
                                <!-- <p>22:09</p> -->
                            </div>
                        </div>
                        <div class="otziv">
                            <div class="text">
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Recusandae, voluptatum sapiente! Officia sapiente praesentium totam repellat recusandae ad distinctio voluptas modi, expedita similique voluptate culpa officiis voluptatem optio architecto obcaecati assumenda ipsum nostrum suscipit vero, a asperiores maiores...</p>
                            </div>
                            <div class="likes">
                                <p class="span" onclick="like(this);">Like: <span class="like" id="likesDig">100</span></p>
                                <p class="span" onclick="like(this);">DisLike: <span class="dislike" id="dislikesDig">0</span></p>
                            </div>
                        </div>
                    </div>

                    <div class="otsiv-container">
                        <div class="data">
                            <img src="../../res/img/recrut.png" alt="article-img1">
                            <div class="user">
                                <p>Дядя почтальён</p>
                            </div>

                            <div class="meta">
                                <p>31.01.2019 22:09</p>
                                <!-- <p>22:09</p> -->
                            </div>
                        </div>
                        <div class="otziv">
                            <div class="text">
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Recusandae, voluptatum sapiente! Officia sapiente praesentium totam repellat recusandae ad distinctio voluptas modi, expedita similique voluptate culpa officiis voluptatem optio architecto obcaecati assumenda ipsum nostrum suscipit vero, a asperiores maiores...</p>
                            </div>
                            <div class="likes">
                                <p class="span" onclick="like(this);">Like: <span class="like" id="likesDig">100</span></p>
                                <p class="span" onclick="like(this);">DisLike: <span class="dislike" id="dislikesDig">0</span></p>
                            </div>
                        </div>
                    </div>

                    <div class="otsiv-container">
                        <div class="data">
                            <img src="../../res/img/recrut.png" alt="article-img1">
                            <div class="user">
                                <p>Дядя почтальён</p>
                            </div>

                            <div class="meta">
                                <p>31.01.2019 22:09</p>
                                <!-- <p>22:09</p> -->
                            </div>
                        </div>
                        <div class="otziv">
                            <div class="text">
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Recusandae, voluptatum sapiente! Officia sapiente praesentium totam repellat recusandae ad distinctio voluptas modi, expedita similique voluptate culpa officiis voluptatem optio architecto obcaecati assumenda ipsum nostrum suscipit vero, a asperiores maiores...</p>
                            </div>
                            <div class="likes">
                                <p class="span" onclick="like(this);">Like: <span class="like" id="likesDig">100</span></p>
                                <p class="span" onclick="like(this);">DisLike: <span class="dislike" id="dislikesDig">0</span></p>
                            </div>
                        </div>
                    </div>

                    <div class="otsiv-container">
                        <div class="data">
                            <img src="../../res/img/recrut.png" alt="article-img1">
                            <div class="user">
                                <p>Дядя почтальён</p>
                            </div>

                            <div class="meta">
                                <p>31.01.2019 22:09</p>
                                <!-- <p>22:09</p> -->
                            </div>
                        </div>
                        <div class="otziv">
                            <div class="text">
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Recusandae, voluptatum sapiente! Officia sapiente praesentium totam repellat recusandae ad distinctio voluptas modi, expedita similique voluptate culpa officiis voluptatem optio architecto obcaecati assumenda ipsum nostrum suscipit vero, a asperiores maiores...</p>
                            </div>
                            <div class="likes">
                                <p class="span" onclick="like(this);">Like: <span class="like" id="likesDig">100</span></p>
                                <p class="span" onclick="like(this);">DisLike: <span class="dislike" id="dislikesDig">0</span></p>
                            </div>
                        </div>
                    </div>

                    <div class="otsiv-container">
                        <div class="data">
                            <img src="../../res/img/recrut.png" alt="article-img1">
                            <div class="user">
                                <p>Дядя почтальён</p>
                            </div>

                            <div class="meta">
                                <p>31.01.2019 22:09</p>
                                <!-- <p>22:09</p> -->
                            </div>
                        </div>
                        <div class="otziv">
                            <div class="text">
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Recusandae, voluptatum sapiente! Officia sapiente praesentium totam repellat recusandae ad distinctio voluptas modi, expedita similique voluptate culpa officiis voluptatem optio architecto obcaecati assumenda ipsum nostrum suscipit vero, a asperiores maiores...</p>
                            </div>
                            <div class="likes">
                                <p class="span" onclick="like(this);">Like: <span class="like" id="likesDig">100</span></p>
                                <p class="span" onclick="like(this);">DisLike: <span class="dislike" id="dislikesDig">0</span></p>
                            </div>
                        </div>
                    </div>
                </section>
            </div>
        </div>
        <div class="clear"></div>
        <%@include file="footer.jsp"%>
    </div>
</div>

<script src="../../res/js/Height.js"></script>
<script src="../../res/js/likes.js"></script>
</body>
</html>