package com.back.to.the.future.controllers;

import com.back.to.the.future.beans.Character;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/characters")
public class BackToTheFutureController extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String biscoito = req.getParameter("biscoito");
        Character character = new Character();
        character.setName(biscoito);

        RequestDispatcher requestDispatcher = req.getRequestDispatcher("character.jsp");
        req.setAttribute("test", character.getName());
        requestDispatcher.forward(req, resp);

        System.out.println("OK " + character.getName());
    }
}
