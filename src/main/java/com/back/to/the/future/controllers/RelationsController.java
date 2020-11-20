package com.back.to.the.future.controllers;

import com.back.to.the.future.services.RelationsService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.Objects;

@WebServlet(urlPatterns = "/relation")
public class RelationsController extends HttpServlet {

    private final RelationsService relationsService = new RelationsService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            String characterOne = req.getParameter("characterOne");
            String characterTwo = req.getParameter("characterTwo");

            int idRelacao = 0;

            if (Objects.nonNull(characterOne) && Objects.nonNull(characterTwo)) {
                if ("1".equals(characterOne) && "2".equals(characterTwo)) {
                    idRelacao = 1;
                }
                if ("1".equals(characterOne) && "3".equals(characterTwo)) {
                    idRelacao = 2;
                }
                if ("1".equals(characterOne) && "4".equals(characterTwo)) {
                    idRelacao = 3;
                }
                if ("3".equals(characterOne) && "4".equals(characterTwo)) {
                    idRelacao = 4;
                }
                if ("3".equals(characterOne) && "5".equals(characterTwo)) {
                    idRelacao = 5;
                }
                if ("4".equals(characterOne) && "5".equals(characterTwo)) {
                    idRelacao = 6;
                }

                req.setAttribute("relation", relationsService.relations(idRelacao));
                RequestDispatcher requestDispatcher = req.getRequestDispatcher("relation.jsp");
                requestDispatcher.forward(req, resp);
                return;
            }

            RequestDispatcher requestDispatcher = req.getRequestDispatcher("pre-relation.jsp");
            requestDispatcher.forward(req, resp);
            return;
        } catch (SQLException | ClassNotFoundException throwables) {
            throwables.printStackTrace();
        }

    }
}
