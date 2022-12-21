package com.studenTest.servlet;

import com.studenTest.bean.User;
import com.studenTest.service.FileService;
import com.studenTest.service.FileServiceImpl;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.ArrayList;

//����������
@WebServlet("/GoMainPage")
public class GoMainPage extends HttpServlet {
    //��Ҫ����Ա���������ѧ������


    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("goMainpaging.......");
        String admId = req.getParameter("admId");
        FileService fs = new FileServiceImpl();
        User user = fs.getAdmine(admId);
        ArrayList<User> arr = fs.getAllStudent();
        req.setAttribute("user",user);
        req.setAttribute("arr",arr);
        req.getRequestDispatcher("mainPage.jsp").forward(req,resp);
    }
}
