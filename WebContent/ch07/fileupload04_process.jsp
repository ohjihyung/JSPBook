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
	String path = "C:\\upload";
	File tempFile = new File(path);
	if(!tempFile.exists()){
		tempFile.mkdir();
	}

	//commons-FileUpload를 이용하여 파일을 업로드 하려면 먼 저 Commonse-FileUpload
	// 파일 업로드를 위해 팽키지에 포함되어 있는 DiskFileUpload 객체를 생성함
	DiskFileUpload upload = new DiskFileUpload();
	
	// 업로드할 파일의
	upload.setSizeMax(1000000); // 최대 크기
	upload.setSizeThreshold(4096); // 메모리상에 저장할 최대 크기
	upload.setRepositoryPath(path); // 업로드 된 파일을 임시로 저장할 경로 
	
	// 생성된 객체를 통해 DiskFileUpload 클래스가 제공하는 메서드를 사용하여 웹 브라우저가 전송한
	// multipart/form 유형의 요청파라미터를 가져옴
	// 폼 페이지에서 전송된 요청 파라미터를 전달받도록 DiskFileUpload 객체 타입의 parseRequest() 메소드를 작성 
	List items = upload.parseRequest(request);
	
	// 폼 페이지에서 전송된 요청 파라미터를 Iterator 클래스로 변환
	Iterator iter = items.iterator();
	
	int maxSize = 4 * 1024 * 1024; //4MB (파일 업로드 max 사이즈 설정)
	
	while(iter.hasNext()){
		FileItem item = (FileItem)iter.next();
		//FileItem 클래스의 메서드 사용해 요청 파라미터가 일반 데이터인지 파일인지 분석 후 처리하여 파일을 업로드함
		if(item.isFormField()){ // 일반데이터라면
			String name = item.getFieldName();
			String value = item.getString("utf-8");
			out.println(name + " = " + value + "<br/>");
		}else{ // 파일이라면
			String fileFieldName = item.getFieldName();
			String fileName = item.getName();
			String contentType = item.getContentType();
			
			
			fileName = fileName.substring(fileName.lastIndexOf("\\") + 1);
			long fileSize = item.getSize();
			
			File file = new File(path + "/" + fileName);
			
			// 개당 파일 최대 사이즈 초과시 알림!
			if(maxSize < fileSize){
				out.println("이미지 크기 초과");
			}else{
				item.write(file);
			}
			
			out.println("--------------------------<br/>");
			out.println("요청 파라미터 이름 : " + fileFieldName + "<br/>");
			out.println("저장 파일 이름 : " + fileName + "<br/>");
			out.println("파일 컨텐트 타입 : " + contentType + "<br/>");
			out.println("파일 크기 : " + fileSize + "<br/>");
		
		}
	}
	
%>