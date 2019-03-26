package ua.nure.taran.controllers;

import ua.nure.taran.bins.User;
import ua.nure.taran.database.DAOImplement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by Александр Таран on 25.02.2019.
 */
@WebServlet("/Profile")
public class ProfileController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        DAOImplement dataBase = new DAOImplement("testdb");
        User currentUser = dataBase.SelectFromTableUsersbyid((Integer) req.getSession().getAttribute("id"));
        req.setAttribute("currentUser", currentUser);
        req.getRequestDispatcher("WEB-INF/pages/Profile.jsp").forward(req,resp);
    }
}
