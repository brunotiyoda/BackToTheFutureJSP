<%@ page import="java.util.List" %>
<%@ page import="com.back.to.the.future.beans" %>
<%@ page import="com.back.to.the.future.beans.Events" %>
<%@ page import="com.back.to.the.future.dao.EventDAO" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url value="/characters" var="servletCharacters"/>
<%--
  Created by IntelliJ IDEA.
  User: bruno
  Date: 11/10/2020
  Time: 9:28 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Back To The Future</title>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
          integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="#">BackToTheFuture</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
        <div class="navbar-nav">
            <a class="nav-link active" href="#">Home <span class="sr-only">(current)</span></a>
            <a class="nav-link" href="#">Features</a>
            <a class="nav-link" href="#">Pricing</a>
            <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
        </div>
    </div>
</nav>

    <%List<Events> eventsTimeLineOne = new EventDAO().AllEventsTimelineOne();
    for (int i = 0; i < eventsTimeLineOne.size(); i ++) {%>
        <p>
            <a class="btn btn-primary" data-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
                <%eventsTimeLineOne.get(i).getTitle();%>
            </a>
        </p>
        <div class="collapse" id="collapseExample">
            <div class="card card-body">
                <%eventsTimeLineOne.get(i).getDescription();%>
            </div>
        </div>
    <%}%>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
</body>
</html>
