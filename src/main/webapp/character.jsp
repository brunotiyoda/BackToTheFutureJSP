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
<body>
<div class="container">
    Characters: <br/>
    <table class="table">
        <thead>
        <tr>
            <th scope="col">ID</th>
            <th scope="col">Name</th>
            <th scope="col">Description</th>
            <th scope="col">Curiosities</th>
            <th scope="col">Photo</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <c:forEach var="character" items="${characters}">
                <th scope="row">${character.id} </th>
                <td>${character.name}</td>
                <td><p>${character.description}</p></td>
                <td>@mdo</td>
                <td><img class="img-fluid" src="${character.photoBase64}" alt="${character.name}"></td>
            </c:forEach>
        </tr>
        </tbody>
    </table>
</div>
</body>
</html>
