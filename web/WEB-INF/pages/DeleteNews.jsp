<%--
  Created by IntelliJ IDEA.
  User: Александр Таран
  Date: 19.03.2019
  Time: 23:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="res/styles/Announcements.css" type="text/css">
    <title>DDbust - boost accounts and learn Dota 2</title>
</head>
<body>
<div id="wrapper-container">
    <div id="wrapper">
        <div class="main-container">
            <div class="content-conteiner" id="content">
                <section class="news-conteiner">
                    <div class="articles-conteiner">
                        <c:if test="${length==0}">
                            <div style="background: rgba(194,194,194, 0.9); text-align: center;
                            padding: 10px; font: bold 18px Arial;">
                                <p>Нет записей!</p>
                            </div>
                        </c:if>
                        <c:if test="${length>0}">
                            <c:forEach items="${announcements}" var="i">
                                <article class="article">
                                    <form action="deleteNews" method="post">
                                        <input type="hidden" name="idAnnouncement" value="${i.id}">
                                        <div class="image">
                                            <img src="res/img/${i.image}" alt="article-img">
                                        </div>
                                        <div class="title">
                                            <h2>
                                                <a href="#">${i.title}</a>
                                            </h2>
                                        </div>
                                        <div class="meta">
                                                ${i.date}
                                        </div>
                                        <div class="text">
                                            <p>${i.text}</p>
                                        </div>
                                        <input type="submit" value="Удалить">
                                    </form>
                                </article>
                            </c:forEach>
                        </c:if>
                    </div>
                </section>
            </div>
        </div>
        <div class="clear"></div>
    </div>
</div>
</body>
</html>