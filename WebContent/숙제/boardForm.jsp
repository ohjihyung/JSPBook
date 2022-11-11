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
	게시판 FORM 페이지를 작성해주세요.
	
	[출력 예]
	
	게시글 등록
	─────────────────────────────
	제목 : 
	작성자 : 
	내용 :
	─────────────────────────────
	첨부파일 :  
	등록 목록
	
	1) 등록 버튼을 클릭 시, 게시글 등록을 진행해주세요.
		등록을 위해 이동할 페이지(boardInsert.jsp)로 이동해서 등록 처리를 진행해주세요.
		등록이 완료되었다면 현재 등록된 상세정보 페이지(boardView)로 이동해주세요.
		
		(정규식)
		등록 시, 제목은 최소 모든 문자 5자에서 최대 30자까지로 설정가능하게 해주세요.
		작성자는 영소대문자, 한글만 가능하게 설정해주세요. 
		
	2) 목록 버튼을 클릭 시, 게시판 목록 페이지로 이동해주세요(boardList.jsp)

 -->
 <%@include file ="menu.jsp" %>
 	<form action="boardInsert.jsp" method="post" name="insertForm" enctype="multipart/form-data" >
 		 <p>게시글 등록</p>
 		 <p>-----------------------------------------</p>
 		 <p>제목: <input type="text" name="bo_title"></p>
 		 <p>작성자: <input type="text" name="bo_writer"></p>
 		 <p>내용: <input type="text" name="bo_content"></p>
 		 <p>-----------------------------------------</p>
 		 <p>첨부파일: <input type="file" name="filename"></p>
 		 
 		 <input type="button" value="등록" onclick="insert()">
 		 <input type="button" value="목록" onclick="golist()">
 	</form>
 	
</body>
 <%@include file ="footer.jsp" %>
<script>
function golist(){
	history.back();
}

function insert(){
	
	var form = document.insertForm;
	var title = form.bo_title.value;
	var writer = form.bo_writer.value;
	var content = form.bo_content.value;
	var file = form.filename.value;
	
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
	if(file.length == 0){
		alert("첨부파일을 넣으시오");
	}
	
	form.submit();
	
}
</script>
</html>