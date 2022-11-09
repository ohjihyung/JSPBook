<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
</head>
<body>

<script>
$(function(){

		var reqquest1 = /^[0-9]{7-12}$/;
		
		var reqquest2 = /^[abc][a-zA-Z]{7,11}$/;
		
		var regid = /^[a-z][a-z0-9]{7,15}$/;
		
		var regpw = /^[A-Z][^ㄱ-힣]{7,15}$/;
		
		var reqname = /^[ㄱ-힣]{2,5}$/;
		
		
		var regPhone = /^(010|011|016|017|019|070)-[\d]{3,4}-[\d]{4}$/;
		
	$("#frm").submit(function(){
		$("#err_quest1").html("");
		$("#err_quest2").html("");
		$("#err_id").html("");
		$("#err_pw").html("");
		$("#err_name").html("");
		$("#err_phone").html("");
		
		if(!reqquest1.test($("#quest1").val())){
			$("err_quest1").html("숫자만 입력하되 7~12 자리만 입력받을수 있게 설정");
			$("#quest1").focus();
			return false;
		}
		if(!reqquest2.test($("#quest2").val())){
			$("err_quest2").html("시작은 영소문자 abc이고 영소대문자 8-12자리 까지만 입력받을수 있게 설정");
			$("#quest2").focus();
			return false;
		}
		if(!regid.test($("#mem_id").val())){
			$("err_mem_id").html("아이디는 영소문자로 시작하고 영소문자 ,숫자 8~16 자리");
			$("#mem_id").focus();
			return false;
		}
		if(!regpw.test($("#mem_pw").val())){
			$("err_mem_pw").html("비밀번호는 영대문자로 시작하고 영문대,소문자,숫자,특수문자 8~16자로 설정");
			$("#mem_pw").focus();
			return false;
		}
		if(!reqname.test($("#mem_name").val())){
			$("err_name").html("이름은 한글 2~5글자로 설정");
			$("#mem_name").focus();
			return false;
		}
		if(!regpw.test($("#mem_phone").val())){
			$("err_phone").html("핸드폰 에러");
			$("#mem_phone").focus();
			return false;
		}
		
		$("#success").html("통과");
		
	});
	
	
});


</script>
	<!-- 
		문제 풀어보기 
		
		아래 정규식을 풀어보고 통과 했다면 , ch08_test_process.jsp로 전송하여 
		결과를 출력해주세요
	
	 -->
	 <form id = "frm" action="./ch08_test_process.jsp" method="post">
	 	 <h4>숫자만 입력하되, 7-12자리까지만 입력바을수 있게 설정</h4>
	 	 <input type ="text" id ="quest1" name ="quest1"/>
	 	<p id = "err_quest1"></p>
	 	<br/>
	 	
	 	 <h4>시작은 영소문자 a,b,c고 영소대문자, 8-12자리까지만 입력바을수 있게 설정</h4>
	 	 <input type ="text" id ="quest2" name ="quest2"/>
	 	<p id = "err_quest2"></p>
	 	<br/>

	 	 <h4>아이디는 영소문자로 시작하고 영소문자,숫자8~16자로 입력 </h4>
	 	 <input type ="text" id ="mem_id" name ="mem_id"/>
	 	<p id = "err_id"></p>
	 	<br/>
	 	
	 	 <h4>비밀번호는 영대문자로 시작하고 영문대,소문자,숫자,특수문자 8~16자로 설정 </h4>
	 	 <input type ="text" id ="mem_pw" name ="mem_pw"/>
	 	<p id = "err_pw"></p>
	 	<br/>

	 	 <h4>이름은 한글 2~5글자로 설정 </h4>
	 	 <input type ="text" id ="mem_name" name ="mem_name"/>
	 	<p id = "err_name"></p>
	 	<br/>

	 	 <h4>
	 	 		핸드폰 번호의 첫번째 자리는 011,016,017,019,070,010,으로 시작
	 	 		두번째 자리는 숫자 3자리 또는 숫자 4자리로 시작
	 	 		세번째 자리는 숫자 4자리로 설정
	 	 		
	 	 	
	 	 </h4>
	 	 <input type ="text" id ="mem_phone" name ="mem_phone"/>
	 	<p id = "err_phone"></p>
	 	<br/>
	 	
	 	<p id="success"></p>
	
	 	<input type ="submit" id="sendBtn" value ="전송" />
	 	
	 </form>
	 
	 <!-- 
	 		스크립트 작성은 제이쿼리로 하세요
	 		에러메세지는 alert창으로 출력하지말고 각문제에서 작성된 p테그에 
	 		메세지를 출력
	 		최종 정규식 통과시 p태그인 sucesss에 통과 를 출력 후 결과 페이지로 이동
	 
	  -->
</body>
</html>