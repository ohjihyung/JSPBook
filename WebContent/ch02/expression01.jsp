<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Scripting Tag</title>
</head>
<body>
	<!-- 현재 날짜 출력하도록 스크립틀릿 작성 -->
	<p>Today's data : <%= new java.util.Date()%></p>
</body>
</html>