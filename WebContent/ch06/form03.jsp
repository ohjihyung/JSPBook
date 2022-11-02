<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Form Processing</title>
</head>
<body>
	<h3>회원가입</h3>
	<form action ="#" name="member" method="post">
		<p>아이디 : <input type="text" name ="id"/><input type ="button" value = "아이디 중복검사"></p>
		<p>비밀번호 : <input type="password" name ="passwd"/></p>
		<p>이름 : <input type="text" name ="name"/></p>
		<p>
			연락처 : 
				<select>
					<option value = "010">010</option>
					<option value = "011">011</option>
					<option value = "016">016</option>
					<option value = "017">017</option>
					<option value = "019">019</option>
				</select>
				- <input type ="text" maxlength="4" size ="4" name="phone2"/>
				- <input type ="text" maxlength="4" size ="4" name="phone3"/>
		</p>
		<p>
			성별 : <input type="radio" name ="sex" value="남성" checked ="checked"/> 남성
			 <input type="radio" name ="sex" value="여성" /> 여성			
		</p>
		
		<p>
			취미 : 독서 <input type="checkbox" name="hobby1" checked="checked"/>
			       운동 <input type="checkbox" name="hobby2"/>
				   영화 <input type="checkbox" name="hobby3"/>
		</p>
		
		<!-- 
			wrap ="off" : 줄 바꿈 안함,
			soft : 자동 줄 바꿈,
			"hard" : 서버 전송 시 캐리지 리턴(엔터문자) 문자를 전달
			html5에서 새롭게 추가된 기능, "hard"사용시 cols 속성이 명시 되어잇어야함
		 -->
		<textarea rows="3" cols="30" placeholder="가입인사">
						
		</textarea>
		<p>
				<input type= "submit" value ="회원가입" />
				<input type= "reset" value ="다시쓰기" />
		</p>
	</form>
</body>
</html>