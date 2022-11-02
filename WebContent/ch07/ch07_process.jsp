<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.Iterator"%>
<%@page import="org.apache.commons.fileupload.DiskFileUpload"%>
<%@page import="java.io.File"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
    
<!-- 
		문제 1 ch07_test.jsp에서 넘긴 데이터를 아래와같이 출력
		
		
		[이미지]
		
		아이디 : 
		비밀번호:
		이름:
		연락처:
		성별:
		가입인사:
		
		
		문제 2)해당 페이지로 넘어온 파라미터들을 중간 처리후 , core태그를 이용하여 저장 (c:set)하고
		      최종 el로 출력
		      
		
		문제 3) 아래 내용에 따른 메세지 출력
		
		    3-1) 프로필 이미지를 선택하지 않고 전송시 "프로필 이미지를 선택하지 않았습니다" 메세지 출력
		         프로필 이미지 선택후 전송 시 전상 진행
		         
		    3-2)  프로필 이미지 선택하고 정상적으로 전송했을때
		    	  업로드 한 파일의 사이즈 최대 크기 (4mb) 초과 시 이미지 크기를 초과하여 이미지를 출력할 수 없습니다 메세지 출력
		    	  
		  
		   **메세지를 출력후  문제1)에서 출력하는 내용은 동일하게 출력되어야함
		   ** 업로드 경로는 자유롭게
		
 -->
 
<%
	String path = request.getServletContext().getRealPath("/resources/images");
	File tempFile = new File(path);
	if(!tempFile.exists()){
		tempFile.mkdir();
	}

	DiskFileUpload upload = new DiskFileUpload();
	
	upload.setSizeMax(1000000); // 최대 크기
	upload.setSizeThreshold(4096); // 메모리상에 저장할 최대 크기
	upload.setRepositoryPath(path); // 업로드 된 파일을 임시로 저장할 경로 
	
	List items = upload.parseRequest(request);
	
	Iterator iter = items.iterator();
	
	int maxSize = 4 * 1024 * 1024; //4MB (파일 업로드 max 사이즈 설정)
	
	Map<String,String> map = new HashMap<>();
	boolean imgFlag = false;
	String msg = null;
	
	while(iter.hasNext()){
		FileItem item = (FileItem)iter.next();
		if(item.isFormField()){ // 일반데이터라면
			String name = item.getFieldName();
			String value = item.getString("utf-8");
			map.put(name, value);
		}else{ // 파일이라면
			
			String fileFieldName = item.getFieldName(); //filename 
			String fileName = item.getName();
			out.print(fileFieldName + "<br/>");
			out.print(fileName);
			if(!fileName.equals("")){
				String contentType = item.getContentType();
				fileName = fileName.substring(fileName.lastIndexOf("\\") + 1);
				long fileSize = item.getSize();
				File file = new File(path + "/" + fileName);
				
				if(maxSize < fileSize){
					out.println("이미지 크기 초과");
				}else{
					item.write(file);
					imgFlag = true;
					map.put(fileFieldName,fileName);
					
					out.println("-------------------------------------<br/>");
					
				}
			
			}else{ // 넘긴 파일이 없을 때
				msg = "프로필 이미지를 선택하지 않았습니다.";
			}	
		}
	}
	
%>
	
	
	<c:set value = "<%=map %>" var = "map" />
	<c:set value = "<%=imgFlag %>" var = "flag" />
	<c:set value = "<%=msg %>" var = "message" />
	
	<c:if test="${message != null }">
		<p>${message }</p>
	</c:if>	
	<c:if test="${message == null }">
		<c:if test = "${flag }">
			<img src ="/JSPBook/resources/images/${map.filename }"/>
		</c:if>
		<c:if test = "${!flag }">
			<p>이미지 크기를 초과하여 이미지 출력할 수없습니다</p>
		</c:if>
	</c:if>
	
 	<p>아이디 :  ${map.mem_id }</p>
 	<p>비밀번호 :  ${map.mem_pw }</p>
 	<p>이름 :  ${map.mem_name }</p>
 	<p>성별 :  ${map.mem_sex }</p>
 	<p>전화번호 :  ${map.mem_phone1 }-${map.mem_phone2 }-${map.mem_phone3 }</p>

<a href ="./ch07_test.jsp">뒤로가기</a>



