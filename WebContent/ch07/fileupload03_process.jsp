<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.DiskFileUpload"%>
<%@page import="java.io.File"%>
<%@page import="java.util.Enumeration"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%
	String fileUploadPath = "C:\\upload";
	File tempFile = new File(fileUploadPath);
	if(!tempFile.exists()){
		tempFile.mkdir();
	}
	
	//Commons-FileUpload를 이용해 파일을 업로드 하려면 먼저 Commons-FileUpload
	// 파일업로드를 위해 패키지에 포함되어 있는 DiskFileUpload 객체를 생성함
	DiskFileUpload upload = new DiskFileUpload();
	
	// 생성된 객체를 통해 DiskFileUpload 클래스가 제공하는 메서드를 사용하여 웹 브라우저가 전송한
	// multipart/form-data 유형의 요청 파라미터를 가지고온다 
	// 폼페이지에서 전송된 요청 파라미터를 전달받도록 DiskFileUpload 객체 타입의 parseRequest()메서드 작성
	List items  = upload.parseRequest(request);
	
	// 폼페이지에서 전송된 요청 파라미터 Iterator 클래스로 변환 
	Iterator params = items.iterator();
	
	// Iterator 객체 타입의 hasNext() 메서드 작성 
	while(params.hasNext()){
		FileItem fileItem = (FileItem)params.next();
		//FileItem 클래스의 메서드 사용해 요청 파라미터가 일반 데이터인지 파일인지 분석 및 처리해 파일 업로드
		if(!fileItem.isFormField()){
			String fileName = fileItem.getName();
			fileName = fileName.substring(fileName.lastIndexOf("\\") + 1);
			%>
				<%=fileName %>이 저장되었습니다!
			<% 
			//해당 경로로 업로드 c:\\upload + "/" + ddit.png
			File file = new File(fileUploadPath + "/" + fileName);
			fileItem.write(file);
		}
	}
%>

<html>
	<head>
		<title>File upload</title>
	</head>
	<body>
			
	</body>
</html>