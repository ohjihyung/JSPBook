<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script>



function CheckMember(){
	
	// 영문 대문자와 소문자, 한글, 한글의 자음과 모음 검사하도록 정규 표현식 작성
	var regExpId = /^[a-z|A-Z|ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;
	
	// 이름에 대해 한글만 검사하도록 정규 표현식 작성
	var regExpName = /^[가-힣]*$/;
	
	//숫자만 검사하도록 정규 표현식 작성
	var regExpPw = /^[0-9]*$/;
	
	// 전화번호 형태인지 검사하도록 정규표현식 작성
	var regExpPhone = /^\d{3}-\d{3,4}-\d{4}$/;
	
	// 이메일 형태인지 검사하도록 정규표현식 작성
	// 처음 시작이 숫자,영소문자이고 특수문자 -_\. 나올수도 있고 안나올수도있고
	// 그 다음에 숫자,영소문자가 0개 이상이 나온다 .그리고 @가나옴
	// \.은 특수문자 .을 표현하기 위해 이스케이프로.이 반드시 나와야하고 영소문자 2~3자리가 끝에 나온다
	var regExpEmail = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
	
	var form = document.Member;
	
	var id = form.id.value;
	var name = form.name.value;
	var pw = form.pw.value;
	var phone = form.phone1.value + "-" + form.phone2.value + "-" + form.phone3.value;
	var email = form.email.value;
	
	
	if(!regExpId.test(id)){
		console.log(regExpId.test(id));
		alert("아이디는 문자로 시작해주세요");
		form.id.select();
		return;
	}
	
	
	if(!regExpName.test(name)){
		
		console.log(regExpName.test(name));
		alert("이름은 한글로만 해주세요");
		form.name.select();
		return;
	}
	if(!regExpPw.test(pw)){
		
		console.log(regExpPw.test(pw));
		alert("비밀번호는 숫자만 입력");
		form.pw.select();
		return;
	}
	if(!regExpPhone.test(phone)){
		
		console.log(regExpPhone.test(phone));
		alert("연락처 입력 확인");
		form.phone2.select();
		return;
	}
	
	if(!regExpEmail.test(email)){
		
		console.log(regExpEmail.test(email));
		alert("이메일 입력 확인");
		form.email.select();
		return;
	}
	 
	form.submit();
	
}

</script>
</head>
<body>
	<p>회원가입</p>
	<form action ="validation05_process.jsp" name ="Member" method="post" >
		<p>아이디: <input type="text" name="id" /></p>
		<p>비밀번호: <input type="text" name="pw"/> </p>
		<p>이름: <input type="text" name="name"/> </p>
		<p>연락처:<select name="phone1">
						<option value="010">010</option>
						<option value="011">011</option>
						<option value="016">016</option>
						<option value="017">017</option>
						<option value="019">019</option>				
				  </select> -
				  <input type="text" size="4" maxlength="4" name="phone2">-
				  <input type="text" size="4" maxlength="4" name="phone3">
		 </p>
					<p>이메일: <input type="text" name="email"/> </p>
		<input type ="button" value ="전송" onclick="CheckMember()"/>
	</form>
	
	
</body>
</html>