package ua.nure.taran.controllers;

import ua.nure.taran.bins.Announcement;
import ua.nure.taran.database.DAOImplement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.List;
import java.util.Map;

/**
 * Created by Александр Таран on 19.03.2019.
 */
@WebServlet("/deleteNews")
public class AdminDeleteAnnouncementController extends HttpServlet{
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        int id = Integer.parseInt(req.getParameter("idAnnouncement"));
        DAOImplement daoImplement = new DAOImplement("testdb");
        daoImplement.DeleteFromTable(id, "announcements");
        doGet(req,resp);

    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        DAOImplement daoImplement = new DAOImplement("testdb");
        List<Announcement> list = daoImplement.SelectAllFromTableAnnouncements();
        req.setAttribute("announcements", list);
        req.setAttribute("length", list.size());
        req.getRequestDispatcher("WEB-INF/pages/DeleteNews.jsp").forward(req,resp);
    }
}
