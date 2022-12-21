package com.studenTest.util;

import com.studenTest.bean.User;
import com.studenTest.dao.LoginDaoImpl;

public class Test {
    public static void main(String[] args) {

        int id = 1001;
        String pwd="a1";
        int role = 1;
        User u =new User();
        u.setU_id(id);
        u.setU_pwd(pwd);
        u.setRole(role);
        LoginDaoImpl l = new LoginDaoImpl();
       User retUse =  l.logindao(u);
     if(retUse!=null){
        //不为空说明账户密码正确
        System.out.println(retUse.toString());
        System.out.println("账户密码一致");
     }else{
        //否则账号密码错误
        System.out.println("账户密码不一致");
     }

    }
}
