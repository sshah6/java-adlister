package controllers;

import models.Fighter;
import models.fighterFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet("/fighters")
public class FighterServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ArrayList<Fighter>  fighters = new fighterFactory().generateFighters();
        req.setAttribute("fighters", fighters);
        req.getRequestDispatcher("/fighters.jsp").forward(req, resp);
    }
}
