<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
            <a class="nav-link active" href="${servletIndex}">Home</a>
            <a class="nav-link" href="${servletCharacters}">Personagens</a>
            <a class="nav-link" href=${servletRelation}>Relações</a>
            <a class="nav-link" href=${servletRelation}>Chatbot</a>
            <a class="nav-link" href=${servletRelation}>Diagrama de Classe</a>
        </div>
    </div>
</nav>
<div class="container-fluid">
    Events: <br/>

    <table style="height: auto;">
        <tbody>
        <tr>
            <c:forEach var="character" items="${characters}">
                <td class="align-baseline"><img style="width: 268.83px; height: auto; position: absolute"
                                                class="rounded"
                                                src="${character.photoBase64}" alt="${character.name}"></td>
                <td class="align-text-top">${character.name}</td>
                <td class="align-middle">
                    <p class="text-justify">${character.description}</p>
                </td>
            </c:forEach>
        </tr>
        </tbody>
    </table>

</div>
</body>
</html>