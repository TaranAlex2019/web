package ua.nure.taran.controllers;

import ua.nure.taran.database.DAOImplement;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.File;
import java.io.IOException;
import java.net.URI;
import java.net.URISyntaxException;

/**
 * Created by Александр Таран on 11.03.2019.
 */
@WebServlet("/FileUploadServlet")
@MultipartConfig(fileSizeThreshold = 1024*1024*10,
                maxFileSize = 1024*1024*50,
                maxRequestSize = 1024*1024*100)
public class FileUploadController extends HttpServlet {

    private static final String UPLOAD_DIR = "uploads";

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String applicationPath = req.getServletContext().getRealPath("");
        System.out.println(applicationPath);
        System.out.println(applicationPath + UPLOAD_DIR);
        String uploadFilePath = applicationPath + File.separator + UPLOAD_DIR;


        File fileSaveDir = new File(uploadFilePath);
        if(!fileSaveDir.exists()){
            fileSaveDir.mkdirs();
        }
        System.out.println("Upload File Directory = " + fileSaveDir.getAbsolutePath());

        String fileName = null;
        for (Part part : req.getParts()) {
            fileName = getFileName(part);
            part.write(uploadFilePath + File.separator + fileName);
            System.out.println(uploadFilePath + File.separator + fileName);
        }

        DAOImplement daoImplement = new DAOImplement("testdb");
        daoImplement.UpdateImageInTableUsers(fileName, (Integer) req.getSession().getAttribute("id"));
        req.getSession().setAttribute("Image", fileName);
//        resp.sendRedirect(page);
        req.getRequestDispatcher("WEB-INF/pages/Profile.jsp").forward(req,resp);
    }

    private String getFileName(Part part){
        String contentDisposition = part.getHeader("content-disposition");
        System.out.println("content-disposition header = " + contentDisposition);
        String[] tokens = contentDisposition.split(";");
        for (String token : tokens){
            if (token.trim().startsWith("filename")){
                return token.substring(token.indexOf("=") + 2, token.length()-1);
            }
        }
        return "";
    }

//    @Override
//    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        req.getRequestDispatcher("WEB-INF/pages/TestUpload.jsp").forward(req,resp);
//    }
}
