<%--
  Created by IntelliJ IDEA.
  User: 26223
  Date: 2022/12/3
  Time: 11:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>学生成绩</title>
</head>

<style>
    body {
        background-size:cover;
        background-image: url("/img/Tu6.jpg");
    }
</style>
<style>
    #a {
        width: 400px;
        height: 400px;
        background-color: rgba(109, 111, 113, 0.51);
        margin-left: 30%;
        margin-top: 10%;
        position: absolute;
    }
    #b {
        margin-left: 90px;
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




<body>
<div id ='a'>

    <div style="font-size: 40px;margin-top: 40px;margin-left: 70px">学生成绩</div>

    <div style="font-size: 25px;margin-top: 45px;margin-left: 70px">您的成绩是：</div>
    <div id="b">

        <c:forEach items="${arr}" var="item">
            科目：${item.getA()}&nbsp;&nbsp;&nbsp; 成绩：${item.getB()}<br>
        </c:forEach>
        <br><br><br><br>

    </div>

</div>

</body>
</html>
