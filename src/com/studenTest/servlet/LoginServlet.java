package com.studenTest.servlet;

import com.studenTest.bean.User;
import com.studenTest.service.FileService;
import com.studenTest.service.FileServiceImpl;
import com.studenTest.service.loginService;
import com.studenTest.service.loginServiceImpl;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


import java.io.IOException;
import java.util.ArrayList;


@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String u_id = req.getParameter("u_id");
        String u_pwd = req.getParameter("u_pwd");
        String role = req.getParameter("role");

        User u = new User();
        u.setU_id(Integer.valueOf(u_id));
        u.setU_pwd(u_pwd);
        u.setRole(Integer.valueOf(role));
        //实现登录服务层
        loginService l = new loginServiceImpl();
        User user = l.loginService(u);
        if(user!=null && role.equals("0")){
            //这时进入登陆界面
            FileService fs = new FileServiceImpl();
            ArrayList<User> arr = fs.getAllStudent();
            req.setAttribute("user",user);
            req.setAttribute("arr",arr);
            req.getRequestDispatcher("mainPage.jsp").forward(req,resp);
            System.out.println("login to adm");

        }else if(user!=null && role.equals("1")){
            FileService fs = new FileServiceImpl();
            ArrayList<User> arr = fs.getAllStudent();
            req.setAttribute("user",user);
            req.setAttribute("arr",arr);
            req.getRequestDispatcher("stuPage.jsp").forward(req,resp);
            System.out.println("login to stu");
        }

        else{
            //到登录界面重新登陆
            req.setAttribute("error","账户或密码或身份不一致！");
            //System.out.println("账户和密码不一致");
            req.getRequestDispatcher("login.jsp").forward(req,resp);
        }

        System.out.println("账户："+u.getU_id()+"     密码："+u.getU_pwd()+"      身份："+u.getRole());
    }
}
