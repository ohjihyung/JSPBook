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
	<form action="fileupload02_process.jsp" method="post" enctype="multipart/form-data" >
			<p>
				이름1: <input type ="text" name = "name1">
				제목1: <input type ="text" name = "subject1">
				파일1: <input type ="file" name = "filename1">
			
			</p>
		
			<p>
				이름2: <input type ="text" name = "name2">
				제목2: <input type ="text" name = "subject2">
				파일2: <input type ="file" name = "filename2">
			
			</p>
		
			<p>
				이름3: <input type ="text" name = "name3">
				제목3: <input type ="text" name = "subject3">
				파일3: <input type ="file" name = "filename3">
			
			</p>
			<p> <input type ="submit" value="파일 올리기"></p>
	</form>
</body>
</html>