<%@page import="java.io.File"%>
<%@page import="java.util.Enumeration"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%
	File sfile = new File("C:\\upload");
 	if(!sfile.exists()){
 		sfile.mkdir();
 	}
 	
 	// 웹 브라우저에서 전송되는 파일을 서버의 C:\\upload 경로에 저장하고,
 	// 파일의 최대 크기는 5MB(%*1024*1024) 이고,
 	// 파일명의 인코딩유형은 utf-8,
 	// Policy 설정을 new DefaultFileRenamePolicy()로 하는 경우, 중복되는 파일이 있으면 새로운
 	// 파일명으로 파일을 만든다  이때 새로운 파일명은 끝에 1이붙은 파일명이다
 	// Policy 설정을 null로 하게되면 파일명 변ㄱ셩 정책을 설정하지 않았으므로 덮어쓴다.
 	
 	// C드라이브에 upload 폴더가 없는 경우 , java.lang.IllegalArgumentException: Not a directory 에러 발생
 	// upload 폴더를 미리 생성해둔다 or 해당 경로의 폴더가 없을때 생성할 역할을 ㅁ나들어준다.
	MultipartRequest multi = new MultipartRequest(
		 	request, "C:\\upload", 5 *1024 *1024, "UTF-8", new DefaultFileRenamePolicy());
	
 	// 일반 데이터 가져오기
 	// 폼 페이지에서 전송된 요청 파라미터를 받도록 MultipartRequest 객체타입의 getParameterNames() 메소드를
 	//작성한다
 	
	Enumeration params = multi.getParameterNames();
	
 	// 폼 페이지에서 전송된 요청 파라미터가 없을 때까지 반복하도록 hasMoreElement()메서드 작성
	while(params.hasMoreElements()){
		// 폼페이지에서 전송된 요청 파라미터의 이름을 가져오도록 nextElement()메소드를 작성한다
		String name = (String)params.nextElement();
		// nextElement()로 얻어온 파라미터 이름으로 
		// MultiPartRequest 객체 타입의 getParameter() 메서드 작성
		String value = multi.getParameter(name);
		out.println( name + " =" + value + "<br/>");
	}
	
	out.println("-----------------------------------------<br/>");
	
	
	//파일데이터 가져오기
	// 폼 페이지에서전송된 요청 파라미터 중 파일을 전달 받도록 MultipartRequest 객체타입의 getParameterNames() 메소드를
 	//작성한다
	Enumeration files = multi.getFileNames();
	// 폼 페이지에서 전송된 요청 파라미터 중 파일이 없을때까지 반복하도록 hasMoreElement()메서드 작성
	while(files.hasMoreElements()){
		// 폼 페이지에서 전송된 요청 파라미터가 없을 때까지 반복하도록 nextElement()메서드 작성
		String name = (String)files.nextElement();
		// 폼페이지에서 전송되어 서버에 업로드 된 파일을 가져오도록 
		// MultiPartRequest 객체 타입의 getParameter() 메서드 작성
		String filename = multi.getFilesystemName(name);
		// 폼페이지에서 전송된 파일이 서버에 저장되기전의 파일 이름을 가져오도록 
		// MultiPartRequest 객체 타입의 getOriginalFileName() 메서드 작성
		String original = multi.getOriginalFileName(name);
		String type = multi.getContentType(name);
		File file = multi.getFile(name);
		
		// fileupload.jsp에서 input file로 설정된 name
		out.println("요청 파라미터 이름 :" + name + "<br/>");
		out.println("실제 파일 이름 :" + original + "<br/>");
		out.println("저장 파일 이름 :" + filename+ "<br/>");
		out.println("파일 컨텐츠 타입 :" + type + "<br/>");
	
		if(file !=null){
			out.println("파일크기 :" + file.length());
			out.println("<br/>");
		}
	}
%>