<%@page import="java.util.UUID"%>
<%@page import="java.io.File"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.DiskFileUpload"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>이슬 쇼핑몰</title>
</head>
<body>
<%
//윈도우경로: 역슬러시 두개
String path="c:\\upload";

//commons-fileupload.jar 안에 해당 클래스가 있음
DiskFileUpload upload = new DiskFileUpload();
//업로드할 파일의 최대크기
upload.setSizeMax(1000000);
//메모리에 저장할 최대 크기
upload.setSizeThreshold(4096);
//업로드된 파일을 임시로 저장할 경로
upload.setRepositoryPath(path);


//요청파라미터를 받음
//name=개똥이 &subject=소설
List items = upload.parseRequest(request);
//요청 파라미터를 Iterator(열거형) 클래스로 변환
Iterator params = items.iterator();
//요청 파 라미터가 없어질때까지 반복(3회 반복)
while (params.hasNext()) {
	FileItem item = (FileItem) params.next();
	if (item.isFormField()) {//일반데이터(memId,memPass)이면 true 
		String name = item.getFieldName();
		String subject = item.getString("UTF-8");

		out.print("<p>" + name + " : " + subject+ "</p>");

	} else {//파일{filename=파일객체}
		String filefieldName = item.getFieldName();
		String fileName = item.getName();
		String contentType = item.getContentType();
		long fileSize = item.getSize();
		
		//이미지 업로드시 파일 중복 방지
		//java.util.UUID =>랜덤값 생성 
		UUID uuid= UUID.randomUUID();
		//원래의 파일 이름과 구분하기 위해 _를 붙일것임.
		
		//파일복사계획 c:\\upload\\tomcate.PNG로 복사해야함 
		File file = new File(path+"/"+uuid.toString()+"_"+fileName);
		//복사실행
		item.write(file);
		
		out.print("=======================<br/>");
		out.print("요청파라미터 이름: "+filefieldName+"<br/>");
		out.print("업로드할 파일명 : "+fileName+"<br/>");
		out.print("콘텐츠 유형: "+contentType+"<br/>");
		out.print("파일 크기: "+fileSize+"<br/>");
		
	}
}
%>
</body>
</html>