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

    <link rel="stylesheet" href="css/backtothefuture.css">
</head>
<body>
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

<div class="container-fluid">

    <h1 class="display-3">Pesquisar Relação entre personagens</h1> <br/>

    <form action="${servletRelation}" method="get">
        <div class="row">
            <div class="col-sm">
                <select id="characterOne" name="characterOne" class="custom-select custom-select-lg">
                    <option selected>Selecione um personagem</option>
                    <option value="1">Marty McFly</option>
                    <option value="3">Lorraine Baines McFly</option>
                    <option value="4">George McFly</option>
                </select>
            </div>

            <div class="col-sm">
                <select id="characterTwo" name="characterTwo" class="custom-select custom-select-lg">
                    <option selected>Selecione um personagem</option>
                    <option value="2">'Doc' Emmett L. Brown</option>
                    <option value="3">Lorraine Baines McFly</option>
                    <option value="4">George McFly</option>
                    <option value="5">Biff Tannen</option>
                </select>
            </div>
        </div>

        <button type="submit" class="btn btn-lg botao">Pesquisar Relação</button>
    </form>

</div>
</body>
</html>