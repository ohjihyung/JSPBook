<%@page import="java.util.List"%>
<%@page import="dto.MemberVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 
	문제1)
	dao패키지 내, MemberDao안에 있는 List<MemberVO>타입의 memberList 변수를 이용하여 
	내가 로그인 하기 위해서 넘긴 아이디, 비밀번호와 일치하면 total_memberList.jsp로 이동하고
	해당 total_memberList.jsp에서 알림창(alert)으로 "아이디님! 환영합니다."를 출력하세요.
	total_memberList.jsp로 이동 시, 쿼리스트링에 id='아이디'를 담아서 보내세요.
	
	문제2)
	일치하지 않는 경우, total_signin.jsp로 이동하고
	로그인 페이지 메세지 출력란에 "존재하지 않는 회원입니다." 메세지를 출력하세요.
	total_signin.jsp로 이동 시, 쿼리스트링에 error=1을 담아서 보내세요
 -->
 	<%
		request.setCharacterEncoding("utf-8");
 		String id = request.getParameter("mem_id");
 		String pw = request.getParameter("mem_pw");
 		String error = "1";
 		MemberVO v = new MemberVO();
 		MemberDAO dao = MemberDAO.getInstance();
 		List<MemberVO> list = dao.getMemberList();
 		
 		if(list.size() != 0){
 			for(MemberVO vo : list){
 	 			if(vo.getMem_id().equals(id) && vo.getMem_pw().equals(pw)){
 	 				error = "0";
 	 			}
 	 		}
 
 		}
 		if(error.equals("0")){
 	 		response.sendRedirect("./total_memberList.jsp?id="+id);
 			
 		}else{
 			
 			response.sendRedirect("./total_signin.jsp?error=1");
 		}
 			
 		
 		
 	
 		
 		
 	%>
 	
</body>
</html>