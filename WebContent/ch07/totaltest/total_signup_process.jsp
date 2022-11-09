<%@page import="dao.MemberDAO"%>
<%@page import="dto.MemberVO"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.DiskFileUpload"%>
<%@page import="java.io.File"%>
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
	문제3-1)
	src아래 dto패키지안에 있는 MemberVO 클래스를 완성하세요.
	
	[셍성할 필드들]
	String mem_id
	String mem_pw
	String mem_name
	String mem_sex
	String filename
	
	[getter/setter 생성]
	
	문제3-2) 
	total_signup.jsp에서 전달받은 모든 데이터들을 꺼내서 MemberVO 클래스에 담아주세요

	문제3-3)
	MemberDao 클래스에 addMember() 함수로 회원을 등록해주세요.
	
	문제3-4)
	회원 가입 완료 후, 로그인 페이지로 이동해주세요.(이동 후 로그인을 진행해주세요.)
 -->
<%
	String path = request.getServletContext().getRealPath("/resources/images");
	File tempFile = new File(path);
	if(!tempFile.exists()){
		tempFile.mkdirs();
	}
	DiskFileUpload upload = new DiskFileUpload();
	upload.setSizeMax(3000000);	//최대 크기
	upload.setSizeThreshold(1024);	//메모리상에 저장할 최대 크기(byte) - 버퍼 영역
	upload.setRepositoryPath(path);	//업로드된 파일을 임시로 저장할 경로()
	
	
	
	List items = upload.parseRequest(request);
	
	Iterator iter = items.iterator();
	
	int maxSize = 4 * 1024 * 1024; //4MB (파일 업로드 max 사이즈 설정)
	MemberDAO dao = MemberDAO.getInstance();
	MemberVO vo = new MemberVO();
	Map<String,String> map = new HashMap<>();
	
	while(iter.hasNext()){
		FileItem item = (FileItem)iter.next();
		
		if(item.isFormField()){
			String name = item.getFieldName();
			String value = item.getString("utf-8");
			out.print(name + " " + value);
			map.put(name,value);
		}else{
			
			String fileFieldName = item.getFieldName(); //filename 
			String fileName = item.getName();
			
			if(!fileName.equals("")){
				String contentType = item.getContentType();
				fileName = fileName.substring(fileName.lastIndexOf("\\") + 1);
				long fileSize = item.getSize();
				File file = new File(path + "/" + fileName);
				
				if(maxSize < fileSize){
					out.println("이미지 크기 초과");
				}else{
					item.write(file);
					map.put(fileFieldName,fileName);
					
			}
		}
	}
}
	vo.setMem_id(map.get("mem_id"));
	vo.setMem_pw(map.get("mem_pw"));
	vo.setMem_name(map.get("mem_name"));
	vo.setMem_sex(map.get("mem_sex"));
	vo.setFilename(map.get("filename"));
	dao.insertMember(vo);
%>

<%
	response.sendRedirect("./total_signin.jsp");
%>
</body>
</html>