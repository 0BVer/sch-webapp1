<%--
  Created by IntelliJ IDEA.
  User: 0bver
  Date: 2022/04/14
  Time: 9:26 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Single session info</title>
</head>
<body>
    <%
        String u_id = (String) session.getAttribute("memberId");
        String u_pw = (String) session.getAttribute("memberPw");

        out.println("아이디 세션 속성 값 : " + u_id);
        out.println("\n비밀번호 세션 속성 값 : " + u_pw);
    %>
</body>
</html>
