package com.studenTest.dao;

import com.studenTest.bean.Major;
import com.studenTest.bean.User;

import java.util.ArrayList;

public interface FileDao {
    ArrayList<User> getAllStudent();

    User getFileByNameOrId(String v);

    User getAdmine(String id);

    ArrayList getPersonFile(String studentId);

    void del(String stu);

    void upScore(String stuId, String a, String b, String c, String d);

    void addStu( String a,String b, String c);
}
