<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		삭제전
	 <%
  		String id = (String)session.getAttribute("userID");
  		String pw = (String)session.getAttribute("userPW");
  		
  		out.println("설정된 세션의 이름:" + id + "<br/>");
  		out.println("설정된 세션의 비밀번호 :" + pw + "<br/>");
 	
  		session.removeAttribute("userID");
  		session.removeAttribute("userPW");
  	
  		%>
  		삭제후
	 <%
  		 id = (String)session.getAttribute("userID");
  		 pw = (String)session.getAttribute("userPW");
  		
  
  		out.println("설정된 세션의 속성값이름 :" + id + "<br/>");
  		out.println("설정된 세션의 속성값 비밀번호:" + pw + "<br/>");
  		%>
  		
  	
  		
  	
</body>
</html>