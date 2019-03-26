package ua.nure.taran.controllers;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by Александр Таран on 22.03.2019.
 */
@WebServlet("/AJAX")
public class TestAJAX extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String response = "This is test text in span element!!!";
        resp.setContentType("text/plain");
        resp.getWriter().write(response);
    }
}
