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
	
	//제품저장
	public void insertProduct(Map<String,Object> map);
	
	//제품저장상세 ,  옵션 추가
	public void insertProductDetail(Map<String,Object> map);
	
	
	//제품 수정
	public void updateProduct(Map<String,Object> map);
	
	//제품 삭제
	public void useYnProduct(Map<String,Object> map);
}
