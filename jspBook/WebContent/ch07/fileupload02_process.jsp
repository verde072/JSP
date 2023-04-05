<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="org.apache.commons.fileupload.*"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.Iterator"%>
<!-- 
	요청URI : fileupload02_process.jsp
	요청파라미터 : {memId=a001,memPass=java,filename=파일객체}
-->
<%
	DiskFileUpload upload = new DiskFileUpload();

	//요청파라미터를 받음
	List items = upload.parseRequest(request);
	//요청 파라미터를 Iterator(열거형)으로 변환
	Iterator params = items.iterator();
	//요청 파라미터가 없어질때가지 반복(3회 반복)
	while(params.hasNext()){
		FileItem item = (FileItem)params.next();
		
		if(item.isFormField()){//일반데이터(memId, memPass)이면 true
			//memId=a001,memPass=java
			String name = item.getFieldName();	//memId, memPasss
			String value = item.getString("UTF-8");	//a001, java
			
			out.print("<p>" + name + "=" + value + "</p>");
		}else{ //파일 {filename=파일객체(P1234.jpg)}
			String fileFieldName = item.getFieldName();	//filename
			String fileName = item.getName();	//업로드할 파일명
			String contentType = item.getContentType();	//MIME타입(image/jpeg)
			long fileSize = item.getSize();	//파일의 크기
			
			out.print("=================<br />");
			out.print("요청파라미터 이름 : " + fileFieldName + "<br />");
			out.print("업로드할 파일명 : " + fileName + "<br />");
			out.print("콘텐츠 유형 : " + contentType + "<br />");
			out.print("파일 크기 : " + fileSize + "<br />");
			
			//파일 복사 계획
			File file = new File("c:\\upload" + "/" + fileName);
			//복사 실행
			item.write(file);
		}
	}
	
%>





