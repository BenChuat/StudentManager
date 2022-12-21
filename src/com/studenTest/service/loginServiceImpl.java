package com.studenTest.service;

import com.studenTest.bean.User;
import com.studenTest.dao.LoginDao;
import com.studenTest.dao.LoginDaoImpl;

public class loginServiceImpl implements loginService{

    @Override
    public User loginService(User u) {
        LoginDao ld = new LoginDaoImpl();

        return ld.logindao(u);
    }
}
