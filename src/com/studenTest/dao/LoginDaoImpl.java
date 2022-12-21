package com.studenTest.dao;

import com.studenTest.bean.User;
import com.studenTest.util.ConnectionFactory;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class LoginDaoImpl implements LoginDao {
    @Override
    public User logindao(User u) {
        //查询信息
        int  id = u.getU_id();
        String pwd = u.getU_pwd();
        int role = u.getRole();

        //写数据库
        //1.获取链接对象-》准备sql->把sql放在类preoareStatement = ConnectionFactory.获取结果
        //执行

        Connection connection= ConnectionFactory.getConnection();
        PreparedStatement pre=null;
        ResultSet res = null;
        //写sql语句
      String sql = "SELECT * FROM u_user WHERE u_id="+id+" AND u_pwd='"+pwd+"' AND u_role="+role;

        //String sql = "SELECT * FROM u_user WHERE u_id="+id+" AND u_pwd='"+pwd+"'";
        try{
            //System.out.println(sql);
           pre = connection.prepareStatement(sql);//发送sql语句
           res = pre.executeQuery();//保存查询返回结果
          /* 如果信息正确-》返回一条数据
                     -》错误返回空*/
            while(res.next()){
                User user =new User();//若信息正确则新建一个user对象来接受数据库返回的数据并封装
                user.setU_id(res.getInt("u_id"));
                user.setU_name(res.getString("u_name"));
                user.setU_pwd(res.getString("u_pwd"));
                user.setU_phone(res.getString("u_phone"));
                user.setRole(res.getInt("u_role"));
                user.setIsdelte(res.getInt("u_isdelte"));
                System.out.println("Login correct");
                return user;//若信息正确则返回封装好的user对象

            }

        }catch (SQLException e){
            e.printStackTrace();
        }
        System.out.println("Login error");
        return null;//若信息错误则返回空
    }
}
