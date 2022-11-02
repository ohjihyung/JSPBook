<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Scripting tag</title>
</head>
<body>
	<h2>Scripting tag</h2>
	<%!
	    // 선언문 태그를 사용하여 자바 변수와 메소드 정의
		int count = 3;
	
		String makeItLower(String data){
			return data.toLowerCase();
		}
	
	%>
	
	
	<%
		// 스크립틀릿 태그로 자바 로직 코드 작성 
		for(int i = 0; i <=count; i++){
			 out.println("java server Pages" + i + "<br>");
		}
	%>
	<!-- 표현문 태그로 선언문의 메소드를 호출하여 문자열 형태로 출력 -->
	<%=makeItLower("Hello world!") %>
</body>
</html>