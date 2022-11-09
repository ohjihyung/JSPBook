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
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
</head>
<body>
<!-- 
	문제1)
	회원가입을 통해 가입한 회원들의 목록(getMemberList) 전부를 가져와서 
	아래 테이블을 채워주세요.
	
	전체 목록 출력을 core태그를 이용하여 작성해주세요.
	회원목록이 없는 경우 "조회하실 회원정보가 존재하지 않습니다."를 출력해주세요
	회원목록이 있는 경우 아래를 이용해서 출력해주세요.
	
	데이터 저장 : core set
	전체목록 출력 : core choose, core when, core otherwise
				core foreach
	
	문제2)			
	해당 페이지로 넘겨받은 쿼리스트링 중, id가 있다면
	'아이디'님 환영합니다! 알림창을 띄워주세요
 -->
 <%
 	MemberDAO dao = MemberDAO.getInstance();
 	List<MemberVO> list = dao.getMemberList();
 	
	String id = request.getParameter("id");
 	if(id !=null){
 		out.print(id + "님 환영!");
 	}
 	
 	out.print(list.size());
 	for(MemberVO vo : list){
 		out.print(vo.getMem_id());
 	}
 	
 %>
 
 <c:set value ="<%=list %>" var ="li"/>

<h3>회원목록</h3>
<hr/>
<br/>
<a href="">회원등록</a>
<br/><br/>

<c:choose>
	<c:when test="${empty li }">
			조회하실 회원정보가 없습니다
		
	</c:when>
	<c:otherwise>
		 <c:forEach items="${li }" var="item">
			<table border="1">
				<tr>
					<th>이미지</th>
					<th>회원정보</th>
					<th>버튼</th>
				</tr>
				<tr>
					<td width="120px">
					
						  <img src ="/JSPBook/resources/images/${item.filename }"/>
				</td>
					<td>
						<p>아  이 디 : ${item.mem_id}</p>
						<p>비밀번호 :  ${item.mem_pw} </p>
						<p>이      름  : ${item.mem_name } </p>
						<p>성      별 : ${item.mem_sex }</p>
					</td>
					<td>
						<a href="">상세정보</a>
					</td>
				</tr>
			</table>
		 
		 </c:forEach> 
		
	</c:otherwise>
</c:choose>

</body>
</html>