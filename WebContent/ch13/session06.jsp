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
	삭제전<br>
	 <%
  		String id = (String)session.getAttribute("userID");
  		String pw = (String)session.getAttribute("userPW");
  		
  		out.println("설정된 세션의 이름:" + id + "<br/>");
  		out.println("설정된 세션의 비밀번호 :" + pw + "<br/>");
 	
  		
  		
  		session.invalidate();
  	
  		%>
  		삭제후<br>
	 <%
  		
	 	if(request.isRequestedSessionIdValid() == true){
	 		out.print("세션이 유효");
	 	}else{
	 		out.print("세션이 유효하지 않습니다");
	 	}
	 	
  	%>
  		
  		
  	
</body>
</html>