<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
     

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Directive Tag</title>
</head>
<body>
	<!-- 변수k가 1부터 10까지 증가하도록 JSTL의 Core태그 반복문 작성 -->
	<c:forEach var="k" begin="1" end="10" step="1">
		<c:out value="${k}"/>
	</c:forEach>
	<hr/>
	
	<!--  JSTL을 사용하지 않고 스크립틀릿과 표현문을 통해 str 출력 -->
	<%
		String str = "스크립틀릿으로 선언한 개똥이";
	%>
	
	<%=str %>
	<br/>
	
	<c:set var="str" value="Core태그로 선언한 개똥이"/>
	<c:out value = "${str}" />
	
	<br/>
	
	<!-- 스크립틀릿으로 리스트 선언후 값 3개 추가 -->
	<%
		List<String> list = new ArrayList<>();
		
		list.add("개똥이");
		list.add("김철수");
		list.add("메뚜기");
	%>
	<!-- items <-Collection -->
	<!-- 
		items는 list와 같은 반복문을 돌리기 위한 컬렉션 객체 변수가 들어간다.
	 -->
	<c:forEach items="<%=list %>" var="item">
		<p>${item}</p>
	</c:forEach>
	<br/>
	<!-- 변수 k가 1부터 10까지 1씩 증가하도록 JSTL의 Core 태그 반복문 작성 
		 단,짝수일때만 출력
	-->
	<c:forEach var ="k" begin="1" end="10" step="1">
		<c:if test="${k % 2 == 0}">
			<c:out value="${k }"/>
		</c:if>
	</c:forEach>
	
	<!-- choose 연습 -->
	<!-- 
		scope(영역)
		page : JSP 페이지 내에서만 공유(기본)
		request : 같은 요청 내에서만 공유
		session : 같은 웹 브라우저 내에서만 공유
		application : 다른 웹 브라우저에서도 서로 공유 
	 -->
	<c:set var="money" value="6000" scope="page"/>
	<p>내가 가진돈은 ${money }원 입니다.</p>
	<c:choose>
		<c:when test="${money <=0 }">
			<p>무일푼</p>
		</c:when>
		<c:when test="${money <= 5000}">
			<p>커피 세잔의 여유</p>
		</c:when>
		<c:otherwise>
			<p>밥먹자</p>
		</c:otherwise>
	</c:choose>
	<br/>
	
	<!-- 
		문제 풀어보기 
	 	1) 리스트에 404호 반 학생 이름을 모두 넣고 Core태그 set에 저장한후,
	 		전체를 출력해주세요
	 	
	 	2) 전체출력을 4명씩 끊어서 출력해주세요
	 		이름 이름 이름 이름
	 		이름 이름 이름 이름
	 		이름 이름 이름 이름
	 		이름 이름 이름 이름
	 	
		 3) 4명씩 끊어서 출력 시 , 본인의 이름은 '본인'으로 출력해주세요
		 	'본인' 글자를 출력시, 굵은 글씨로 출력해주세요
	 -->
	 
	 <%
	 	List<String> four5four = new ArrayList<>();
	 	four5four.add("최중호"); four5four.add("허소영");
	 	four5four.add("박민지"); four5four.add("윤영현");
	 	four5four.add("채진영"); four5four.add("전재한");
	 	four5four.add("허나훔"); four5four.add("인승주");
	 	four5four.add("김슬기"); four5four.add("고재일");
	 	four5four.add("오지형"); four5four.add("조현수");
	 	four5four.add("정종은"); four5four.add("한상훈");
	 	four5four.add("남지현"); four5four.add("김보미");
	 	
	 %>
	
	<c:set value = "<%=four5four %>" var ="names"/>
	 <c:forEach begin ="1" end="16" step ="1" var = "i">
	 		
	 		<c:if test="${names[i-1] eq'오지형' }">
	 			<b><c:out value="본인"/></b>
	 		</c:if>	
	 		<c:if test="${names[i-1] ne '오지형' }">
	 			<c:out value="${names[i-1] }"/>
	 		</c:if>	
	 		<c:if test="${i % 4 == 0 }">
	 			<br/>
	 		</c:if>
	 </c:forEach>
	 
	 <c:forEach items="${names }" var ="name" varStatus="stat">
	 	<c:if test="${name eq'오지형' }">
	 		<span><b>본인</b></span>
	 	</c:if>
	 	<c:if test="${name ne'오지형' }">
	 		<span>${name }</span>
	 	</c:if>
	 	<c:if test="${ stat.count % 4 == 0 }">
	 		<br/>
	 	</c:if>	
	 </c:forEach>
	 
	 <c:forEach items="${names }" var="name" varStatus="stat">
		<p>count : ${stat.count }, index : ${stat.index }</p> 
	 </c:forEach>
</body>
</html>