
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
    <title>主界面</title>

    <style>
        #head_{
            height: 100px;
            width: 100%;
            background-color: slategray;
        }
        #personFile{
            width: 120px;
            height: 50px;
            padding-top: 25px;
            margin-left: 90%;
        }
        #search{
            height: 70px;
            width: 100%;
            background-color: cornflowerblue;
        }
        #inner_s{
            width: 30%;
            padding-top:25px;
            padding-left: 45%;
        }
        #table{
            margin-left: 18%;
            margin-top: 30px;
        }
        td{
            text-align: center;
            height: 20px;
            width: 150px;
            border: black 1px solid;
            padding:1px;

        }

    </style>

    <script>
        function search(){
            //拿取要搜素的信息
            let v = document.getElementById("fileId").value;
            window.location.href = "mainServlet?v="+v+"&id=${user.getU_id()}";
        }
         function goShow(v){
            window.location.href = "show?v="+v+"&admId=${user.getU_id()}";
         }
         function del(v,name){

            let isdel = confirm("是否删除学生"+name+"?");
            if(isdel){
                window.location.href = "del?v="+v+"&id=${user.getU_id()}";
            }else{
                return;
            }
         }
         function upDate(v){
            //v为学生信息，先跳到服务器，再到修改界面
             //需要学生和管理员id
             window.location.href = "ToUp?stuId="+v+"&admId=${user.getU_id()}";
         }
         function ToAddStu(){
             window.location.href = "ToAddStu?admId=${user.getU_id()}";
         }

    </script>

</head>
<body>

<div id="head_">
    <div style="font-size: 40px;margin-top: 40px;margin-left: 70px">欢迎来到教师管理界面</div>
    <div id="personFile">
        姓名:<span style="color: red">${user.getU_name()}</span><br>
        学号:<span style="color: red">${user.getU_id()}</span>
    </div>
</div>


<div id="search">
    <div id="inner_s">
        <div style="font-size: 5px;margin-top: 5px;margin-left: 30px">(请输入学生姓名)</div>
        <input type="text" style="font-size: 20px; height: 26px;width: 190px"id="fileId">&nbsp;&nbsp;
        <button  style="font-size: 18px; height: 28px;"onclick="search()">查询</button>
        &nbsp<button style="font-size: 18px; height: 28px;"onclick="ToAddStu()">增添</button>
    </div>
</div>

<div>
    <table id="table" style="height: 30px;width: 750px;border: black 1px solid;border-collapse:collapse;">
        <tr>
            <td>学生id</td>
            <td>学生名字</td>
            <td>学生电话</td>
            <td>查看成绩</td>
            <td>操作</td>
        </tr>
        <c:forEach items="${arr}" var="item">
            <tr>
                <td>${item.getU_id()}</td>
                <td>${item.getU_name()}</td>
                <td>${item.getU_phone()}</td>
                <td><button style="color: chocolate" onclick="goShow(${item.getU_id()})">查看成绩</button></td>
                <td><button style="color: chocolate" onclick="upDate(${item.getU_id()})">修改成绩</button>
                    <button style="color: chocolate" onclick="del(${item.getU_id()},'${item.getU_name()}')">删除学生</button>
                </td>
            </tr>


        </c:forEach>


    </table>
</div>
<div>
</div>

</body>
</html>