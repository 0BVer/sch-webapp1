<%--
  Created by IntelliJ IDEA.
  User: 0bver
  Date: 2022/03/27
  Time: 3:41 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title> Language Choice </title>
</head>
<body>
Home > Language
<hr>
<form action="#" method="get">
    <fieldset style="width: 150px">
        <legend>언어 선택</legend>
        <select name="language">
            <option value="choice"> === 선택 === </option>
            <option value="korean"> 한국어 </option>
            <option value="english"> 영어 </option>
            <option value="chinese"> 중국어 </option>
            <option value="japanese"> 일본어 </option>
            <option value="spanish"> 스페인어 </option>
        </select>
    </fieldset>
</form>
</body>
</html>
