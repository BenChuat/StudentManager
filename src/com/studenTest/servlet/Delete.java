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
        //���õ�ǰ�˵�ֵ������Ա�˺������Ҫɾ������Ϣ
        //"del?v="+v+"&id=${user.getU_id()}"
        String adm = req.getParameter("id");
       String stu = req.getParameter("v");
       //���ʷ����
        FileService fs = new FileServiceImpl();
        fs.del(stu);
        //��ȡ���� ֵ
        //����Ա��Ϣ����
        User admUser = fs.getAdmine(adm) ;
        //����ѧ������
        ArrayList<User> arr =fs.getAllStudent();
        req.setAttribute("user",admUser);
        req.setAttribute("arr",arr);
        req.getRequestDispatcher("mainPage.jsp").forward(req,resp);

    }
}
