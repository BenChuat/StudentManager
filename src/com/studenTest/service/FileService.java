package com.studenTest.service;

import com.studenTest.bean.Major;
import com.studenTest.bean.User;

import java.util.ArrayList;

public interface FileService {
    ArrayList<User> getAllStudent();

    User getFileByNameOrId(String v);

    User getAdmine(String id);

    ArrayList getPersonFie(String studentId);

    void del(String stu);

    void upScore(String stuId, String a, String b, String c, String d);

    void addStu( String a,String b, String c);
}
