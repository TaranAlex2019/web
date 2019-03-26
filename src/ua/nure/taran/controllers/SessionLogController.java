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
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Iterator;
import java.util.List;

/**
 * Created by Александр Таран on 18.02.2019.
 */
@WebServlet("/SessionLog")
public class SessionLogController extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        User user = null;

        String login = req.getParameter("login");

        HttpSession session = req.getSession();
        List<User> users;
        DAOImplement database = new DAOImplement("testdb");
        users = database.SelectAllFromTableUsers();
        Iterator<User> iterator = users.iterator();
        while (iterator.hasNext()){
            User verify = iterator.next();
            if (verify.getLogin().equals(login) && verify.getPassword().equals(EncryptingPass.getMD5(req.getParameter("password"))) && verify.getIsActive().equals("Active")) {
                user = verify;
                System.out.println("OK!");
                session.setAttribute("isLogin", 1);
                session.setAttribute("id", verify.getId());
                session.setAttribute("Login", verify.getLogin());
                session.setAttribute("Balance", verify.getBalance());
                session.setAttribute("Image", verify.getImage());
                break;
            }
        }
        if (user==null){
            req.getSession().setAttribute("status", new Status("IncorectPassword"));
            req.getRequestDispatcher("index.jsp").forward(req,resp);
            System.out.println("User hasn't found in date base");
        }else{
            req.getRequestDispatcher("index.jsp").forward(req,resp);
        }

    }
}
