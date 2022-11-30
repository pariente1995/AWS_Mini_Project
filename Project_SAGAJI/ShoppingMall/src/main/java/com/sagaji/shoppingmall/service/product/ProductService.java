package com.sagaji.shoppingmall.service.product;

import java.util.List;
import java.util.Map;

public interface ProductService {
	// 카테고리에 해당하는 제품 리스트 조회
	List<Map<String, Object>> getCategoryProductList(int categoryCd);
	
	// 카테고리 정보 조회
	Map<String, Object> getCategoryInfo(int categoryCd);
	
	// 카테고리 리스트 조회
	List<Map<String, Object>> getCategoryList();
	
	// 인기제품 TOP5 조회
	List<Map<String, Object>> getPopularProductList();
	
	// 신제품 조회
	List<Map<String, Object>> getNewProductList();
}
