<%--
  Created by IntelliJ IDEA.
  User: 0bver
  Date: 2022/04/07
  Time: 11:22 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>session create</title>
</head>
<body>
<form name="loginForm" action="sessionCreate_success.jsp" method="get">
    ID : <br>
    <input type="text" name="id"><br><br>
    PASSWORD : <br>
    <input type="password" name="passwd"><br><br>
    &nbsp; <input type="submit" value=" Login "> &nbsp;
    <input type="reset" value="cancel">
</form>
</body>
</html>
