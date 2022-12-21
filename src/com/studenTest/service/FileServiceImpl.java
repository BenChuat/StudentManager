package com.studenTest.service;

import com.studenTest.bean.Major;
import com.studenTest.bean.User;
import com.studenTest.dao.FileDao;
import com.studenTest.dao.FileDaoImpl;

import java.util.ArrayList;

public class FileServiceImpl implements FileService{
    FileDao fs = new FileDaoImpl();//����dao����������ݿ�
    @Override
    public ArrayList<User> getAllStudent() {
      //���ʳ־ò�

        return fs.getAllStudent();


    }

    @Override
    public User getFileByNameOrId(String v) {
     FileDao fd = new FileDaoImpl();
        return fd.getFileByNameOrId(v);
    }

    @Override
    public User getAdmine(String id) {
        return fs.getAdmine(id);
    }

    @Override
    public ArrayList  getPersonFie(String studentId) {
        return fs.getPersonFile(studentId);

    }



    @Override
    public void del(String stu) {
        fs.del(stu);
    }

    @Override
    public void upScore(String stuId, String a, String b, String c, String d) {
        fs.upScore(stuId,a,b,c,d);
    }

    @Override
    public void addStu( String a,String b, String c) {
       fs.addStu(a,b,c);
    }
}
