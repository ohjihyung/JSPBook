<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Security</title>
</head>
<body>
	<form action="j_security_check" name="LoginForm" method="post">
		<p>사용자명 : <input type="text" name ="j_username"/></p>
		<p>비밀번호 : <input type="password" name ="j_password"/></p>
		<p><input type="submit" value ="전송"/></p>
		
	</form>
</body>
</html>