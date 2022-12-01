<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>신규 제품 등록 - SAGAJI </title>
<style>
    @import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;700&display=swap');
    body {
        font-family: 'Noto Sans KR', sans-serif;
        box-sizing: border-box;
        margin: 0;
    }

    /* ========== 영역 ========== */
      #container{
    /* 페이지 영역 */
    margin: 50px 20px 20px 50px;
    width: 1500px;
    border: 1px solid black;
    padding-left: 200px;
  }
  #sub{
    /* 메뉴 이름 왼쪽 여백 */
    margin-left: 120px;
  }
  #prdct{
    /* 드롭다운 메뉴 영역 */
    margin-left: 7px;
    width: 250px;
    height: 28px;
  }
  #btn{
    float: right;
    margin-right: 650px;
    width: 100px;
    height: 40px;
    border: 0px;
    background-color: #0058A3;
    color: white;
  }
</style>
<script src="${pageContext.request.contextPath }/js/jquery-3.6.1.min.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
</head>
<body>
    <div id="container">
    <h1 style="margin-left: 10px;">제품 상세 수정</h1> <!-- ${categroyMap }  -->
    <br>
    
    <h2 id="sub">등록일 <input id="insert" name="regdate" type="text" value="${categroyMap.PRDCT_RGST_DATE }" style="margin-left: 40px; width: 200px; height: 23px" disabled></h2>
    <h2 id="sub">수정일 <input id="insert" name="updatedate" type="text" value="${categroyMap.PRDCT_MODF_DATE }"  style="margin-left: 40px; width: 200px; height: 23px" disabled></h2>
    <h2 id="sub">제품 번호 <input id="insert" type="text" value="${categroyMap.PRDCT_NO }" style="margin-left: 7px; width: 400px; height: 23px" disabled></h2>
    <!-- <div class="dropdown">    
      <h2 id="sub">제품 목록
          <select id="prdct" >
            <option value="none" hidden>제품 카테고리를 선택하세요.</option>
            <option value="korean">옷장</option>
            <option value="english">테이블</option>
            <option value="chinese">침대</option>
            <option value="spanish">가구</option>
            <option value="spanish">소파</option>
          </select>
      </h2>
    </div> -->
    <h2 id="sub">제품 이름 <input id="insert" type="text" value="${categroyMap.PRDCT_NM }" style="margin-left: 7px; width: 200px; height: 23px" ></h2> 
    <h2 id="sub">제품 사이즈
    <label>
      <input type="radio" name="size" value="S" checked />
      <span>S</span>
    </label>
    <label>
      <input type="radio" name="size" value="M" style="margin-left: 39px;"/>
      <span>M</span>
    </label>
    <label>
      <input type="radio" name="size" value="L" style="margin-left: 30px;"/>
      <span>L</span>
    </label>
    </h2>
    <h2 id="sub" >제품 색상
      <label style="margin-left: 23px;">
        <input type="radio" name="color" value="red" <c:if test="${categroyMap.PRDCT_COLOR eq red}" > checked </c:if> />    
        <span>빨강</span>
      </label>
      <label>
        <input type="radio" name="color" value="blue" <c:if test="${categroyMap.PRDCT_COLOR eq blue}" > checked </c:if> />
        <span>파랑</span>
      </label>
      <label>
        <input type="radio" name="color" value="green" <c:if test="${categroyMap.PRDCT_COLOR eq green}" > checked </c:if> />
        <span>초록</span>
      </label>
      </h2>
    <h2 id="sub">제품 소재
      <label style="margin-left: 23px;">
        <input type="radio" name="material" value="tree" checked />
        <span>나무</span>
      </label>
      <label>
        <input type="radio" name="material" value="metal" />
        <span>메탈</span>
      </label>
      <label>
        <input type="radio" name="material" value="fabric" />
        <span>페브릭</span>
      </label>
      </h2> 
      <h2 id="sub">가격 <input id="insert" type="text" name="price" value="${categroyMap.PRDCT_PRICE }" style="margin-left: 65px; width: 200px; height: 23px"></h2> 
      <h2 id="sub">재고 <input id="insert" type="text" name="prdctRemain" value="${categroyMap.PRDTC_REMAIN }" style="margin-left: 65px; width: 200px; height: 23px"></h2>
      <h2 id="sub" >상세 내용 <input id="insert" type="text" name="pdcinfo" value="${categroyMap.PRDTC_INFO }" style="margin-left: 7px; width: 500px; height: 80px"></h2> 
      <h2 id="sub">첨부파일 <input id="insert" type="text" name="pdcphoto" style="margin-left: 17px; width: 300px; height: 23px">
        <button style="height: 30px;">첨부파일</button>
      </h2>
      <br>
      <button id="btn">수정하기</button>
      <br><br><br>
  </div>
    
    <script>
    
	  
    
        
    </script>
</body>
</html>