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
}