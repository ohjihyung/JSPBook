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
			//폼 태그에서 입력한 한글을 처리하도록 request 내장 객체의 setCharacterEncoding()
			// 메서드에 문자 인코딩 utf-8로 작성 
			request.setCharacterEncoding("utf-8");
		
			//입력한 아이디 비밀번호를 폼태그로 부터 전송받도록 request 내장객체의 
			// getParameter()메서드를 작성
			String mem_id = request.getParameter("id");
			String mem_pw = request.getParameter("pw");
		
			// 폼테그로 부터 입력받아 관리자면 response01_success.jsp 아니면 response01_failed.jsp로 이동
			if(mem_id.equals("관리자") && mem_pw.equals("1234")){
				response.sendRedirect("response01_success.jsp");
			}else{
				response.sendRedirect("response01_failed.jsp");
			}
		%>
</body>
</html>