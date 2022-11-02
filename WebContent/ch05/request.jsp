<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Implicit Objects</title>
</head>
<body>
	<!-- 
		process.jsp?name=개똥이
		?name=개똥이 > Query string / 요청 파라미터/ HTTP 파라미터
		name=개똥이 > request 객체에 들어간다.
	 -->
	<form action ="process.jsp" method ="POST">
		<p>
			이름 : <input type = "text" name ="name">
			<input type = "submit" value="전송">
		</p>
	</form>
</body>
</html>