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
	 파일 업로드를 위한 폼 태그에 method 속성 값은 post로,
	 enctype  속성값은 multipart/form-data로 작성
 -->
	<form action="fileupload03_process.jsp" method="post" enctype="multipart/form-data" >
			<p>
				파일: <input type ="file" name = "filename"/>
			</p>
			<p> <input type ="submit" value="파일 올리기"></p>
	</form>
</body>
</html>