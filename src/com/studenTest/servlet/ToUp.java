package com.studenTest.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/ToUp")
//"upTo?stuId="+v+"&admId=${user.getU_id()}";
public class ToUp extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String admId = req.getParameter("admId");
        String stuId = req.getParameter("stuId");
       // System.out.println("ToUp"+stuId);
        //转跳修改界面
        req.setAttribute("admId",admId);
        req.setAttribute("stuId",stuId);
        req.getRequestDispatcher("upPage.jsp").forward(req,resp);
    }
}
