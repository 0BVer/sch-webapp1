<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<h1><%= "Hello World!" %>
</h1>
<br/>
<h1>
    이미지 삽입
</h1>
<img src="image/alarm.png" width="200"><br>
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
</body>
</html>