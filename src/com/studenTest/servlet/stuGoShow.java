package com.studenTest.servlet;

import com.studenTest.service.FileService;
import com.studenTest.service.FileServiceImpl;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.ArrayList;

@WebServlet("/stuGoShow")
public class stuGoShow extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //查看个人成绩
        String studentId = req.getParameter("v");
        FileService fs = new FileServiceImpl();
        ArrayList studentUser = fs.getPersonFie(studentId);
        req.setAttribute("id",studentId);
        req.setAttribute("arr",studentUser);
        req.getRequestDispatcher("stuScorePage.jsp").forward(req,resp);

    }
}
