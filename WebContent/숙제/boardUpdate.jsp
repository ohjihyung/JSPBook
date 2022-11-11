<%@page import="dto.BoardVO"%>
<%@page import="dao.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page errorPage="exceptionBoard_error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		String bo_id = request.getParameter("bo_id");
		String bo_title = request.getParameter("bo_title");
		String bo_writer = request.getParameter("bo_writer");
		String bo_content = request.getParameter("bo_content");
		
	
		 BoardDAO dao = BoardDAO.getInstance();
		 dao.updateBoard(bo_id, bo_title, bo_writer, bo_content);
		
		response.sendRedirect("boardView.jsp?id="+bo_id);
		
	%>
<!-- 
	수정할 게시글 정보를 넘겨받고, 수정을 진행해주세요.
	수정이 실패하여 에러가 발생 할 경우, exceptionBoard_error.jsp 페이지로 이동할 수 있게 해주세요.
	
	수정 완료 후, 수정이 완료 된 게시판 상세보기 페이지(boardView.jsp)로 이동해주세요.
 -->
</body>
</html>