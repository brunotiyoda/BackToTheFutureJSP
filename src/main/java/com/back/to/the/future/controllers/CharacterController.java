package com.back.to.the.future.controllers;

import com.back.to.the.future.beans.Character;
import com.back.to.the.future.services.CharacterService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

// pesquisar o personagem
// pesquisar as cenas
//

@WebServlet(urlPatterns = "/characters")
public class CharacterController extends HttpServlet {

    private CharacterService characterService = new CharacterService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("characters", characterService.listOfCharacters());
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String biscoito = req.getParameter("biscoito");
        Character character = new Character();
        character.setName(biscoito);

        // redirecionamento
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("character.jsp");
        req.setAttribute("test", character.getName());
        requestDispatcher.forward(req, resp);

        System.out.println("OK " + character.getName());
    }
}
