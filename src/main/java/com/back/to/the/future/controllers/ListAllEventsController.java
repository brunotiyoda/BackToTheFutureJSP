package com.back.to.the.future.controllers;

import com.back.to.the.future.services.EventsService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(urlPatterns = "/events")
public class ListAllEventsController extends HttpServlet {

    private final EventsService eventsService = new EventsService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        try {
            req.setAttribute("allEvents", eventsService.listAllEvents());
            RequestDispatcher requestDispatcher = req.getRequestDispatcher("events.jsp");
            requestDispatcher.forward(req, resp);
        } catch (SQLException | ClassNotFoundException throwables) {
            throwables.printStackTrace();
        }
    }
}
