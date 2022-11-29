<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!-- 본인들이 맡은 페이지 스타일 -->
<style>
	#container { width: 1500px; margin: 0 auto;}
    h1 { text-align: left;}
    /* 전체제품 삭제 버튼 */
    #cartBtn {
      border: 0;
      width: 120px; height: 50px;
      border-radius: 30px;
      background-color: lightgray;
      font-weight: bold;
      margin-left: 730px;
      margin-right: 500px;
      margin-bottom: -10px;
    }

    /* 테이블1 - 장바구니 제품 */
    #T1 { 
      width: 700px; height: 180px;
      border-collapse: collapse;
      margin-left: 150px;
      float: left;
      margin-right: 100px;
    }
    /* th */
    .h { text-align: left;}
    /* td */
    .d { text-align: left;}
    /* 상품 이미지 */
    img { width: 170px; height: 170px;}
    /* 상품 수량 콤보박스 */
    #prdcCnt { text-align: left;}
    /* 제품 삭제 버튼 */
    #delBtn {
      border: 0;
      width: 60px; height: 30px;
      border-radius: 30px;
      background-color: lightgray;
    }

    /* 테이블2 - 총 주문금액 */
    #T2 {
      width: 400px; height: 180px;
      border-collapse: collapse;
      margin-right: 150px;
      float: left;
    }
    /* 주문하기 버튼 위 선 */
    #hr1 {
      height: 2px;
      background-color: black;
    }
    /* 주문하기 버튼 */
    #orderBtn {
      border: 0;
      width: 250px; height: 45px;
      background-color: #0058A3;
      color: white;
      font-weight: bold;
      border-radius: 30px;
      margin-left: 70px;
    }
</style>

<!-- 세혁님 디자인 페이지 -->
<jsp:include page="${pageContext.request.contextPath}/header.jsp"></jsp:include>

<!-- 각자 디자인한 UI -->
<div id="container">
    <h1>장바구니</h1>
    <button id="cartBtn">전체제품 삭제</button>
    <br><br>
    <table id="T1">
      <tr>
        <th rowspan="3" id="prdcImg"><img src="images/침대.png"></th>
        <th class="h">&emsp;제품이름</th>
        <td class="d" value="">RISBYN 리스뷘</td>
        <th>\24,900</th>
      </tr>
      <tr>
        <th class="h">&emsp;제품 설명</th>
        <td class="d" value="">펜던트전등갓, 양파 모양/화이트</td>
      </tr>
      <tr>
        <td class="d">&emsp;
          <select id="prdcCnt">
            <option value="">-- 수량 --</option>
            <option name="prdcCnt" value="1">1</option>
            <option name="prdcCnt" value="2">2</option>
            <option name="prdcCnt" value="3">3</option>
            <option name="prdcCnt" value="4">4</option>
            <option name="prdcCnt" value="5">5</option>
            <option name="prdcCnt" value="6">6</option>
            <option name="prdcCnt" value="7">7</option>
            <option name="prdcCnt" value="8">8</option>
            <option name="prdcCnt" value="9">9</option>
            <option name="prdcCnt" value="10">10</option>
          </select>
        </td>
        <td><button id="delBtn">삭제</button></td>
      </tr>
      <tr>
        <td colspan="4"><hr></td>
      </tr>
    </table>
    

    <table id="T2">
      <h3>주문내역</h3>
      <tr>
        <th>제품가격</th>
        <td value="">\24,900</td>
      </tr>
      <tr>
        <td colspan="2"><hr id="hr1"></td>
      </tr>
      <tr>
        <th>총 주문금액</th>
        <td value="">\24,900</td>
      </tr>
      <tr>
        <td colspan="2"><button id="orderBtn">주문하기</button></td>
      </tr>
    </table>
  </div>

<!-- 세혁님 디자인 페이지 -->
<jsp:include page="${pageContext.request.contextPath}/footer.jsp"></jsp:include>

<!-- 각자 스크립트 작성 부분 -->
<script>
	$(function() {
		
	});
</script>