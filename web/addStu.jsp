<%--
  Created by IntelliJ IDEA.
  User: 26223
  Date: 2022/12/2
  Time: 12:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>学生添加</title>
</head>

<style>
    body {
        background-size:cover;
        background-image: url("/img/Tu1.jpg");
    }
</style>
<style>
    #a {
        width: 50%;
        height: 70%;
        background-color: rgba(255, 250, 205, 0.48);
        margin-left: 10%;
        margin-top: 50px;
        position: absolute;
    }
    #b {
        margin-left: 50px;
        margin-top: 20px;
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
        margin-left: 80px;
    }
    span{
        margin-left: 100px;
        color: red;
    }


</style>
<script>
    function GoMainPage(){
        window.location.href = "GoMainPage?admId=${admId}";

    }
    function addStu(){
        let a = document.getElementById("b1").value;
        let b = document.getElementById("b2").value;
        let c = document.getElementById("b3").value;
        window.location.href = "addStu?admId=${admId}&a="+a+"&b="+b+"&c="+c;
    }

</script>



<body>
<div id ='a'>

    <%--
    admId
    stuId
    --%>

    <div style="font-size: 35px;margin-top: 20px;margin-left: 20px">添加学生界面</div>
    <span>管理员id:&nbsp;${admId}</span>
    <div id="b">
        学生id:&nbsp;&nbsp;<input type="text"id = "b1"><br>

        学生姓名:&nbsp;&nbsp;<input type="text"id = "b2"><br>

        学生电话:&nbsp;&nbsp;<input type="text"id = "b3"><br>


        <br>
        <button onclick="GoMainPage()">回主界面</button>&nbsp;&nbsp;
        <button onclick="addStu()">确认添加</button>
    </div>
</div>

</div>

</body>
</html>
