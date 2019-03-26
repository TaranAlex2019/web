package ua.nure.taran.controllers;

import ua.nure.taran.Encrypting.EncryptingPass;
import ua.nure.taran.bins.Status;
import ua.nure.taran.bins.User;
import ua.nure.taran.database.DAOImplement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;

/**
 * Created by Александр Таран on 19.03.2019.
 */
@WebServlet("/LoginAdmin")
public class AdminController extends HttpServlet{
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        User admin = null;
        String login = req.getParameter("login");
        String password = EncryptingPass.getMD5(req.getParameter("password"));
        DAOImplement daoImplement = new DAOImplement("testdb");
        List<User> admins = daoImplement.SelectAllFromTableAdmins();
        Iterator<User> iterator = admins.iterator();
        while (iterator.hasNext()){
            User verify = iterator.next();
            if (verify.getLogin().equals(login) && verify.getPassword().equals(password)) {
                admin = verify;
                break;
            }
        }
        if (admin==null){
            req.setAttribute("ok", false);
            req.getRequestDispatcher("WEB-INF/pages/LoginAdmin.jsp").forward(req,resp);
        }else{
            req.setAttribute("ok", true);
            req.getRequestDispatcher("WEB-INF/pages/AdminTools.jsp").forward(req,resp);
        }

    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("ok", true);
        req.getRequestDispatcher("WEB-INF/pages/LoginAdmin.jsp").forward(req,resp);
    }
}
