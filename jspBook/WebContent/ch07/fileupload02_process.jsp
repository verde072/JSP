<%@page import="java.io.File"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.DiskFileUpload"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!--
	요청URI: fileupload02_process.jsp
	요청파라미터: {memId=a001,memPass=java,filename=파일객체}
-->
<%
	DiskFileUpload upload = new DiskFileUpload();
//요청파라미터를 받음
List items = upload.parseRequest(request);
//요청 파라미터를 Iterator(열거형)으로 변환
Iterator params = items.iterator();
//요청 파라미터가 없어질때까지 반복(3회 반복)
while (params.hasNext()) {
	FileItem item = (FileItem) params.next();
	if (item.isFormField()) {//일반데이터(memId,memPass)이면 true 
		String name = item.getFieldName();
		String value = item.getString("UTF-8");

		out.print("<p>" + name + " : " + value + "</p>");

	} else {//파일{filename=파일객체}
		String filefieldName = item.getFieldName();
		String fileName = item.getName();
		String contentType = item.getContentType();
		long fileSize = item.getSize();
		
		out.print("=======================<br/>");
		out.print("요청파라미터 이름: "+filefieldName+"<br/>");
		out.print("업로드할 파일명 : "+fileName+"<br/>");
		out.print("콘텐츠 유형: "+contentType+"<br/>");
		out.print("파일 크기: "+fileSize+"<br/>");
		
		//파일복사계획
		File file = new File("c:\\upload"+"/"+fileName);
		//복사실행
		item.write(file);
		
	}
}
%>