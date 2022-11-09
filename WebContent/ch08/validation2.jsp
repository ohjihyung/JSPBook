<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script>

function CheckLogin(){
	
	var form = document.loginForm;
	//아이디가 입력되었는지 검사
	// 아이디가 입력되지않았으면 오류메세지 출력하고 해당 입력 항목에 커서가 놓인다.
	if(form.id.value == ""){
		alert("아이디를 입력해주세요");
		form.id.focus();
		return false;
	//비밀번호가 입력되었는지 검사
	// 비밀번호가 입력되지않았으면 오류메세지 출력하고 해당 입력 항목에 커서가 놓인다.
	}else if(form.pw.value == ""){
		alert("비밀번호를 입력해주세요");
		form.pw.focus();
		return false;
	}
	
	form.submit();
}


$(function(){
	
		var loginBtn = $("#loginBtn");
		
		loginBtn.on("click",function(){
			var id = $("#id2").val();
			var pw = $("#pw2").val();
			
			if(id ==null || id ==""){
				alert("아이디를 입력해주세요")
				$("#id2").focus();
				return false;
			}
			if(pw ==null || pw ==""){
				alert("비밀번호를 입력해주세요")
				$("#pw2").focus();
				return false;
			}
			
			//$("[name=loginForm2]").submit();  // name속성으로 찾기 
			$("#loginForm2").submit();  // id 속성으로 찾기
		});
});

</script>
</head>
<body>
	<p>JavaScript 버젼</p>
	<form action ="validation02_process.jsp" name ="loginForm" >
		<p>아이디: <input type="text" name="id" /></p>
		<p>비밀번호: <input type="text" name="pw"/> </p>
		<p><input type ="button" value ="전송" onclick="CheckLogin()"/></p>
	</form>
	
	<p>Jquery 버젼</p>
	<form action ="validation02_process.jsp" name ="loginForm2" id="loginForm2" >
		<p>아이디: <input type="text" name="id2" id ="id2" /></p>
		<p>비밀번호: <input type="text" name="pw2" id="pw2" /> </p>
		<p><input type ="button" value ="전송" id="loginBtn"/></p>
	</form>
</body>
</html>