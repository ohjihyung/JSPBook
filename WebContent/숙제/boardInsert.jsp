<%@page import="java.net.URLEncoder"%>
<%@page import="dto.BoardVO"%>
<%@page import="dao.BoardDAO"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
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
<!-- 
	넘겨받은 게시글 데이터를 이용하여 게시글 등록을 진행해주세요.
	등록이 실패하여 에러가 발생 할 경우, exceptionBoard_error.jsp 페이지로 이동할 수 있게 해주세요.
	
	등록이 완료되면 작성한 게시글 상세정보 페이지(boardView)로 이동해주세요.
	이동하여 새롭게 작성된 게시글 내용으로 상세정보 페이지를 보여주세요.
 -->
 <%
 	request.setCharacterEncoding("utf-8");
 	response.setCharacterEncoding("utf-8");
 	
 	BoardDAO dao = BoardDAO.getInstance();
 	BoardVO vo = new BoardVO();

 	Date date = new Date();
 	SimpleDateFormat format = new SimpleDateFormat("yyyy/MM/dd");
 	String bo_title = request.getParameter("bo_title");
 	String bo_content = request.getParameter("bo_content");
 	String bo_writer = request.getParameter("bo_writer");
 	String bo_hit = "0";
 	String bo_id = dao.increasedId();
 	String bo_date = format.format(date);
 	
 	
 	vo.setBo_id(bo_id);
 	vo.setBo_title(bo_title);
 	vo.setBo_content(bo_content);
 	vo.setBo_writer(bo_writer);
 	vo.setBo_hit(bo_hit);
	vo.setBo_date(bo_date); 	
 	
 	dao.insertBoard(vo);
 	//response.sendRedirect("boardList.jsp");
 	response.sendRedirect("boardView.jsp?id=" + bo_id);
 	
 %>
 
 
</body>
</html>