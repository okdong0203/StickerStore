package com.product.dao;
import java.util.ArrayList;

import com.product.dto.ProductDTO;


public class ProductDAO {
	private ArrayList<ProductDTO> listOfProducts = new ArrayList<ProductDTO>();//dto객체를 <>에 포함해서 ArrayList객체를 생성 
	private static ProductDAO instance = new ProductDAO();//dao부분을 필요로 하는 곳,어디든지 바로 사용할 수 있도록 설정
	
	public static ProductDAO getInstance() { // 메소드를 이용하면 dao객체의 참조변수를 얻을 수 있다.
		return instance;
	}
	
	
	 public ProductDAO() {
	     
	   }
	 
	 		   
}
