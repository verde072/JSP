<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="org.apache.commons.fileupload.DiskFileUpload"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="java.io.File"%>
<%
	//commons-fileupload를 이용하여 파일을 업로드하려면
	//해당 패키지의 DiskFileUpLoad 클래스를 통해 객체를 생성해야함 
	DiskFileUpload upload = new DiskFileUpload();
	//fileupload01.jsp의 form안에 들어있는 폼데이터(multipart/form-data유형)
	//request객체 안에는 파라미터들이 있음
	//요청파라미터: {title: 개똥이, filename=파일객체}
	//parse:구문분석, 의미분석
	List items = upload.parseRequest(request);
	//요청 파라미터를 Iterator(열거형)클래스로 변환 
	Iterator params = items.iterator();
	//요청파라미터가 없어질때까지 반복(2회 반복)
	while(params.hasNext()){
		//FileItem: 1)일반 데이터(title) 2)파일객체(filename)
		FileItem item = (FileItem)params.next();
		
		//1)일반데이터 (title)
		//isFormField()메서드: 요청 파라미터가 파일이 아니라 일반데이터인 경우 true
		if(item.isFormField()){
			String name = item.getFieldName();
			String title = item.getString("UTF-8");
			out.print("<h3>" + name + " : " + title +"</h3>");
		}else{
		//2)파일객체(filename)
			String fileName = item.getName();
		
			out.print("<h3>"+fileName+"(파일객체의 파일명)</h3>");
			// c:\\upload\\P1234.jpg 하기로 계획을 세워보자 
			File file=new File("c:\\upload"+"/"+fileName);
			//클라이언트(크롬에서 불러온 사용자의 컴퓨터 안에 있던 이미지 )-> 서버(톰켓서버의 c드라이브 upload폴더에 이미지)
			//계획에 따라 복사 실행
			item.write(file);
		}
	}
%>