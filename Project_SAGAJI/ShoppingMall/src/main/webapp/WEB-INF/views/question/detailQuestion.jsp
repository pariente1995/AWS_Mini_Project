<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="/JS/jquery-3.6.1.min.js"></script>
<!-- jstl이나 fmt를 쓴다면 작성해야 하는 부분 -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<style>
@import
	url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100&display=swap')
	;

#container {
	font-family: 'Noto Sans KR', sans-serif;
	width: 1500px;
	margin: 0 auto;
}

#b {
	width: 1100px;
	margin: 0 50px;
	position: relative;
}

#regdate {
	float: right;
	margin-right: 20px;
}
/* #id {float: left;} */
#questionRgstDate, #questionModiDate {
	height: 25px;
}

#questionTitle, #questionContent, #questionAnswer {
	width: 90%;
	border-width: 2px;
}

#file {
	width: 70%;
	border-width: 2px;
}

#questionTitle, #questionContent, #file {
	border-width: 2px;
	height: 25px;
}

#questionContent {
	height: 400px;
}

#questionAnswer {
	height: 200px;
}

#btn {
	display: flex;
	float: right;
}

#modifybtn {
	background-color: #0058A3;
	color: white;
	border-radius: 5px;
	border-style: none;
	font-size: 16px;
	height: 30px;
	float: right;
	margin-right: 20px;
}

#deletebtn, #listbtn {
	background-color: lightgray;
	border-radius: 5px;
	border-style: none;
	font-size: 16px;
	height: 30px;
	float: right;
	margin-right: 20px;
}

#wrapper {
	position: absolute;
	top: -50px;
	left: 727px;
}

#file_warrap{
	display: flex; 	
	align-items: center;
  margin-bottom: 40px;;
}


</style>
</head>


<body>


	<div id="container">

		<!-- 세혁님 디자인 페이지 -->
		<!-- header 부분 -->
		<jsp:include page="${pageContext.request.contextPath}/header.jsp"></jsp:include>


		<!--각자 디자인한 UI-->
		<h1>
			<b>&emsp; 문의사항 상세</b>
		</h1>

		<br>
		<br>

		<div id="b">
			<div id="wrapper">
				<b id="regdate">등록 일자&emsp;<input type="text" id="questionRgstDate" value="${question.questionRgstDate}"></b><br>
				<br> <b id="modifydate">수정 일자&emsp;<input type="text" id="questionModiDate"></b>
			</div>
			<b id="id">아이디&emsp;&emsp;&emsp;<input type="text" id="userId" value="${question.userId}"></b> <br>
			<br> <b>제목</b>&emsp;&emsp;&emsp;&ensp; <input type="text" id="questionTitle" value="${question.questionTitle}"><br>
			<br> <b>내용</b> &emsp;&emsp;&emsp;&ensp;<input type="text"	id="questionContent" value="${question.questionContent}"><br>
			<br> <b>답변내용</b>&ensp;&emsp; <input type="text" id="questionAnswer" value="${question.questionAnswer}"> <br>
			<br>
			<!-- 관리자가 아니면 작성불가-->

      <div id="file_warrap">
        <b>첨부파일</b>
       <input type="text" id="file">
       <input type="file" id="btnAtt" name="uploadFiles" multiple="multiple">
       </div>
 
			

			<div id="btn">
				<a href="#"><button id="modifybtn">수정하기</button></a> <a href="#"><button
						id="deletebtn">삭제하기</button></a> <a href="#"><button id="listbtn">목록</button></a>

			</div>
		</div>



		<!-- 세혁님 디자인 페이지 -->
		<!-- footer 부분 -->
		<jsp:include page="${pageContext.request.contextPath}/footer.jsp"></jsp:include>

		<!-- 담당 스크립트 작성 부분 -->
		<script>
			
		</script>

	</div>





</body>
</html>