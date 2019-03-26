package ua.nure.taran.controllers;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * Created by Александр Таран on 19.02.2019.
 */
@WebServlet("/SessionOut")
public class SessionOutController extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        session.removeAttribute("isLogin");
        session.removeAttribute("id");
        session.removeAttribute("Login");
        session.removeAttribute("Balance");
        session.removeAttribute("Balance");
        session.removeAttribute("Image");
        session.setAttribute("isLogin", 0);
        req.getRequestDispatcher("index.jsp").forward(req,resp);
    }
}
