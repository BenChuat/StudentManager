package com.studenTest.servlet;
//"upStu?admId=${admId}&stuId=${stuId}&a="+a+"&b="+b+"&c="+c+"&d="+d;

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

@WebServlet("/upStu")
public class upStu extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String admId = req.getParameter("admId");
        String stuId = req.getParameter("stuId");
        String a = req.getParameter("a");
        String b = req.getParameter("b");
        String c = req.getParameter("c");
        String d = req.getParameter("d");
        FileService fs = new FileServiceImpl();
        //System.out.println("upStu"+stuId);
        fs.upScore(stuId,a,b,c,d);
        //System.out.println("upStu"+"a="+a+"b="+b+"c="+c+"d="+d);

        //修改完成返回前端
        User user = fs.getAdmine(admId);
        ArrayList<User> arr = fs.getAllStudent();
        req.setAttribute("user",user);
        req.setAttribute("arr",arr);
        System.out.println("修改完成");
        req.getRequestDispatcher("mainPage.jsp").forward(req,resp);
    }
}
