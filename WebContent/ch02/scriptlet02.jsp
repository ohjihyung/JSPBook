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
			// 0 부터 10까지의 짝수를 출력하도록 스크립틀릿 태그 작성 
			for(int i = 0; i <= 10; i++){
				if(i % 2 == 0){
					out.println(i + "<br/>");
				}
			}
		%>
		<hr/>
		
	 
</body>
</html>