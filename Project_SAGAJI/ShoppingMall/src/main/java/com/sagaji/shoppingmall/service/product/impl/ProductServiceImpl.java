package com.sagaji.shoppingmall.service.product.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sagaji.shoppingmall.service.product.ProductService;

@Service
public class ProductServiceImpl implements ProductService {
	@Autowired
	private ProductDAO productDAO;
	
	@Override
	public List<Map<String, Object>> getCategoryProductList(int categoryCd) {
		return productDAO.getCategoryProductList(categoryCd);
	}
	
	@Override
	public Map<String, Object> getCategoryInfo(int categoryCd) {
		return productDAO.getCategoryInfo(categoryCd);
	}
	
	@Override
	public List<Map<String, Object>> getCategoryList() {
		return productDAO.getCategoryList();
	}
	
	@Override
	public List<Map<String, Object>> getPopularProductList() {
		return productDAO.getPopularProductList();
	}
	
	@Override
	public List<Map<String, Object>> getNewProductList() {
		return productDAO.getNewProductList();
	}
}
