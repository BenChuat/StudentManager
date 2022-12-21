<%--
  Created by IntelliJ IDEA.
  User: 26223
  Date: 2022/11/26
  Time: 17:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>


    <title>登陆界面</title>
    <style>
        body {
            background-size:cover;
            background-image: url("/img/Tu.jpeg");
        }
    </style>
    <style>
        #frame_{
            width: 400px;
            height:400px ;
            margin-left: 20px;
            margin-top: 50px;
            background-color: rgba(0, 255, 255, 0.56);
            border: #70e0ea solid 2px;
        }

        #inner_{
            margin-left: 100px;
            margin-top: 60px;
        }
    </style>


    </script>

</head>
<body>
<div id="frame_">
    <div style="font-size: 30px;margin-top: 40px;margin-left: 70px">欢迎登录学生系统</div>
    <div id="inner_">

        用户id：<input type="text" id="u_id"><br><br>
        密码：<input type="password" id="u_pwd"><br><br>
        身份：<input type="text" id="role"><br>
        （教师管理员请输入0/学生请输入1）<br>
        <span id="error" style="color: red">${error}</span><br><br>
        <button style="color: #d46747;font-size: 18px; height: 30px;width: 80px;margin-left:50px" id="btn02">   登录   </button><br>

        <script>
            let btn001 = document.getElementById("btn02");
            btn001.onclick=function(){
                let id_str = document.getElementById("u_id").value;
                if(id_str==null||id_str==""){
                    document.getElementById("error").innerHTML="账号不能为空！"
                    return;
                }
                let pwd_str = document.getElementById("u_pwd").value;
                if(pwd_str==null||pwd_str==""){
                    document.getElementById("error").innerHTML="密码不能为空！"
                    return;
                }
                let role_str = document.getElementById("role").value;
                if(role_str==null||role_str==""){
                    document.getElementById("error").innerHTML="身份不能为空！"
                    return;
                }
                //访问服务器
                window.location.href = "login?u_id="+id_str+"&u_pwd="+pwd_str+"&role="+role_str;

            }
        </script>
    </div>

</div>
</body>
</html>