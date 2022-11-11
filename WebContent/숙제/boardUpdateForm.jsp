<%@page import="dao.BoardDAO"%>
<%@page import="dto.BoardVO"%>
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
<%@include file ="menu.jsp" %>
<%
	 response.setCharacterEncoding("utf-8");
	 request.setCharacterEncoding("utf-8");
	 String id =request.getParameter("id");
	
	 BoardDAO dao = BoardDAO.getInstance();
	 
	 BoardVO vo = new BoardVO();
	 vo = dao.getvoById(id);
%>
<!-- 
	게시판 FORM 페이지를 작성해주세요.
	
	*** 수정을 하기위해서 가져온 수정 할 게시판 데이터를 아래에 먼저 출력해서 보여주세요.
	
	[출력 예]
	
	게시글 등록
	─────────────────────────────
	제목 : 제목입니다1
	작성자 : 홍길동
	내용 : 내용입니다1
	─────────────────────────────
	수정 목록
	
	1) 수정 버튼을 클릭 시, 게시글 수정을 진행해주세요.
		수정을 위해 이동할 페이지(boardUpdate.jsp)로 이동해서 등록 처리를 진행해주세요.
		등록이 완료되었다면 현재 등록된 상세정보 페이지(boardView)로 이동해주세요.
		
		(정규식)
		등록 시, 제목은 최소 모든 문자 5자에서 최대 30자까지로 설정가능하게 해주세요.
		작성자는 영소대문자, 한글만 가능하게 설정해주세요. 
		
	2) 목록 버튼을 클릭 시, 게시판 목록 페이지로 이동해주세요(boardList.jsp)
 -->
 <p>출력하기</p>
 <form action="boardUpdate.jsp" method="post" name ="updateform">
 	<p>게시글 수정</p>
 	<hr/>
 	<input type="hidden" value =<%=vo.getBo_id()%> name="bo_id" />
 	<p>제목 :<input type="text" value="<%=vo.getBo_title() %>" name="bo_title"></p>
 	<p>작성자 :<input type="text" value="<%=vo.getBo_writer()%>" name ="bo_writer"/></p>
 	<p>내용 :<input type="text" value="<%=vo.getBo_content()%>" name="bo_content"/></p>
 	<hr/>
	<input type="button" value ="수정" name="modifyBtn" id = "btn"/>
	<input type ="button" value ="목록" name ="gotoList" onclick="goList()"/> 
 </form>
</body>
 <%@include file ="footer.jsp" %>
<script>


function modify(){
	
	var form = document.updateform;
	var title = form.bo_title.value;
	var writer = form.bo_writer.value;
	var content = form.bo_content.value;
	var regId = /.{5,30}/;
	var regwriter = /[a-zA-Zㄱ-힣]/;
	
	if(title.length == 0){
		alert("제목을 작성하세요");
		return false;
	}
	
	if(writer.length == 0){
		alert("작성자을 작성하세요");
		return false;
	}
	
	if(content.length == 0){
		alert("내용을 작성하세요");
		return false;
	}
	
	if(!regId.test(title)){
		alert("제목은 최소 모든 문자 5자에서 최대 30자까지로 설정가능하게 해주세요");
		return false;
	}
	
	if(!regwriter.test(writer)){
		alert("작성자는 영소대문자, 한글만 가능하게 설정해주세요");
		return false;
		
	}
	
	form.submit();
	
}
var btn = document.querySelector("#btn");
 btn.addEventListener("click", modify);

function goList(){
	location.href = "boardList.jsp";
}

</script>
</html>