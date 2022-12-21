

<%--
  Created by IntelliJ IDEA.
  User: 26223
  Date: 2022/11/27
  Time: 0:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>学生信息界面</title>
    <style>
        body {
            background-size:cover;
            background-image: url("/img/Tu7.jpg");
        }
    </style>
    <style>

        #table{
            margin-left: 5%;
            margin-top: 40px;
        }
        td{
            text-align: center;
            height: 20px;
            width: 150px;
            border: black 1px solid;
            padding:1px;

        }
        #a {
            width: 600px;
            height: 400px;
            background-color: rgba(250, 224, 171, 0.48);
            margin-left: 10%;
            margin-top: 10%;
            position: absolute;
            border: #c2955f solid 2px;
        }
        #b {
            margin-left: 170px;
            margin-top: 25px;
        }

        input{
            margin-top:15px;
            margin-left: 70px;
            font-size:30px;
            color:red;
            font-family:华文新魏;
        }
        button {
            background-color: azure;
            width: 100px;
            height: 35px;
            font-size: 20px;
            font-family: 华文新魏;
            margin-left: 110px;
        }
        span{
            margin-left: 100px;
            color: red;
        }

    </style>

    <script>

        function stuGoShow(v){
            window.location.href = "stuGoShow?v="+v+"&admId=${user.getU_id()}";
        }


    </script>

</head>
<body>



<div id="a">
    <div style="font-size: 40px;margin-top: 40px;margin-left: 70px">欢迎来到学生界面</div>
    <br><br>
    <div id="personFile" style="margin-left:2px ">
       <span style="color: red">姓名:     ${user.getU_name()}</span><br>
        <br>
        <span style="color: red">学号:     ${user.getU_id()}</span>
    </div>
    <table id="table" style="height: 30px;width: 550px;border: black 1px solid;border-collapse:collapse;">
        <tr>
            <td>学生id</td>
            <td>学生名字</td>
            <td>学生电话</td>
            <td>操作</td>


        </tr>

            <tr>
                <td>${user.getU_id()}</td>
                <td>${user.getU_name()}</td>
                <td>${user.getU_phone()}</td>

                <td><button style="color: chocolate" onclick="stuGoShow(${user.getU_id()})">查看成绩</button>

                </td>

            </tr>




    </table>
</div>


<div>







</div>




</body>
</html>