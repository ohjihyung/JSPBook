<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>include Tag</title>
</head>
<body>
	<!-- 외부 파일의 내용을 포함하도록 include 디렉티브 테그 작성함 -->
	<%@ include file="include02_header.jsp" %>
	<h4>----------현재 페이지 영역------------</h4>
	<%@ include file="include02_footer.jsp" %>
</body>
</html>