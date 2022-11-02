<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Implicit Objects</title>
</head>
<body>
	<ul>
		<li><h3>웹 브라우저의 IP주소를 가져옴</h3></li>
		<li>
			클라이언트 IP<br/>
			 - 웹브라우저의 IP 주소를 가져옵니다.<br/>
			 - <%=request.getRemoteAddr() %><br/>
		</li>
		<li>
			 요청 정보 길이<br/>
			 - 웹브라우저의 요청 정보 길이 가져옵니다.<br/>
			 - <%=request.getContentLength() %><br/>
		</li>
		<li>
			요청 정보 인코딩 <br/>
			 - 웹브라우저의 인코딩 가져옵니다.<br/>
			 - <%=request.getCharacterEncoding() %><br/>
		</li>
		<li>
			요청 정보 콘텐츠 유형 <br/>
			 - 웹브라우저의 콘텐츠 유형 가져옵니다.<br/>
			 - <%=request.getContentType() %><br/>
		</li>	
		<li>
			요청 정보 프로토콜 <br/>
			 - 웹브라우저의 프로토콜 가져옵니다.<br/>
			 - <%=request.getProtocol() %><br/>
		</li>
		<li>
			요청 정보 방식<br/>
			 - 웹브라우저의 HTTP 요청 메서드 (get,post) 가져옵니다.<br/>
			 - <%=request.getMethod() %><br/>
		</li>
		<li>
			요청 URI<br/>
			 	- 웹브라우저의 요청한 URI 경로 가져옵니다.<br/>
			 	-<%=request.getRequestURI()%><br/>
		</li>
		<li>
			요청 컨텍스트 경로<br/>
			 - 웹브라우저의 HTTP 요청 메서드 (get,post) 가져옵니다.<br/>
			 - <%=request.getContextPath() %><br/>
		</li>
		
		<li>
			   서버이름 <br/>
			-  서버 이름을 가져옵니다<br/>
			 - <%=request.getServerName() %><br/>
		</li>
		<li>
			   서버포트<br/>
				-  서버 포트을 가져옵니다<br/>
				<%=request.getServerPort() %><br/>
		
		</li>
		<li>
			   쿼리문 <br/>
			-   ? 다음 url 할당된 문자열 가져옴<br/>
			 - <%=request.getQueryString() %><br/>
		</li>
		
	</ul>
</body>
</html>