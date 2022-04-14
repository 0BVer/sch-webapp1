<%--
  Created by IntelliJ IDEA.
  User: 0bver
  Date: 2022/04/14
  Time: 9:39 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>session internal</title>
</head>
<body>
    <%
        int s_time = session.getMaxInactiveInterval() / 60;
        out.println(s_time + "min\n\n");
    %>

    <%
        session.setMaxInactiveInterval(60 * 5);
        s_time = session.getMaxInactiveInterval() / 60;
        out.println(s_time + "min\n\n");
    %>
</body>
</html>
