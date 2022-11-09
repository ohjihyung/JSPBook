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
	
	if(form.id.value.length < 4 || form.id.value.length >12){
		alert("아이디는 4~12자 이내로 입력 가능");
		form.id.select();
		
		return;
	}	
	if(form.pw.value.length < 4){
		alert("비밀번호는 4자 이상으로 입력 가능");
		form.pw.select();
		return;
	}
	form.submit();
	
}

$(function(){
	var loginBtn = $("#loginBtn");
	
	loginBtn.on("click",function(){
		var id = $("#id2").val();	
		var pw = $("input[name=pw2]").val();	
		
		if(id.length < 4 || id.length >12){
			alert("아이디는 4~12자 이내로 입력 가능");
			$("#id2").select();
			
			return;
		}	
		if(pw.length < 4){
			alert("비밀번호는 4자 이상으로 입력 가능");
			$("#pw2").select();
			return;
		}
		
		$("#loginForm2").submit();
	});
	
	
});

</script>
</head>
<body>
	<p>JavaScript 버젼</p>
	<form action ="validation03_process.jsp" name ="loginForm" method="post" >
		<p>아이디: <input type="text" name="id" /></p>
		<p>비밀번호: <input type="text" name="pw"/> </p>
		<p><input type ="button" value ="전송" onclick="CheckLogin()"/></p>
	</form>
	
	<p>Jquery 버젼</p>
	<form action ="validation03_process.jsp" name ="loginForm2" id="loginForm2" >
		<p>아이디: <input type="text" name="id2" id ="id2" /></p>
		<p>비밀번호: <input type="text" name="pw2" id="pw2" /> </p>
		<p><input type ="button" value ="전송" id="loginBtn"/></p>
	</form>
</body>
</html>