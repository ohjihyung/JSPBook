<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		//설정한 문자열을 출력하도록 out 내장 객체의 println() 메소드를 작성
		//println()메서드는 줄바꿈이 되지않으므로 줄바꿈을 위해 <br/>을 작성함
		out.println("오늘의 날짜 및 시각 : <br/>");
		
		//오늘의 날짜 및 시각을 출력하도록 out 내장 객체의 println()메서드를 작성함
		out.println(Calendar.getInstance().getTime());
	
	%>
</body>
</html>