<%@page import="com.sun.xml.internal.ws.api.ha.StickyFeature"%>
<%@page import="dto.BoardVO"%>
<%@page import="dao.BoardDAO"%>
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
	 System.out.println(vo);
	 String cnt = vo.getBo_hit();
	 
	 //조회수 증가
	 String cntup = String.valueOf(Integer.parseInt(cnt) + 1);
	 vo.setBo_hit(cntup);
	 
	  
%>
<c:set value ="<%=vo %>" var ="v"></c:set>


<!-- 
	리스트에서 선택한 해당 게시글 1개의 데이터를 출력해주세요.
	넘겨받은 게시판 데이터 객체를 코어태그에 저장하고 코어 태그를 이용해서 출력해주세요.
	c:set, c:out 등등 
	
	[출력 예]
	
	게시판 상세보기
	──────────────────────────────────────────────
	제목 : 
	작성자 작성일 조회수
	──────────────────────────────────────────────
	내용
	──────────────────────────────────────────────
	
	수정 삭제 목록
	
	1) 수정 버튼을 클릭 시, 수정 페이지(boardUpdate.jsp)로 넘어가서 수정을 진행 할 수 있도록 해주세요.
	
	2) 삭제 버튼을 클릭 시, "정말로 삭제하시겠습니까?" 라는 알림창이 뜨고 [확인]을 클릭 했을 때
	   삭제를 진행해주세요. 삭제 후, 게시판 목록 페이지(boardList.jsp)로 이동해주세요.
	   
	3) 목록 버튼을 클릭 시, 목록 페이지(boardList.jsp)로 이동해주세요.
 -->
 
 <p>게시판 상세보기</p>
 <hr/>
  <p>제목 : ${v.bo_title}</p> 
  <p>작성자 : ${v.bo_writer} 작성일 : ${v.bo_date } 조회수: ${v.bo_hit }</p> 
  <hr/>
  <p>내용</p> ${v.bo_content }
  <hr/>
  <input type="button" value ="삭제" onclick="deletebtn()" >
  <input type="button" value ="수정" onclick="updatebtn()" >
  <input type="button" value ="목록" onclick ="gotoList()">
  
</body>
 <%@include file ="footer.jsp" %>
<script>
 function gotoList(){
	 location.href = "boardList.jsp";
 }

  function deletebtn(){
	  
	  var d = confirm("정말로 삭제하시겠습니까?");
	  
	  if(d){
		  var id =  ${v.bo_id};
		  location.href = "boardRemove.jsp?id=" + id;
	  }else{
		  return;
	  }
  }

  function updatebtn(){  
	  var id =  ${v.bo_id};
	  location.href =  "boardUpdateForm.jsp?id=" + id;
  }
</script>
</html>