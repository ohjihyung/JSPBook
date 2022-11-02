<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Implicit Objects</title>
</head>
<body>
	<!-- 
		request 내장 객체의 getParameter() 메소드를 이용하여 폼페이지에서 입력된
		데이터를 전달하는 요청 파라미터 값을 출력하는 예제 ,
		폼의 입력 양식에 "개똥이"를 입력하고 전송을 클릭 시 요청 파라미터가 
		"입력양식 이름=값" 형식인 name=개똥이로 전송되고 
		JSP페이지는 전송된 요청 파라미터 이름 NAME을 통해 값을 받음
		만약 폼의 입력 양식 값을 입력하지 않으면 빈 요청 파라미터 값으로 빈 문자열 전송된다.
	 -->
		<form action ="request01_process.jsp">
			  <p>아이디 : <input type ="text" name = "id"></p>
			  <p>비밀번호 : <input type ="text" name = "pass"></p>
			  <p><input type ="submit" value ="gogo"></p>
		</form>
		
</body>
</html>