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
</head>
<body>
<div class="container-fluid">
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="${servletIndex}">BackToTheFuture</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup"
                aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
            <div class="navbar-nav">
                <a class="nav-link" href="${servletIndex}">Home</a>
                <a class="nav-link" href="${servletCharacters}">Personagens</a>
                <a class="nav-link active" href=${servletRelation}>Relações</a>
            </div>
        </div>
    </nav>

    <h1 class="display-3">Cenas </h1> <br/>

    <div>
        <img class="rounded"
             src="${relation.characterOne.photo.path}" alt="${relation.characterOne.name}">

        <h2>${relation.characterOne.name}</h2>
        -
        <h2>${relation.characterTwo.name}</h2>

        <img class="rounded"
             src="${relation.characterTwo.photo.path}" alt="${relation.characterOne.name}">
    </div>

    <div class="row">
        <div class="col">
            <h3>${relation.description}</h3>
            <h3 class="display-3">Linha do Tempo 1</h3>
            <c:forEach var="timelineTwo" items="${relation.eventsTimelineOne}">
                <div class="col">
                    <p>
                        <a class="btn btn-dark btn-block"
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
            <h3>${relation.description}</h3>
            <h3 class="display-3">Linha do Tempo 2</h3>
            <c:forEach var="timelineTwo" items="${relation.eventsTimeLineTwo}">
                <div class="col">
                    <p>
                        <a class="btn btn-dark btn-block"
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
</body>
</html>