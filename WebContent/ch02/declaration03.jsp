<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>scripting Tag</title>
</head>
<body>

	 <%! 
	 	//전역 메서드 makeItLower()를 선언하기 위해 선언문 태그를 작성
		String makeItLower(String data){
			return data.toLowerCase(); 
	 	}
	 %>
	 
	 <%
	 	// println() 메서드로 makeItLower() 메서드를 호출하여 내용을 출력하도록 스크립틀릿 태그를 작성
	 	// println() 메서드는 선언문 태그에 선언된 전역 메소드인 makeItLower()을 호출
	 	out.println(makeItLower("Hello World"));
	 %>
	 
</body>
</html>