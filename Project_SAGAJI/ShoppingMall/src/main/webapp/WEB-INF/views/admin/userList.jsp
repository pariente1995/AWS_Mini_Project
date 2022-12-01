<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원관리 - SAGAJI</title>
<style>
    @import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;700&display=swap');
    body {
        font-family: 'Noto Sans KR', sans-serif;
        box-sizing: border-box;
        margin: 0;
    }

    /* ========== 영역 ========== */
    .form-wrapper {
        line-height: 1.5;
        scroll-behavior: smooth;
        box-sizing: inherit;
        outline: none;
    }
     /* 오른쪽사이드 */
     .section2 {
        display: flex;
        min-height: 100vh;
        padding: 0 80px;
        background-color: white;
        scroll-behavior: smooth;
    }


    /* ========== section2 - 오른쪽사이드 ========== */
    .content {
        width: 1000px;
        margin: auto;
    }
    /* 검색창 */
    .search {
        display: flex;
        align-items: center;
        width: auto;
        margin: 20px auto;
    }

    option { text-align: center;}
    /* 검색버튼 */
    .btn4 {
        width:100px;
        min-height: 2rem;
        border: none;
        border-radius: 10px;
        background: #0058A3;;
        color: white;
        font-size: 1em;
        font-weight: 700;
        cursor: pointer;
    }
    .btn_inner {
        border-radius: 10px;
        justify-content: center;
    
    }
    option {
        height: 100px;
    }

    /* 테이블 */
    table {
    width: 100%;
    margin:  auto;
    border-top: 1px solid #444444;
    border-collapse: collapse;
    text-align: center;
    }
    td {
        border-bottom: 1px solid #444444;
        padding: 10px;
    }
    tr {height: 40px;}

    /* 정보수정 버튼 */
    .btn5 {
        width:70px;
        min-height: 2rem;
        border: none;
        border-radius: 10px;
        background: #0058A3;;
        color: white;
        font-size: 0.7em;
        font-weight: 400;
        cursor: pointer;
    }
    span {
        display: flex;
    }

    
        
</style>
<script src="${pageContext.request.contextPath }/js/jquery-3.6.1.min.js"></script>
</head>
<body>
<!-- header 페이지 -->
    <jsp:include page="${pageContext.request.contextPath}/header.jsp"></jsp:include>
    
<!-- my_info 페이지 -->

    <div class="form-wrapper">
        <!-- ★action 수정하기 -->
        <form id="" action="/user/login.do" method="post">

            <!-- ========== 오른쪽사이드 ========== -->
            <div class="section2">
                <div class="content">
                    
                    <h1 style="font-size: 3em;">회원관리</h1>
                    <div class="search">
                        <select name="searchCondition" style="width: 100px; height: 2.3em; border-radius: 10px;">
                            <option value="이름">이름</option>
                            <option value="전화변호">전화번호</option>
                        </select>&ensp;
                        <input type="text" name="searchKeyword" value="" style="width: 500px; height: 2em; border-radius: 10px;">&ensp;
                        <button type="submit" class="btn4" id="btSearch">
                        <span class="btn_inner">검색</span>
                        </button>
                    </div>
                    
                    <table>
                        <tr style="background-color:rgb(234, 234, 234);">
                            <td width="10%">번호</td>
                            <td width="15%">이름</td>
                            <td width="15%">아이디</td>
                            <td width="15%">권한</td>
                            <td width="15%">상태</td>
                            <td width="15%">가입일</td>
                            <td width="15%">회원관리</td>
                        </tr>
            
                        <tr>
                            <td>1</td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td style="text-align: center;">
                                <span>
                                    <button type="submit" class="btn5" id="btSearch">
                                        <span class="btn_inner">정보수정</span>
                                    </button>
                                    <a href="#" id="settiong"><img src="image/setting.png" style="height: 30px;"></a>
                                </span>
                            </td>
                        </tr>
            
                        <tr>
                            <td>2</td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                    </table>
                </div>
            </div>
        </form>
    </div>
</body>
</html>