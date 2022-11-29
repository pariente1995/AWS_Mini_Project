<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!-- 본인들이 맡은 페이지 스타일 -->
<style>
	#container { width: 1500px; margin: 0 auto;}
    /* 제품 리스트 */
    h1 { text-align: left;}
    /* 테이블 - 이미지, 상품정보 */
    #T1 { 
      width: 800px; height: 180px;
      border-collapse: collapse;
      margin-left: 150px;
      float: left;
    }
    .h { width: 150px; text-align: left;}
    .d { text-align: left;}

    /* 테이블 - 총 금액, 버튼2개 */
    #T2 {
      width: 400px; height: 180px;
      border-collapse: collapse;
      margin-right: 150px;
      float: left;
    }
    /* 총 금액 */
    #prddcTotalP { height: 60%; font-size: 30px;}
    /* 제품수정 버튼 */
    #removeBtn {
      border: 0;
      width: 150px; height: 60px;
      background-color: #0058A3;
      color: white;
      font-weight: bold;
      border-radius: 30px;
      margin-right: 20px;}
    /* 제품삭제 버튼 */
    #deleteBtn { 
      border: 0;
      width: 150px; height: 60px;
      background-color: #0058A3;
      color: white;
      font-weight: bold;
      border-radius: 30px;
    }
    hr {clear:both;}
</style>

<!-- 세혁님 디자인 페이지 -->
<jsp:include page="${pageContext.request.contextPath}/header.jsp"></jsp:include>

<!-- 각자 디자인한 UI -->
<div id="container">
    <h1>제품 리스트</h1>
    <br>
    <table id="T1">
      <tr>
        <th rowspan="4" width="170px" height="170px">제품 이미지</th>
        <th class="h">&emsp;제품번호</th>
        <td class="d" value="">402.499</td>
      </tr>
      <tr>
        <th class="h">&emsp;제품 상세번호</th>
        <td class="d" value="">61</td>
      </tr>
      <tr>
        <th class="h">&emsp;제품명</th>
        <td class="d" value="">STOCKHOLM 스톡홀름</td>
      </tr>
      <tr>
        <th class="h">&emsp;등록일자</th>
        <td class="d" value="">2022년 11월 23일</td>
      </tr>
    </table>

    <table id="T2">
      <tr>
        <th id="prddcTotalP" value="">\129,000</th>
      </tr>
      <tr>
        <th>
          <button id="removeBtn">제 품 수 정</button>
          <button id="deleteBtn">제 품 삭 제</button>
        </th>
      </tr>
    </table>
    &emsp;
    <hr>
  </div>

<!-- 세혁님 디자인 페이지 -->
<jsp:include page="${pageContext.request.contextPath}/footer.jsp"></jsp:include>

<!-- 각자 스크립트 작성 부분 -->
<script>
	$(function() {
		$("#removeBtn").click(function() {
			
		})		
	});
</script>