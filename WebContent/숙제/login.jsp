<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@include file ="menu.jsp" %>
	<!-- 
		로그인 페이지를 작성해주세요.
		
		username, password 를 입력받고 로그인 할 수 있도록 해주세요.
	 -->	 	
<form name="loginForm" action="j_security_check" method="post">
	<p> 사용자명: <input type="text" name="j_username"> </p>
	<p> 비밀번호: <input type="password" name="j_password"></p>
	<p> <input type="submit" value="전송"></p>
</form>
<%@include file ="footer.jsp" %>
</body>
</html>