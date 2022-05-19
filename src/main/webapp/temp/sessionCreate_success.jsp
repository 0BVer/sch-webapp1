<%--
  Created by IntelliJ IDEA.
  User: 0bver
  Date: 2022/04/07
  Time: 11:24 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>create session</title>
</head>
<body>
<%
    String u_id = request.getParameter("id");
    String u_pw = request.getParameter("passwd");

    if (u_id.equals("space") && u_pw.equals("123456")) {
        session.setAttribute("memberId", u_id);
        session.setAttribute("memberPw", u_pw);
    } else {
        out.println("Fail");
    }


%>
</body>
</html>
