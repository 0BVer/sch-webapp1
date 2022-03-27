<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<h1>
    이미지 삽입
</h1>
<img src="image/alarm.png" width="200">
<img src="image/review.png" width="200" border="2"><br>
<h1>
    하이퍼링크 삽입
</h1>
<a href="https://google.com">google</a><br>
<a href="https://8.8.8.8">Hello Servlet</a><br>
<a href="https://naver.com">naver</a>
<h1>
    이미지에 하이퍼링크 삽입
</h1>
<a href="https://www.kma.go.kr/kma/" target="_blank">
    <img src="image/alarm.png" width="200">
</a>
<h1>테이블 작성하기</h1>
<table border="3" width="80%" bgcolor="#d2b48c">
    <tr>
        <th width="30%">아이디</th>
        <th>비밀번호</th>
    </tr>
    <tr>
        <td>spacezone</td>
        <td>#123@456</td>
    </tr>
</table>
</body>
</html>