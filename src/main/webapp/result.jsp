<%--
  Created by IntelliJ IDEA.
  User: 0bver
  Date: 2022/05/19
  Time: 9:28 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="phonebook" class="com.example.webapp1.PhoneBook" scope="application"/>
<jsp:getProperty name="phonebook" property="book"/>