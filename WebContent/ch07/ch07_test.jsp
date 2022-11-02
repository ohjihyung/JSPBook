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
		 1) 07_test.jsp에
		   아이디, 비밀번호, 이름, 연락처, 성별 ,프로필 이미지 ,소개를 입력받는 폼을 작성
		   
		   아이디   name = mem_id
		   비밀번호   name = mem_pw
		   이름      name = mem_name
		   연락처 name = mem_phone1, mem_phone2, mem_phone3
		   			[첫번째] 010,011,016,017,019 select 이용
		   			[두번째] type text size= 4
		   			[세번째] type text size= 4
		   성별   name = mem_sex
		   			남자   여자 
		   			
		   프로필이미지  name = filename
		   		
		   		 
		   소개   textarea이용
		   		cols rows 자유 
		   		버튼은 submit, reset
		   		submit 전송하기
		   		reset  취소하기 
		   		
		   2) ch07_test_process.jsp로 입력한 데이터를 전송
	 -->
	 
	 <form action="ch07_process.jsp" method ="POST" enctype ="multipart/form-data">
	 	 	<p>아이디 : <input type ="text" name ="mem_id"></p>
	 	 	<p>비밀번호 : <input type ="password" name ="mem_pw"></p>
	 	 	<p>이름 : <input type ="text" name ="mem_name"></p>
	 	 	
	 	 	<select name ="mem_phone1">
	 	 			<option value ="010">010</option>
	 	 			<option value ="011">011</option>
	 	 			<option value ="016">016</option>
	 	 			<option value ="017">017</option>
	 	 			<option value ="019">019</option>
	 	 	</select>
	 	 	- <input type ="text"  size="4" maxlength="4" name = "mem_phone2">
	 	 	- <input type ="text"  size="4" maxlength="4" name ="mem_phone3">
	 	 	
	 	 	<p>
	 	 		성별 : 남성<input type ="radio" value = "남성" checked="checked" name ="mem_sex">
	 	 		       여성 <input type ="radio" value = "여성" name ="mem_sex">
	 	 	</p>
	 	 	
	 	 	<p>
	 	 		프로필 이미지 : <input type ="file" name ="filename" > 
	 	 			
	 	 	</p>
	 	 	<p>
	 	 	
	 	 	<textarea name = "comment" rows= "3" cols ="30"></textarea>
	 	 	</p>
	 	 
	 	 	<input type ="submit" value ="전송하기">
	 	 	<input type = "reset" value = "취소하기"> 
	 </form>
</body>
</html>