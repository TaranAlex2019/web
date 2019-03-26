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
 * Created by Александр Таран on 17.02.2019.
 */
@WebServlet("/ActivatingUser")
public class ActivationAccountController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String id = req.getParameter("id");
        DAOImplement database = new DAOImplement("testdb");
        database.UpdateIsActiveInTable("Active", id);
        User user = database.SelectFromTableUsersbyid(Integer.parseInt(id));
        req.getRequestDispatcher("WEB-INF/pages/ActivationIsOkAccount.jsp").forward(req,resp);
    }
}
