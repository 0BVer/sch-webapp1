<%@ page import="java.util.Map" %><%--
  Created by IntelliJ IDEA.
  User: 0bver
  Date: 2022/05/19
  Time: 9:28 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="phonebook" class="com.example.webapp1.PhoneBook" scope="application"/>
<%
    String name = request.getParameter("name");
    String phone = request.getParameter("phone");
    String result = "성공";
    if (phonebook.book.containsKey(name))
        result = "같은 이름이 존재합니다.";
    else
        phonebook.book.put(name, phone);
%>
<%=result%>
<br/>
<%=name +" | "+ phone%>