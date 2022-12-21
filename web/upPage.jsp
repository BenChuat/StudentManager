<%--
  Created by IntelliJ IDEA.
  User: 26223
  Date: 2022/12/1
  Time: 0:04
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改成绩</title>
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
        background-color: lemonchiffon;
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
    function upStu(){
        //获取管理员 amdId
        //处理对象 学生 stuId
        //成绩： a1 a2 a3 a4
        let a = document.getElementById("a1").value;
        let b = document.getElementById("a2").value;
        let c = document.getElementById("a3").value;
        let d = document.getElementById("a4").value;
        window.location.href = "upStu?admId=${admId}&stuId=${stuId}&a="+a+"&b="+b+"&c="+c+"&d="+d;
    }


</script>



<body>
<div id ='a'>

    <%--
    admId
    stuId
    --%>

<div style="font-size: 35px;margin-top: 20px;margin-left: 20px">成绩修改界面</div>
        <br><span >管理员id:&nbsp;${admId}</span><br>
   <br><span >学生id:&nbsp;${stuId}</span><br>

<div id="b">
    程序设计:&nbsp;&nbsp;<input type="text"id = "a1"><br>

    管理学:  &nbsp;&nbsp;<input type="text"id = "a2"><br>

    大学英语:&nbsp;&nbsp;<input type="text"id = "a3"><br>

    高等数学:&nbsp;&nbsp;<input type="text"id = "a4"><br>
    <br>
    <button onclick="GoMainPage()">回主界面</button>&nbsp;&nbsp;
    <button onclick="upStu()">确认修改</button>
   </div>
  </div>

</div>

</body>
</html>
