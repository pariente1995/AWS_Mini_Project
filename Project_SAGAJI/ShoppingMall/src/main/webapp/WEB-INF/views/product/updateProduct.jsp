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
    width: 1250px;
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
    float: left;
    margin-left: 350px;
    width: 100px;
    height: 40px;
    border: 0px;
    background-color: #0058A3;
    color: white;
  }
  #btn1{
    margin-left:100px;
    width: 100px;
    height: 40px;
    border: 0px;
    background-color: #0058A3;
    color: white;
  }
</style>
<%-- 헤더 페이지 --%>
<jsp:include page="${pageContext.request.contextPath }/header.jsp"></jsp:include>

<script src="${pageContext.request.contextPath }/js/jquery-3.6.1.min.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
</head>
<body>
    <div id="container">
    <form id="updateForm" name="updateForm" method="post">
	    <h1 style="margin-left: 10px;">제품 상세 수정</h1> <!-- ${categroyMap }  -->
	    <br>
	     <input type="hidden" name="prdctDetailNo" value="${categroyMap.PRDCT_DETAIL_NO }" />
	    <h2 id="sub">등록일 <input id="insert" type="text" value="${categroyMap.PRDCT_RGST_DATE }" style="margin-left: 40px; width: 200px; height: 23px" disabled></h2>
	    <h2 id="sub">수정일 <input id="insert"  type="text" value="${categroyMap.PRDCT_MODF_DATE }"  style="margin-left: 40px; width: 200px; height: 23px" disabled></h2>
	    <h2 id="sub">제품 번호 <input id="insert" name="prdctNo" type="text" value="${categroyMap.PRDCT_NO }" style="margin-left: 7px; width: 400px; height: 23px" readonly></h2>
	    <input type="hidden" name="prdctCategoryCd" value="${categroyMap.PRDCT_CATEGORY_CD }" />
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
	    <h2 id="sub">제품 이름 <input id="insert" name="prdctNm" type="text" value="${categroyMap.PRDCT_NM }" style="margin-left: 7px; width: 200px; height: 23px" ></h2> 
	    <h2 id="sub">제품 사이즈
	    <label>
	      <input type="radio" name="prdctSize" value="S" checked />
	      <span>S</span>
	    </label>
	    <label>
	      <input type="radio" name="prdctSize" value="M" style="margin-left: 39px;"/>
	      <span>M</span>
	    </label>
	    <label>
	      <input type="radio" name="prdctSize" value="L" style="margin-left: 30px;"/>
	      <span>L</span>
	    </label>
	    </h2>
	    <h2 id="sub" >제품 색상
	      <label style="margin-left: 23px;">
	        <input type="radio" name="prdctColor" value="A0001" <c:if test="${categroyMap.PRDCT_COLOR eq black}" > checked </c:if> />    
	        <span>블랙</span>
	      </label>
	      <label>
	        <input type="radio" name="prdctColor" value="A0002" <c:if test="${categroyMap.PRDCT_COLOR eq brown}" > checked </c:if> />
	        <span>브라운</span>
	      </label>
	      <label>
	        <input type="radio" name="prdctColor" value="A0003" <c:if test="${categroyMap.PRDCT_COLOR eq white}" > checked </c:if> />
	        <span>화이트</span>
	      </label>
	      </h2>
	    <h2 id="sub">제품 소재
	      <label style="margin-left: 23px;">
	        <input type="radio" name="prdctMaterial" value="B0001" checked />
	        <span>나무</span>
	      </label>
	      <label>
	        <input type="radio" name="prdctMaterial" value="B0002" />
	        <span>메탈</span>
	      </label>
	      <label>
	        <input type="radio" name="prdctMaterial" value="B0003" />
	        <span>페브릭</span>
	      </label>
	      </h2> 
	      <h2 id="sub">가격 <input id="insert" type="text" name="prdctPrice" value="${categroyMap.PRDCT_PRICE }" style="margin-left: 65px; width: 200px; height: 23px"></h2> 
	      <h2 id="sub">재고 <input id="insert" type="text" name="prdctRemain" value="${categroyMap.PRDCT_REMAIN }" style="margin-left: 65px; width: 200px; height: 23px"></h2>
	      <h2 id="sub" >상세 내용 <input id="insert" type="text" name="prdctInfo" value="${categroyMap.PRDCT_INFO }" style="margin-left: 7px; width: 500px; height: 80px"></h2> 
	      <h2 id="sub">첨부파일 <input id="insert" type="text" name="pdctphoto" style="margin-left: 17px; width: 300px; height: 23px">
	        <button style="height: 30px;">첨부파일</button>
	      </h2>
	      <br>
	      <input id="btn" type="button" value="수정하기" onclick="btn_click('update')"/>
  		  <input id="btn1" type="button" value="옵션추가" onclick="btn_click('insert')"/>
	    
	    <!--  <input id="btn1" type="submit" value="옵션추가" onclick='btn_click("insert");'>
		  <input id="btn" type="submit" value="수정하기" onclick='btn_click("update");'>
	        <button id="btn1" type="submit">옵션추가</button>
	      <button id="btn" type="submit">수정하기</button>-->
	      <br><br><br>
	   </form>
  </div>
    

 
<script>
     function btn_click(str){     
    	 
    	// var form = document.createElement("updateForm");
    	
        if(str=="insert"){                                 
        	$("#updateForm").attr("action","/product/insertProductDetail.do").submit();
            //javascript: form.action='/product/insertProduct.do';
        } else if(str=="update"){  
        	//$("#updateForm").action = "/product/updateProduct";     
        	//$("#updateForm").method = "post";
        	//$("#updateForm").submit();
        	
        	 $("#updateForm").attr("action","/product/updateProduct.do").submit();
           // javascript: form.action='/product/updateProduct.do';
        }  else {
            //...
        }
        
    } 
</script>

</body>

<%-- 푸터 페이지 --%>
<jsp:include page="${pageContext.request.contextPath }/footer.jsp"></jsp:include>
</html>