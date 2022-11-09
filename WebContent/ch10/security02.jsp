<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Security</title>
</head>
<body>
<!-- 인증된 사용자를 가져오도록 request 내장 객체 getRemoteUser() 함수 사용 -->
	<p>사용자명 : <%=request.getRemoteUser() %></p>
	<!-- 인증 처리 방식을 가져오도록 내장객체 getAuthType() 함수 사용 -->
	<p>인증방법 : <%=request.getAuthType() %></p>
	<p>인증한 사용자명이 역할명 'tomcat'에 속하는 사용자인가요? <%=request.isUserInRole("tomcat") %></p>
	<p>인증한 사용자명이 역할명 'role1'에 속하는 사용자인가요? <%=request.isUserInRole("role1") %></p>
</body>
</html>