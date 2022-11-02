<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ch05_test_process</title>
</head>
<body>
		<!-- 
			ch05_test.jsp에서 전송받은
			아이디,비밀번호, 이름,성별,핸드폰번호,주소를 
			taglib을 이용해 출력
			
			[출력 예시]
			아이디 : a001
			비밀번호 : 1234
			이름 : 홍길동
			성별 : 남자
			핸드폰번호 : 010-1234-1234
			주소: 대전시 서구 오류동
			
			출력완료시, 5초뒤에 www.naver.com홈페이지로 이동
		 -->
		 
		 <%
		 	 request.setCharacterEncoding("utf-8");
		 	
		 	String id = request.getParameter("id");
		 	String pass = request.getParameter("pw");
		 	String name = request.getParameter("name");
		 	String gen = request.getParameter("gender");
		 	String hp = request.getParameter("phone");
		 	String addr = request.getParameter("addr");	
		 	
		 	Map<String,String> loginMem = new HashMap<>();
		 	loginMem.put("아이디", id);
		 	loginMem.put("비밀번호", pass);
		 	loginMem.put("이름", name);
		 	loginMem.put("성별", gen);
		 	loginMem.put("핸드폰번호", hp);
		 	loginMem.put("주소", addr);
		 	
		 %>
		
		   	<c:forEach items="<%=loginMem %>" var ="map">
					${map.key} = ${map.value }<br/>
			</c:forEach>
		
		<!-- 출력 완료 시 5초뒤 이동 -->
		
		<p id="p1">페이지가 이동될 초가 표시</p>
		<script type="text/javascript">
			var a =0;
			var pTag = document.getElementById("p1");
			
			setInterval( () => {
				a++;
				pTag.innerHTML = a + "초뒤에 이동합니다";
				if(a == 5){
					location.href = "http://www.naver.com";
				}
			}, 1000);
		
		</script>
		
</body>
</html>