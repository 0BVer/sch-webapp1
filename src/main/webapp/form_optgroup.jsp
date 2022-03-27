<%--
  Created by IntelliJ IDEA.
  User: 0bver
  Date: 2022/03/27
  Time: 3:56 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title> Option Group </title>
</head>
<body>
Home > Country
<hr>
<form action="#" method="get">
    <fieldset style="width: 150px">
        <legend>
            소속 국가
        </legend>
        <select name="country">
            <option value="choice">=== 선택 ===</option>
            <optgroup label="본인 국적">
                <option value="Korea">대한민국</option>
                <option value="USA">미국</option>
                <option value="France">프랑스</option>
            </optgroup>
        </select>
    </fieldset>
</form>
</body>
</html>
