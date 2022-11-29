<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!-- 본인들이 맡은 페이지 스타일 -->
<style>
	#container { width: 1500px; margin: 0 auto;}
    h1 { text-align: left;}
    /* 내 주소로 보내기 체크박스 */
    #myAddr { text-align: right;}
    /* 테이블1 - 배송정보 */
    #T1 { 
      width: 700px; height: 180px;
      border-collapse: collapse;
      margin-left: 150px;
      float: left;
      margin-right: 100px;
    }
    /* th */
    .h { width:100px; text-align: right;}
    /* td */
    .d { text-align: left;}
    /* 결제방법 위 선 */
    #hr1 {
      height: 1.5px;
      background-color: black;
    }
    #orderInfo { width: 500px;}

    /* 테이블2 - 총 주문금액 */
    #T2 {
      width: 400px; height: 180px;
      border-collapse: collapse;
      margin-right: 150px;
      float: left;
    }
    /* 결제 버튼 위 선 */
    #hr2 {
      height: 2px;
      background-color: black;
    }
    /* 결제 버튼 */
    #payBtn {
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
    <h1>주문을 어디로 배송할까요?</h1>
    <table id="T1" >
      <tr>
        <th colspan="2" id="myAddr"><input type="checkbox" name="myAddr" value=""><label>내 주소로 보내기</label></th>
      </tr>
      <tr>
        <th><br></th>
      </tr>
      <tr>
        <th></th>
      </tr>
      <tr>
        <th class="h">이름&emsp;</th>
        <td class="d"><input type="text" id="orderInfo" name="name" value=""></td>
      </tr>
      <tr>
        <th class="h">주소&emsp;</th>
        <td class="d"><input type="text" id="orderInfo" name="addr1" value=""></td>
      </tr>
      <tr>
        <th class="h"></th>
        <td class="d"><input type="text" id="orderInfo" name="addr2" value=""></td>
      </tr>
      <tr>
        <th class="h">우편번호&emsp;</th>
        <td class="d"><input type="text" id="orderInfo" name="zipcd" value=""></td>
      </tr>
      <tr>
        <th class="h">이메일&emsp;</th>
        <td class="d"><input type="email" id="orderInfo" name="email" value=""></td>
      </tr>
      <tr>
        <th class="h">전화번호&emsp;</th>
        <td class="d"><input type="tel" id="orderInfo" name="tel" value=""></td>
      </tr>
      <tr>
        <td colspan="2"><hr id="hr1"></td>
      </tr>
      <tr>
        <th class="h"><h3>결제방법</h3></th>
      </tr>
      <tr>
        <th colspan="2">
          <label><input type="radio" name="payOpt" value=""><span>무통장입금</span></label>&emsp;&emsp;&emsp;
          <label><input type="radio" name="payOpt" value=""><span>카드결제</span></label>&emsp;&emsp;&emsp;
          <label><input type="radio" name="payOpt" value=""><span>카카오페이</span></label>&emsp;&emsp;&emsp;
          <label><input type="radio" name="payOpt" value=""><span>휴대폰결제</span></label>
        </th>
      </tr>
    </table>
    

    <table id="T2">
      <h3>주문내역</h3>
      <tr>
        <th>제품가격</th>
        <td value="prdcPrice">\24,900</td>
      </tr>
      <tr>
        <td colspan="2"><hr id="hr2"></td>
      </tr>
      <tr>
        <th>총 주문금액</th>
        <td value="prdcTotalPrice">\24,900</td>
      </tr>
      <tr>
        <td colspan="2"><button id="payBtn">결 제</button></td>
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