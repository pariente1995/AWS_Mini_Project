package com.sagaji.shoppingmall.service.product.impl;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ProductDAO {
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public List<Map<String, Object>> getCategoryProductList(int categoryCd) {
		return mybatis.selectList("ProductDAO.getCategoryProductList", categoryCd);
	}
	
	public Map<String, Object> getCategoryInfo(int categoryCd) {
		return mybatis.selectOne("ProductDAO.getCategoryInfo", categoryCd);
	}
	
	public List<Map<String, Object>> getCategoryList() {
		return mybatis.selectList("ProductDAO.getCategoryList");
	}
	
	public List<Map<String, Object>> getPopularProductList() {
		return mybatis.selectList("ProductDAO.getPopularProductList");
	}
	
	public List<Map<String, Object>> getNewProductList() {
		return mybatis.selectList("ProductDAO.getNewProductList");
	}
}