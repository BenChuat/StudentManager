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

@WebServlet("/ToAddStu")
public class ToAddStu extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String admId = req.getParameter("admId");
        //转跳添加界面
        req.setAttribute("admId",admId);
        req.getRequestDispatcher("addStu.jsp").forward(req,resp);
    }
}
