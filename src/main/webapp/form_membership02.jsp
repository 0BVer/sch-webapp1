<%--
  Created by IntelliJ IDEA.
  User: 0bver
  Date: 2022/03/27
  Time: 4:16 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>입력한 개인 정보</title>
</head>
<body>
Home > Personal Information Inquiry
<hr>
<%
    request.setCharacterEncoding("UTF-8");

    String id = request.getParameter("p_id");
    String pw = request.getParameter("p_pw");
    String name = request.getParameter("p_name");

    String choice = request.getParameter("choice");
    String ph01 = request.getParameter("phone1");
    String ph02 = request.getParameter("phone2");
    String ph03 = request.getParameter("phone3");

    String sex = request.getParameter("gender");
    String[] hob = request.getParameterValues("hobby");
    String intro = request.getParameter("Introduction");
%>
<p>아이디 : <%= id %>
</p>
<p>비밀번호 : <%= pw %>
</p>
<p>이름 : <%= name %>
</p>
<p>연락처 : <%= choice %> <%= ph01 %> - <%= ph02 %> - <%= ph03 %>
</p>
<p>성별 : <%= sex %>
</p>
<p>취미 : <% if (hob != null) {
    for (int count = 0; count < hob.length; count++) {
        out.println(" " + hob[count]);
    }
} %></p>
<p>본인 소개 : <%= intro %>
</p>

</body>
</html>
