package com.studenTest.dao;

import com.studenTest.bean.Major;
import com.studenTest.bean.User;
import com.studenTest.util.ConnectionFactory;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class FileDaoImpl implements FileDao{
    //获取所有信信息
    //查询类语句：  res = pre.executeQuery();
    //增加 删除 修改 为更新类： pre.executeUpdate();
    @Override
    public ArrayList<User> getAllStudent() {
        ArrayList<User> arr = new ArrayList<>();
      Connection connection= ConnectionFactory.getConnection();
        PreparedStatement pre=null;
        ResultSet res = null;
        //写sql语句
        String sql = "SELECT * FROM u_user WHERE u_role=1 AND u_isdelte=0";//查询对应数据
        try{
            pre = connection.prepareStatement(sql);
            res = pre.executeQuery();//sql查询
            while(res.next()){
                User user =new User();
                user.setU_id(res.getInt("u_id"));
                user.setU_name(res.getString("u_name"));
                user.setU_pwd(res.getString("u_pwd"));
                user.setU_phone(res.getString("u_phone"));
                user.setRole(res.getInt("u_role"));
                user.setIsdelte(res.getInt("u_isdelte"));
                arr.add(user);//把role为1的学生数据存到集合
            }

        }catch (SQLException e){
            e.printStackTrace();
        }

        return arr;//返回所有学生集合数据
    }



    @Override
    public User getFileByNameOrId(String v) {

        Connection connection= ConnectionFactory.getConnection();
        PreparedStatement pre=null;
        ResultSet res = null;
        //写sql语句
        String sql = "SELECT * FROM u_user WHERE u_name='"+v+" '";
        try{
            pre = connection.prepareStatement(sql);
            res = pre.executeQuery();
          /* 如果信息正确-》返回一条数据
                     -》错误返回空*/
            while(res.next()){
                User user =new User();
                user.setU_id(res.getInt("u_id"));
                user.setU_name(res.getString("u_name"));
                user.setU_pwd(res.getString("u_pwd"));
                user.setU_phone(res.getString("u_phone"));
                user.setRole(res.getInt("u_role"));
                user.setIsdelte(res.getInt("u_isdelte"));
                return user;
            }

        }catch (SQLException e){
            e.printStackTrace();
        }
        return null;




    }

    @Override
    public User getAdmine(String id) {
        Connection connection= ConnectionFactory.getConnection();
        PreparedStatement pre=null;
        ResultSet res = null;
        //写sql语句
        String sql = "SELECT * FROM u_user WHERE u_id="+id;
        try{
            pre = connection.prepareStatement(sql);
            res = pre.executeQuery();
          /* 如果信息正确-》返回一条数据
                     -》错误返回空*/
            while(res.next()){
                User user =new User();
                user.setU_id(res.getInt("u_id"));
                user.setU_name(res.getString("u_name"));

                return user;
            }

        }catch (SQLException e){
            e.printStackTrace();
        }
        return null;

    }

    @Override
    public ArrayList getPersonFile(String studentId) {
        Connection connection= ConnectionFactory.getConnection();
        PreparedStatement pre=null;
        ResultSet res = null;
        //写sql语句
        String sql = " SELECT c_name courseName,c_score score FROM " +
                "course a,userchoose b WHERE a.c_id=b.c_id AND b.u_id="+studentId;
        ArrayList<Major> arr = new ArrayList<>();
        try{
            pre = connection.prepareStatement(sql);
            res = pre.executeQuery();
          /* 如果信息正确-》返回一条数据
                     -》错误返回空*/


            while(res.next()){
                Major m = new Major();
                m.setA(res.getString("courseName"));
                m.setB(res.getString("score"));

                arr.add(m);
            }

        }catch (SQLException e){
            e.printStackTrace();
        }
        return arr;
    }

    @Override
    public void del(String stu) {
        Connection connection= ConnectionFactory.getConnection();
        PreparedStatement pre=null;
        ResultSet res = null;
        //写sql语句
        String sql1 = "DELETE FROM u_user WHERE u_id="+stu;
        String sql2 = "DELETE FROM userchoose WHERE u_id="+stu;
        try {
            pre = connection.prepareStatement(sql1);
            pre.executeUpdate();
            pre = connection.prepareStatement(sql2);
            pre.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }



    }

    @Override
    public void upScore(String stuId, String a, String b, String c, String d) {

        Connection connection= ConnectionFactory.getConnection();
        PreparedStatement pre=null;
        ResultSet res = null;
        int index =0;
        String[] file = {a,b,c,d};
        System.out.println("in upscoring.....");
        try {
            for (int i = 1001; i <=1004 ; i++) {
                //写sql语句
                //String str = Integer.toString(i);
                String sql = "UPDATE userchoose SET c_score="+file[index]+" WHERE u_id="+stuId+" AND c_id="+i;

                index++;

                //System.out.println(str);
               //System.out.println(file[index]);
               // System.out.println(sql);
                pre = connection.prepareStatement(sql);
                pre.executeUpdate();
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    @Override
    public void addStu( String a,String b, String c) {
        Connection connection= ConnectionFactory.getConnection();
        PreparedStatement pre=null;
        ResultSet res = null;
        /*int index =0;
        String[] file = {b,c};*/
        System.out.println(a);
        System.out.println(b);
        System.out.println(c);
       // String pwd ="a111";
        try {
                String sql = "INSERT INTO u_user(u_id,u_pwd,u_phone,u_role,u_isdelte,u_name) VALUE("+a+",'a111'"+",'"+c+"',1,0,'"+b+"')";
            String sql1 = "INSERT INTO userchoose(u_id,c_id,c_score) VALUES("+a+",1001,0)," +
                    "("+a+",1002,0),("+a+",1003,0),("+a+",1004,0)";
            FileDaoImpl fd = new FileDaoImpl();
            fd.ins(sql1);




                pre = connection.prepareStatement(sql);
                pre.executeUpdate();


        } catch (SQLException e) {
            e.printStackTrace();
        }

    }


    public void ins(String sql) {
        Connection connection= ConnectionFactory.getConnection();
        PreparedStatement pre=null;
        ResultSet res = null;
        //写sql语句


        try {
            pre = connection.prepareStatement(sql);
            pre.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }
}
