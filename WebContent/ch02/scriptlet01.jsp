<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>scripting Tag</title>
</head>
<body>

		<%
			//지역변수 a, b에 값을 저장하도록 스크립틀릿 태그를 작성합니다.
			int a = 2;
			int b = 3;
			
			int sum = a + b;
			out.println("2 + 3 = " + sum);
		%>
		<hr/>
		<%
			// 지역변수 a, b를 1씩 증가시킴
			a++;
			b++;
			sum = a + b;
			
			out.println("3 + 4 = " + sum);
		
		%>
	 
</body>
</html>