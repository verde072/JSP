package kr.or.ddit.dao;

import java.util.ArrayList;
import java.util.List;

import kr.or.ddit.vo.ProductVO;

//상품데이터를 저장하고 있음 
//자바빈 아니고 일반 클래스 
public class ProductRepository {
	private List<ProductVO> listOfProducts = new ArrayList<ProductVO>();
	
	//싱글톤 객체
	private static ProductRepository instance= new ProductRepository();
//	private ProductRepository() {}
	public static ProductRepository getInstance() {return instance;}
	
	
	public ProductRepository() {
	
		//-----------휴대폰 등록 시작
		ProductVO phone =new ProductVO("P1234", "iPhone 6s", 800000);
		
		phone.setDescription("4.7-inch, 1334x750 Renian HD display");
		phone.setCategory("Smart Phone");
		phone.setManufacturer("Apple");
		phone.setUnitsInStock(1000);
		phone.setCondition("New");
		phone.setFilename("P1234.jpg");
		
		//-----------휴대폰 등록 끝
		
		//-----------노트북 등록 시작
		ProductVO notebook =new ProductVO("P1235", "LG PC 그램", 1500000);
		
		notebook.setDescription("13.3-inch, IPS LED display, 5rd Generation");
		notebook.setCategory("Notebook");
		notebook.setManufacturer("LG");
		notebook.setUnitsInStock(1000);
		notebook.setCondition("Refurbished");
		notebook.setFilename("P1235.jpg");
		
		//-----------휴대폰 등록 끝
		
		//-----------태블릿 등록 시작
		ProductVO tablet =new ProductVO("P1236", "Galaxy Tab S", 900000);
		
		tablet.setDescription("212.8*125.6*6.6m, Super AMOLED display");
		tablet.setCategory("Tablet");
		tablet.setManufacturer("Samsung");
		tablet.setUnitsInStock(1000);
		tablet.setCondition("Old");
		tablet.setFilename("P1236.jpg");
		//-----------휴대폰등록 끝
	
		listOfProducts.add(phone);
		listOfProducts.add(notebook);
		listOfProducts.add(tablet);
	}
	
	//select*from product 
	//productVO객체 리스트 타입의 변수 listOfProducts에 저장된 모든 상품 목록을 가져오는 메소드
	//상품목록
	public List<ProductVO> getAllProducts(){
		return listOfProducts;
	}
	
	//SELECT*FROM PRODUCT WHERE PRODUCT_ID='P1234';
	public ProductVO getProductById(String productId) {
		ProductVO productById=null;
		
		for(ProductVO productVO : listOfProducts) {
			System.out.println(productVO.getProductId()+" vs "+productId);
			
			if(productVO.getProductId().equals(productId)) {
				productById=productVO;
				//찾으면 반복문 종료 
				break;
			}
		}
		
		System.out.println("productById: "+productById);
		
		return productById;
	}
	
	//새로운 상품 등록(ProductVO 타입의 파라미터를 ProductVO 타입 (dto(data transport object),vo(value object))의 매개변수로 받음
	public void addProduct(ProductVO productVO) {
		//기존의 상품목록에 추가
		//List<ProductVO> listOfProducts
		listOfProducts.add(productVO);
		
	}

}
