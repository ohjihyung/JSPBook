<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<%!
		//선언문 태그
		int pageCount = 0;
		
		void addCount(){
			pageCount++;
		}
	%>

	<%
		//스크립틀릿
		//함수 addCount() 호출
		addCount();
	%>

	<!-- 표현문 태그 -->
	<h4>이 사이트 방문은 <%=pageCount %></h4>
