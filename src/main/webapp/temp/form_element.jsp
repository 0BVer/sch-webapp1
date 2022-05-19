<%--
  Created by IntelliJ IDEA.
  User: 0bver
  Date: 2022/03/27
  Time: 3:32 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Department Choice</title>
</head>
<body>
Home > Department
<hr>
<form action="#" method="get">
    <fieldset style="width: 180px">
        <legend>학과 선택</legend>
        <p>
            학번 : <br>
            <input type="text" name="id"><br><br>
            지원 학과 :
        </p>
        <hr>
        <input type="radio" name="dept">인공지능학과<br>
        <input type="radio" name="dept">바이오의료학과<br>
        <input type="radio" name="dept">데이터사이언스학과
        <hr>
        <div align="center">
            <input type="submit" value=" Finish ">&nbsp;
            <input type="reset" value=" Cancel ">
        </div>
    </fieldset>
</form>
</body>
</html>
