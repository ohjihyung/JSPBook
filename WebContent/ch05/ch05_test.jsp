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
			아이디, 비밀번호, 이름, 성별, 휴대폰번호, 주소
			를 입력받는 폼양식을 구성하고 
			ch05_test_process.jsp로 method=post방식으로 전송
			
			입력양식 : input type ="text"
			전송방식 : post
			
			
		 -->
		 
		 <form action="ch05_test_process.jsp" method="post">
		 	   아이디 : <input type="text" name ="id"> <br/>
		 	   비밀번호 : <input type="text" name ="pw"> <br/>
		 	   이름 : <input type="text" name ="name"> <br/>
		 	   성별 : <input type="text" name ="gender"> <br/>
		 	   휴대폰번호 : <input type="text" name ="phone"> <br/>
		 	   주소 : <input type="text" name ="addr"> <br/>
		 	   
		 	   <input type="submit" value="전송"/>
		 
		 </form>
</body>
</html>