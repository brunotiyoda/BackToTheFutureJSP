<%@ page import="com.back.to.the.future.dao.EventDAO" %>
<%@ page import="com.back.to.the.future.beans.Events" %>
<%@ page import="java.util.List" %>
<%@ page import="com.back.to.the.future.dao.CharacterEventDAO" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url value="/characters" var="servletCharacters"/>
<c:url value="/events" var="servletEvents"/>
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

<div>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="#">BackToTheFuture</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup"
                aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
            <div class="navbar-nav">
                <a class="nav-link active" href="${servletCharacters}">Personagens <span class="sr-only">(current)</span></a>
                <a class="nav-link" href="#">Features</a>
                <a class="nav-link" href="#">Pricing</a>
                <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
            </div>
        </div>
    </nav>

    <div class="container">

        <div class="row">
            <div class="col">
                <h3 class="display-3">Linha do Tempo 1</h3>
                <%
                    List<Events> eventsTimeLineOne = new EventDAO().allEventsTimelineOne();
                    for (int i = 0; i < eventsTimeLineOne.size(); i++) {
                %>
                <p>
                    <a class="btn btn-dark btn-block"
                       data-toggle="collapse"
                       href="#collapseExample<%=eventsTimeLineOne.get(i).getId()%>"
                       role="button"
                       aria-expanded="false"
                       aria-controls="collapseExample<%=eventsTimeLineOne.get(i).getId()%>">
                        <%out.print(eventsTimeLineOne.get(i).getTitle());%>
                    </a>
                </p>
                <div class="collapse" id="collapseExample<%=eventsTimeLineOne.get(i).getId()%>">
                    <div class="card card-body">
                        <div class="p-2 font-weight-bold">
                            <p>Personagens</p>
                            <%
                                List<String> characters =
                                        new CharacterEventDAO()
                                                .characterIntoEvents(String.valueOf(eventsTimeLineOne.get(i).getId()));

                                for (int j = 0; j < characters.size(); j++) {
                            %>
                            <%
                                out.print(characters.get(j));%> <br>
                            <%
                                }
                            %>
                        </div>
                        <%out.print(eventsTimeLineOne.get(i).getDescription());%>
                    </div>
                </div>
                <%}%>
            </div>

            <div class="col">
                <h3 class="display-3">Linha do Tempo 2</h3>
                <%
                    List<Events> eventsTimeLineTwo = new EventDAO().allEventsTimelineTwo();
                    for (int i = 0; i < eventsTimeLineTwo.size(); i++) {
                %>
                <p>
                    <a class="btn btn-dark btn-block"
                       data-toggle="collapse"
                       href="#collapseExample<%=eventsTimeLineTwo.get(i).getId()%>"
                       role="button"
                       aria-expanded="false"
                       aria-controls="collapseExample<%=eventsTimeLineTwo.get(i).getId()%>">
                        <%out.print(eventsTimeLineTwo.get(i).getTitle());%>
                    </a>
                </p>
                <div class="collapse" id="collapseExample<%=eventsTimeLineTwo.get(i).getId()%>">
                    <div class="card card-body">
                        <div class="p-2 font-weight-bold">
                            <p>Personagens</p>
                            <%
                                List<String> characters =
                                        new CharacterEventDAO()
                                                .characterIntoEvents(String.valueOf(eventsTimeLineTwo.get(i).getId()));

                                for (int j = 0; j < characters.size(); j++) {
                            %>
                            <%
                                out.print(characters.get(j));%> <br>
                            <%
                                }
                            %>
                        </div>
                        <%out.print(eventsTimeLineTwo.get(i).getDescription());%>
                    </div>
                </div>
                <%}%>
            </div>
        </div>
    </div>

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
