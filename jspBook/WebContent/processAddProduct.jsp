<%@page import="java.io.File"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.Iterator"%>
<%@page import="org.apache.commons.fileupload.DiskFileUpload"%>
<%@page import="java.util.List"%>
<%@page import="kr.or.ddit.dao.ProductRepository"%>
<%@page import="kr.or.ddit.vo.ProductVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%	//스크립틀릿
	request.setCharacterEncoding("UTF-8");
	
	//업로드될 서버 경로 지정
	String path = "C:\\eclipse202006\\workspace\\jspBook\\WebContent\\images";

	//파일업로드 처리용 클래스
	DiskFileUpload upload = new DiskFileUpload();
	
	upload.setSizeMax(1000000); //1Mb
	//메모리 크기
	upload.setSizeThreshold(4096); //1 * 1024 * 1024 => 1Mb
	//임시 저장경로 : 생략가능
	upload.setRepositoryPath(path);
	
	//request 객체에 있는 모든 요청 파라미터를 가져와서 분석하여 List 타입의 items 변수에 저장
	List items = upload.parseRequest(request);
	//열거형으로 처리
	Iterator params = items.iterator();
	
	//파라미터의 값들은 모두 String 타입임
	String productId    = "";
	String pname        = "";
	String unitPrice    = "";	  //double
	String description  = "";
	String manufacturer = "";
	String category     = "";
	String unitsInStock = "";	  //long
	String condition    = "";
	//unitPrice, unitsInStock는 문자형 데이터.. -> 숫자형으로 변환
	double price = 0d;
	long stock = 0L;
	
	//{id=a001}
	//필드
	String fileFiledName = "";
	//파일명
	String fileName = "";
	//MIME 타입
	String contentType = "";
	
	//params : 
	//{productId=P1234,pname=삼성폰,unitPrice=1000000,description=설명글,
	//	manufacturer=Samsung,category=Smart Phone,unitsInStock=1000,
	//	condition=New,productImage=파일객체}
	while(params.hasNext()){	//다음 파라미터가 있는가?
		FileItem item = (FileItem)params.next();	//있으면 그 파라미터를 가져오자
		
		if(item.isFormField()){//일반 항목일 때
			//item : {productId=P1234}
			String name = item.getFieldName();	//productId
			if(name.equals("productId")){
				productId = item.getString("UTF-8");	//P1234
			}else if(name.equals("pname")){
				pname = item.getString("UTF-8");
			}else if(name.equals("unitPrice")){
				unitPrice = item.getString("UTF-8");
				
				//가격이 입력이 안되었다면..
				if(unitPrice.isEmpty()){
					price = 0;
				}else{
					price = Double.parseDouble(unitPrice);
				}
			}else if(name.equals("description")){
				description = item.getString("UTF-8");
			}else if(name.equals("manufacturer")){
				manufacturer = item.getString("UTF-8");
			}else if(name.equals("category")){
				category = item.getString("UTF-8");
			}else if(name.equals("unitsInStock")){
				unitsInStock = item.getString("UTF-8");
				
				//재고 수가 입력이 안되었다면..
				if(unitsInStock.isEmpty()){
					stock = 0;
				}else{
					stock = Long.valueOf(unitsInStock);
				}
			}else if(name.equals("condition")){
				condition = item.getString("UTF-8");
			}
		}else{//파일객체일 때
			//<input type="file" name="productImage" class="form-control" />
			fileFiledName = item.getFieldName();	//productImage
			fileName = item.getName();	//c:\\Users\\SEM-PC\\Pictures\\개똥이.jpg (클라이언트에 있는 이미지)=> 개똥이.jpg
			long fileSize = item.getSize();	//파일 크기
			
			//설계 => 복사될 위치 및 파일명 결합연산
			File file = new File(path + "/" + fileName);	//이미지를 복사할 서버 경로
			//복사 처리 수행
			item.write(file);
		}
	}
	
	
	ProductVO productVO = new ProductVO();
	productVO.setProductId(productId);
	productVO.setPname(pname);
	productVO.setUnitPrice(price);
	productVO.setDescription(description);
	productVO.setManufacturer(manufacturer);
	productVO.setCategory(category);
	productVO.setUnitsInStock(stock);
	productVO.setCondition(condition);
	productVO.setFilename(fileName);	//*******
	
// 	out.print("productVO : " + productVO);
	
	//싱글톤 객체로 생성
	ProductRepository dao = ProductRepository.getInstance();
	//새로운 상품 등록(ProductVO 타입의 파라미터를 
		//		ProductVO 타입(dto(data transport object), vo(value object))의 매개변수로 받음
	dao.addProduct(productVO);
	
	//List<ProductVO> getAllProducts()
	List<ProductVO> productVOList = dao.getAllProducts();
// 	out.print("<hr />");
// 	out.print("productVOList : " + productVOList);	
	
	//목록으로 이동
	response.sendRedirect("products.jsp");
%>









