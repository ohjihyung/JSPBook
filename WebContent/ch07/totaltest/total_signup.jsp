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
	문제2) 
	전송경로 : ./total_signup_process.jsp 를 설정해주세요.
	
	그리고 회원가입을 진행해주세요.
 -->
<h3>회원가입</h3>
<form action="./total_signup_process.jsp" method="POST" enctype="multipart/form-data">
	<p>아이디 : <input type="text" name="mem_id"/></p>
	<p>비밀번호 : <input type="text" name="mem_pw"/></p>
	<p>이름 : <input type="text" name="mem_name"/></p>
	<p>
		성별 : <input type="radio" name="mem_sex" value="남자"/> 남자 <input type="radio" name="mem_sex" value="여자"/> 여자
	</p>
	<p>프로필 이미지</p>
	<p><input type="file" name="filename"/></p>
	<p><input type="submit" value="가입하기"/></p>
</form>
</body>
</html>