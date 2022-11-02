<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Directives Tag</title>
</head>
<body>
 	<!-- 웹 페이지의 설명을 설명하기 위해 page 디렉티브 태그의 info 속성을 작성 -->
	<%@ page info = "Date 클래스를 이용한 날짜 출력하기" %>
	Today is <%=new java.util.Date() %>
	
</body>
</html>