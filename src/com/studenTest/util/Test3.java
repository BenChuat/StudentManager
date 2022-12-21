package com.studenTest.util;

import com.studenTest.dao.FileDao;
import com.studenTest.dao.FileDaoImpl;

public class Test3 {
    public static void main(String[] args) {

        for (int i = 1003; i <=1020; i++) {

            int score[] = new int[4];
            for (int j = 0; j <4 ; j++) {
               score[j]= (int)(Math.random()*100);
            }
            String sql = "INSERT INTO userchoose(u_id,c_id,c_score) VALUES("+i+",1001,"+score[0]+")," +
                    "("+i+",1002,"+score[1]+"),("+i+",1003,"+score[2]+"),("+i+",1004,"+score[3]+")";
            FileDaoImpl fd = new FileDaoImpl();
            fd.ins(sql);
        }

    }

}
