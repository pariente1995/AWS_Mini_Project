<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>제품 상세 정보 - SAGAJI </title>
<style>
  #container{
    /* 페이지 영역 */
    margin: 50px 20px 20px 50px;
    width: 1500px;
    border: 1px solid black;
    padding-left: 100px;
  }
  #mainimg{
    /* 메인 이미지 영역 */
    width: 500px; height: 450px;
    float: left;
    margin: 50px 70px 50px 10px;
    border: 0.5px solid gray;
  }
  #subimg{
    /* 옵션 이미지 영역 */
    border: 0.5px solid gray;
    margin: 5px 5px 5px 5px;
    width: 50px; height: 50px;

  }
  .p1{
    /* 제품 정보 영역 */
    margin: 80px;
    
  }
  .p2{
    /* 하단 제품 소개글 영역 */
    padding-left: 10px;
    width: 500px;
    clear: both;
  }
  #sub{
    /* 메뉴 이름 왼쪽 여백 */
    margin-left: 120px;
    
  }
  #btn{
    border-radius: 50px;
    width: 120px;
    height: 40px;
    border: 0px;
    background-color: #0058A3;
    color: white;
  }
</style>

<!-- 헤더 페이지 -->
<jsp:include page="${pageContext.request.contextPath}/header.jsp"></jsp:include>

<!-- 각자 디자인한 UI -->
  <div id="container">
      <img id="mainimg" src="img/main.PNG" > 
      <p class="p1">
        <h2 name="">제품 이름란</h2>
        <h3>제품 설명란</h3>
        <h2>제품 가격란</h2>
        <h2>옵션</h2>
        <h4>옵션 설정값 란</h4>
        <img id="subimg" src="img/sub1.PNG"> <img id="subimg" src="img/sub2.PNG"> <img id="subimg" src="img/sub3.PNG"><br>
        <br><br><button id="btn">구매하기</button>
      </p>


      <p class="p2">
        컴퓨터 프로그래밍에서 매개변수(영어: parameter 파라미터[*])란 변수의 특별한 한 종류로서, 함수 등과 같은 서브루틴[1]의 인풋으로 제공되는 여러 데이터 중 하나를 가리키기 위해 사용된다. 여기서 서브루틴의 인풋으로 제공되는 여러 데이터들을 전달인자(argument)라고 부른다. 보통 매개변수의 목록은 서브루틴의 정의 부분에 포함되며, 매번 서브루틴이 호출될 때마다 해당 호출에서 사용된 전달인자들을 각각에 해당하는 매개변수에 대입시켜 준다.
      </p>

    
  </div>
<!-- 푸터 페이지 -->
<jsp:include page="${pageContext.request.contextPath}/footer.jsp"></jsp:include>
    <script>
    
	  
    
        
    </script>
</body>
</html>