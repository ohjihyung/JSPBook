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
	문제1) 전송 경로 : ./total_signin_process.jsp 를 설정하세요.
		그리고 로그인, 회원가입 기능을 진행해주세요.
		
	문제2) 로그인 처리 후 해당 페이지로 error=1의 값이 넘어왔을때
		메세지를 출력하는 p태그를 활성화 하고 p태그 메세지가 보여지도록 해주세요(인증 불일치시)
 -->
<form action="./total_signin_process.jsp" method="POST">
	<p>아이디 : <input type="text" name="mem_id"/></p>
	<p>비밀번호 : <input type="text" name="mem_pw"/></p>
	
	
	<p><input type="submit" value="로그인"/></p>
	<br/>
	
	<%
		String flag = request.getParameter("error");	
		
		if(flag!=null && flag.equals("1")){
	%>
			<p style="font-size:10px; color:red;">** 존재하지 않는 회원입니다.</p>	
	<%
		}
	%>
	
	<a href="./total_signup.jsp">회원가입</a>
</form>


</body>
</html>