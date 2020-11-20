<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url value="/events" var="servletEvents"/>
<c:url value="/index" var="servletIndex"/>
<c:url value="/relation" var="servletRelation"/>
<%--
  Created by IntelliJ IDEA.
  User: bruno
  Date: 11/10/2020
  Time: 9:38 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <title>Back To The Future</title>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
          integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

    <link rel="stylesheet" href="css/backtothefuture.css">
</head>
<body class="body">

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <a class="navbar-brand" href="#"><img src="img/logo.png" alt="logo" class="logo"></a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup"
            aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
        <div class="navbar-nav">
            <a class="nav-link cool-link" href="${servletIndex}">Home</a>
            <a class="nav-link cool-link" href="${servletCharacters}">Personagens</a>
            <a class="nav-link cool-link active" href=${servletRelation}>Relações</a>
            <a class="nav-link" href="chatbot.jsp">Machine Learn</a>
            <a class="nav-link" href="https://drive.google.com/file/d/10-MP7dI7gJ4-_YDFdDQmJ_zWvu_GUdhE/view?usp=sharing">Diagrama de Classe</a>
        </div>
    </div>
</nav>

<div class="container-fluid">

    <h1 class="display-3 subtitle">Relação</h1> <br/>

    <div class="relation-header">
        <img class="rounded"
             src="${relation.characterOne.photo.path}" alt="${relation.characterOne.name}">

        <div class="nomes">
            <h2>${relation.characterOne.name}</h2>

            <h2>${relation.characterTwo.name}</h2>
        </div>

        <img class="rounded"
             src="${relation.characterTwo.photo.path}" alt="${relation.characterOne.name}">
    </div>

    <div>
        <h3 class="text">${relation.description}</h3>
    </div>

    <div class="row">
        <div class="col">
            <h3 class="display-3 subtitle">Linha do Tempo 1</h3>
            <c:forEach var="timelineTwo" items="${relation.eventsTimelineOne}">
                <div class="col">
                    <p>
                        <a class="btn botao btn-block"
                           data-toggle="collapse"
                           href="#collapseExample${timelineTwo.id}"
                           role="button"
                           aria-expanded="false"
                           aria-controls="collapseExample${timelineTwo.id}">
                                ${timelineTwo.title}
                        </a>
                    </p>
                    <div class="collapse" id="collapseExample${timelineTwo.id}">
                        <div class="card card-body">
                                ${timelineTwo.description}
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>

        <div class="col">
            <h3 class="display-3 subtitle">Linha do Tempo 2</h3>
            <c:forEach var="timelineTwo" items="${relation.eventsTimeLineTwo}">
                <div class="col">
                    <p>
                        <a class="btn botao btn-block"
                           data-toggle="collapse"
                           href="#collapseExample${timelineTwo.id}"
                           role="button"
                           aria-expanded="false"
                           aria-controls="collapseExample${timelineTwo.id}">
                                ${timelineTwo.title}
                        </a>
                    </p>
                    <div class="collapse" id="collapseExample${timelineTwo.id}">
                        <div class="card card-body">
                                ${timelineTwo.description}
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>

</div>


<script src="jquery/jquery-3.5.1.slim.min.js"></script>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
        integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js"
        integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s"
        crossorigin="anonymous"></script>

</body>
</html>