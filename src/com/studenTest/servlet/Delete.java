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

@WebServlet("/del")
public class Delete extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //先拿到前端的值：管理员账号密码和要删除的信息
        //"del?v="+v+"&id=${user.getU_id()}"
        String adm = req.getParameter("id");
       String stu = req.getParameter("v");
       //访问服务层
        FileService fs = new FileServiceImpl();
        fs.del(stu);
        //获取两个 值
        //管理员信息对象
        User admUser = fs.getAdmine(adm) ;
        //所有学生对象
        ArrayList<User> arr =fs.getAllStudent();
        req.setAttribute("user",admUser);
        req.setAttribute("arr",arr);
        req.getRequestDispatcher("mainPage.jsp").forward(req,resp);

    }
}
