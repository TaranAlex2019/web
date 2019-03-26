package ua.nure.taran.controllers;

import ua.nure.taran.Encrypting.EncryptingPass;
import ua.nure.taran.bins.Status;
import ua.nure.taran.bins.User;
import ua.nure.taran.database.DAOImplement;
import ua.nure.taran.mail.SendMail;

import javax.mail.MessagingException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Map;

/**
 * Created by Александр Таран on 15.02.2019.
 */
@WebServlet("/registration")
public class RegistrationController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getSession().removeAttribute("status");
        req.getRequestDispatcher("WEB-INF/pages/registration.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        User user;
        String name = req.getParameter("name");
        String secondName = req.getParameter("surname");
        String login = req.getParameter("login");
        String password = EncryptingPass.getMD5(req.getParameter("password"));
        String mail = req.getParameter("mail");


        DAOImplement data_base = new DAOImplement("testdb");
        if (data_base.InserToTableUsers(name, secondName, login, password, mail , "no_image.png","not_active")) {
            user = data_base.SelectFromTableUsersbyLogin(login);
            try {
                SendMail.SendActivationMessage(user);
            } catch (MessagingException e) {
                e.printStackTrace();
            }
            req.getRequestDispatcher("WEB-INF/pages/ActivationAccount.jsp").forward(req,resp);
        }
    }
}
