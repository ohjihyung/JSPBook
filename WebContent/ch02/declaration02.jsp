<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	 <%! 
	 		// 전역 메서드 sum()을 선언하기 위해 선언문 태그 작성 
			 int sum(int a, int b){
				 return a+b;
				}
	 %>
	
	<%
			// println() 메서드를 이용하여 내용을 출력하도록 스크립틀릿 태그를 작성
			// 여기서 선언된 sum()메서드는 선언문 태그에 선언된 전역 메서드인 sum()을 호출 
			out.println("2 + 3 = " + sum(2,3));
	%>
	 
</body>
</html>