package com.sagaji.shoppingmall.vo;

import java.sql.Date;

public class WishVO {
	private String userId;
	private String prdcNo;
	private int prdcDetailNo;
	private Date wishRgstDate;
	
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getPrdcNo() {
		return prdcNo;
	}
	public void setPrdcNo(String prdcNo) {
		this.prdcNo = prdcNo;
	}
	public int getPrdcDetailNo() {
		return prdcDetailNo;
	}
	public void setPrdcDetailNo(int prdcDetailNo) {
		this.prdcDetailNo = prdcDetailNo;
	}
	public Date getWishRgstDate() {
		return wishRgstDate;
	}
	public void setWishRgstDate(Date wishRgstDate) {
		this.wishRgstDate = wishRgstDate;
	}
	
	@Override
	public String toString() {
		return "WishVO [userId=" + userId + ", prdcNo=" + prdcNo + ", prdcDetailNo=" + prdcDetailNo + ", wishRgstDate="
				+ wishRgstDate + "]";
	}
	
}
