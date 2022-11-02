<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%	
		// 폼에서 한글 입력을 정상적으로 처리할 때 필요
		// 스프링 프레임워크에서는 web.xml에서 filter 태그로 처리하여 자동화할 예정
		// 폼 페이지에서 입력한 한글을 처리하도록 request 내장 객체의 setCharacterEncoding()
		// 메서드에 문자 인코딩 유형을 UTF-8로 작성
		request.setCharacterEncoding("utf-8");
	
		//입력된 아이디와 비밀번호를 폼태그로부터 전송받도록 request 내장 객체의 getParameter()메서드 작성
		String mem_id = request.getParameter("id");
		String mem_pass = request.getParameter("pass");

	%>
	<!-- 폼태그로부터 전송받은 아이디와 비밀번호 출력 -->
	<p>아이디 : <%=mem_id %> </p>		
	<p>비밀번호 : <%=mem_pass %> </p>		
</body>
</html>