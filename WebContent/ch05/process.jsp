<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Implicit Objects</title>
</head>
<body>
	<%
		// 폼에서 한글 입력을 정상적으로 처리하려면 반드시 필요하다.
		request.setCharacterEncoding("utf-8");
		String name = request.getParameter("name");
	%>
	
	<!-- 
	
		이름 : 개똥이
		
		요청 정보 길이 : 32
		클라이언트 요청방식 : POST
		요청 URI : /JSPBook/ch05/process.jsp
		요청 URL : http://localhost:8081/JSPBook/ch05/process.jsp
		서버 이름 : localhost
		서버 포트 : 8081
	
	 -->
	<p>이름 : <%=name %></p>
	<!-- 아래는 request에 대한 정보 -->
	요청 정보 길이 : <%=request.getContentLength() %><br/>
	클라이언트 요청방식 : <%=request.getMethod() %><br/>
	요청 URI : <%=request.getRequestURI() %><br/>
	요청 URL : <%= request.getRequestURL() %><br/>
	서버 이름 : <%= request.getServerName() %><br/>
	서버 포트 : <%= request.getServerPort() %><br/>
	
</body>
</html>