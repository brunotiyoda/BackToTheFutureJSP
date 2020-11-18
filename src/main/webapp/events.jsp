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