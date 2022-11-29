package com.sagaji.shoppingmall.vo;

import java.sql.Date;

public class UserVO {
	
	/*
	CREATE TABLE T_SGJ_USER (
	USER_ID VARCHAR(30) PRIMARY KEY,
	USER_PW VARCHAR(45) NOT NULL,
	USER_NM VARCHAR(30) NOT NULL,
	USER_TEL VARCHAR(20) NOT NULL,
	USER_EMAIL VARCHAR(30) NOT NULL,
	USER_ADDR1 VARCHAR(200) NOT NULL,
	USER_ADDR2 VARCHAR(200) NOT NULL,
	USER_TYPE VARCHAR(5) NOT NULL DEFAULT 'USER',
	USER_RGST_DATE DATETIME NOT NULL DEFAULT NOW(),
	USER_MODF_DATE DATETIME NOT NULL DEFAULT NOW(),
	USER_USE_YN CHAR(1) NOT NULL DEFAULT 'Y'
);
	 * 
	 */
	
	private String USER_ID;
	private String USER_PW;
	private String USER_NM;
	private String USER_TEL;
	private String USER_EMAIL;
	private String USER_ADDR1;
	private String USER_ADDR2;
	private String USER_TYPE;
	private Date USER_RGST_DATE;
	private Date USER_MODF_DATE;
	private String USER_USE_YN;
	public String getUSER_ID() {
		return USER_ID;
	}
	public void setUSER_ID(String uSER_ID) {
		USER_ID = uSER_ID;
	}
	public String getUSER_PW() {
		return USER_PW;
	}
	public void setUSER_PW(String uSER_PW) {
		USER_PW = uSER_PW;
	}
	public String getUSER_NM() {
		return USER_NM;
	}
	public void setUSER_NM(String uSER_NM) {
		USER_NM = uSER_NM;
	}
	public String getUSER_TEL() {
		return USER_TEL;
	}
	public void setUSER_TEL(String uSER_TEL) {
		USER_TEL = uSER_TEL;
	}
	public String getUSER_EMAIL() {
		return USER_EMAIL;
	}
	public void setUSER_EMAIL(String uSER_EMAIL) {
		USER_EMAIL = uSER_EMAIL;
	}
	public String getUSER_ADDR1() {
		return USER_ADDR1;
	}
	public void setUSER_ADDR1(String uSER_ADDR1) {
		USER_ADDR1 = uSER_ADDR1;
	}
	public String getUSER_ADDR2() {
		return USER_ADDR2;
	}
	public void setUSER_ADDR2(String uSER_ADDR2) {
		USER_ADDR2 = uSER_ADDR2;
	}
	public String getUSER_TYPE() {
		return USER_TYPE;
	}
	public void setUSER_TYPE(String uSER_TYPE) {
		USER_TYPE = uSER_TYPE;
	}
	public Date getUSER_RGST_DATE() {
		return USER_RGST_DATE;
	}
	public void setUSER_RGST_DATE(Date uSER_RGST_DATE) {
		USER_RGST_DATE = uSER_RGST_DATE;
	}
	public Date getUSER_MODF_DATE() {
		return USER_MODF_DATE;
	}
	public void setUSER_MODF_DATE(Date uSER_MODF_DATE) {
		USER_MODF_DATE = uSER_MODF_DATE;
	}
	public String getUSER_USE_YN() {
		return USER_USE_YN;
	}
	public void setUSER_USE_YN(String uSER_USE_YN) {
		USER_USE_YN = uSER_USE_YN;
	}
	
	@Override
	public String toString() {
		return "UserVO [USER_ID=" + USER_ID + ", USER_PW=" + USER_PW + ", USER_NM=" + USER_NM + ", USER_TEL=" + USER_TEL
				+ ", USER_EMAIL=" + USER_EMAIL + ", USER_ADDR1=" + USER_ADDR1 + ", USER_ADDR2=" + USER_ADDR2
				+ ", USER_TYPE=" + USER_TYPE + ", USER_RGST_DATE=" + USER_RGST_DATE + ", USER_MODF_DATE="
				+ USER_MODF_DATE + ", USER_USE_YN=" + USER_USE_YN + "]";
	}
	
	
	
	
}
