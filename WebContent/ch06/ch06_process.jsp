<%@page import="java.util.List"%>
<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!--  
		아이디 : 
		비밀번호
		연락처
		성별
		취미
		소개
		
		위와같은 형식으로 출력
		
		취미는 Core태그를 이용해 반복문을 실행해 출력
	
	 -->
		<%
			request.setCharacterEncoding("utf-8");
			String mem_id = request.getParameter("mem_id");
			String mem_pw = request.getParameter("mem_pw");
			String mem_name = request.getParameter("mem_name");
			String mem_phone1 = request.getParameter("mem_phone1");
			String mem_phone2 = request.getParameter("mem_phone2");
			String mem_phone3 = request.getParameter("mem_phone3");
			String mem_sex = request.getParameter("mem_sex");
			String comment = request.getParameter("comment");
			String[] hobby = request.getParameterValues("mem_hobby");
		%>
		
		<p>아이디 : <%=mem_id %></p>
		<p>비밀번호 : <%=mem_pw %></p>
		<p>이름 : <%=mem_name %></p>
		<p>연락처 : <%=mem_phone1 %>-<%=mem_phone2 %>-<%=mem_phone3 %> </p>
		
		<c:forEach items="<%=hobby %>" var ="hob">
			<c:out value ="${hob }"/>
		</c:forEach>
		<p>성별 : <%=mem_sex %></p>
		<p>소개 : <%=comment %></p>
	
</body>
</html>