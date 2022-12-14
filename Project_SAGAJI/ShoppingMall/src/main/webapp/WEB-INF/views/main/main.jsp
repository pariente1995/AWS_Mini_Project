<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- jstl --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- fmt --%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<style>
   #main-page-wrapper {
       margin-left: 90px;
       margin-right: 50px;
       padding: 10px 50px;
   }

   .main-prd-title {
       font-size: 30px;
       font-weight: bold;
   }

   .main-prd {
       width: 100%;
       position: relative;
       margin: 50px auto;
       overflow: hidden;   
       white-space: nowrap;
       cursor: pointer;
   }

   .main-prd, #top-prd {
       height: 400px;
   }

   .main-prd, #new-prd {
       height: 600px;
   }

   #top-prd .main-prd-img {
       width: 250px;
       height: 300px;
   }

   #new-prd .main-prd-img {
       width: 450px;
       height: 500px;
   }

   .main-prd-info {
       display: inline-block;
       overflow: auto;
       padding-right: 45px;
   }

   .prd-nm {
       font-size: 20px;
   }

   .prd-size {
       font-size: 12px;
   }

   .main-prd-disc p {
       margin-block-start: 0.2em;
       margin-block-end: 0.2em;
   }

   .prd-heart-img {
       width: 20px;
       height: 20px;
       margin-right: 10px;
       margin-bottom: 3px;
       cursor: pointer;
   }

   .prd-cart-img {
       width: 30px;
       height: 30px;
       cursor: pointer;
   }

   .main-prd-disc-wrapper .main-prd-disc-amount {
     float: left;
   }

   .main-prd-disc-wrapper .main-prd-disc-cart {
     float: right;
   }

   .main-prd-disc-amount, .main-prd-disc-cart {
       display: inline-block;
   }

   .new-prd-controller #prev {
       position: absolute;
       top: 50%;
   }

   .new-prd-controller #next {
       position: absolute;
       top: 50%;
       left: 96%;
   }

   .prd-slide-img {
       width: 50px;
       height: 50px;
   }
   
   #main-new-wrapper {
   	   height: 50px;
   	   display: flex;
   	   align-items: center;
   }
   
   #main-new-img {
   	   width: 45px;
   	   height: 45px;
	   margin-left: 10px;
   	   padding-top: 5px;
   }
</style>

<%-- ?????? ????????? --%>
<jsp:include page="${pageContext.request.contextPath }/header.jsp"></jsp:include>

<%-- ?????? ????????? ?????? --%>
<div id="main-page-wrapper">
  <%-- ???????????? --%>
  <div class="main-prd-wrapper">
    <div class="main-prd-title" id="main-popular">
      <p>???????????? TOP5</p>
    </div>
    <div class="main-prd" id="top-prd">
    	<c:forEach items="${popularProductList}" var="pop">
    		<div class="main-prd-info" id="top-sub">
    			<div id="imgTopArea">
    				<img src="${pageContext.request.contextPath}/images/${pop.prdctImageNm}${pop.prdctImageType}" 
		        	data-imgnm="${pop.prdctImageNm}" data-ext="${pop.prdctImageType}" data-prdctno="${pop.prdctNo}" data-prdctdetailno="${pop.prdctDetailNo}"  class="main-prd-img" />
    			</div>
		        <div class="main-prd-disc">
		          <p class="prd-nm">${pop.prdctNm}</p>
		          <p class="prd-size">${pop.prdctSize}</p>
		          <div class="main-prd-disc-wrapper">
		            <div class="main-prd-disc-amount">
		                <p>???<fmt:formatNumber value="${pop.prdctPrice}" pattern="#,###"/></p>
		            </div>
		            <div class="main-prd-disc-cart">
		              <img src="${pageContext.request.contextPath}/images/heart-empty.png" class="prd-heart-img">
		              <img src="${pageContext.request.contextPath}/images/cart.png" class="prd-cart-img" onclick="insertCart('${pop.prdctNo}', '${pop.prdctDetailNo }')">
		            </div>
		          </div>
		        </div>
	    	</div>
    	</c:forEach>
    </div>
  </div>


  <%-- ????????? --%>
  <div class="main-prd-wrapper">
      <div class="main-prd-title" id="main-new">
      	<div id="main-new-wrapper">
      		<p>?????????</p>
      		<img src="${pageContext.request.contextPath}/images/new.png" id="main-new-img">
      	</div>
      </div>
      <div class="main-prd" id="new-prd">
          <div id="new-prd-slide">
          	<c:forEach items="${newProductList}" var="newList">
              <div class="main-prd-info" id="new_sub">
                  <div id="imgNewArea">
                  	<img src="${pageContext.request.contextPath}/images/${newList.prdctImageNm}${newList.prdctImageType}" 
                  	data-imgnm="${newList.prdctImageNm}" data-ext="${newList.prdctImageType}" data-prdctno="${newList.prdctNo}" data-prdctdetailno="${newList.prdctDetailNo}" class="main-prd-img">
                  </div>
                  
                  <div class="main-prd-disc">
                      <p class="prd-nm">${newList.prdctNm}</p>
                      <p class="prd-size">${newList.prdctSize}</p>
                      <div class="main-prd-disc-wrapper">
                          <div class="main-prd-disc-amount">
                              <p>???<fmt:formatNumber value="${newList.prdctPrice}" pattern="#,###"/></p>
                          </div>
                          <div class="main-prd-disc-cart">
                              <img src="${pageContext.request.contextPath}/images/heart-empty.png" class="prd-heart-img">
                              <img src="${pageContext.request.contextPath}/images/cart.png" class="prd-cart-img" onclick="insertCart('${newList.prdctNo}', '${newList.prdctDetailNo }')">
                          </div>
                      </div>
                  </div>
              </div>
              </c:forEach>
          </div>
          <%-- ???????????? --%>
          <p class="new-prd-controller">
              <span id="prev" style="display: none;"><img src="${pageContext.request.contextPath}/images/slide-prev.png" class="prd-slide-img"></span>  
              <span id="next" style="display: none;"><img src="${pageContext.request.contextPath}/images/slide-next.png" class="prd-slide-img"></span>
          </p>
      </div>
  </div>
</div>
<%-- ?????? ????????? ?????? --%>

<%-- ?????? ????????? ?????? ???????????? --%>
<script>
	$(function() {
	    // ????????? ??????????????????
	    const slides = document.querySelector("#new-prd"); //?????? ???????????? ????????????
	    const slideImg = document.querySelectorAll("#new-prd .main-prd-info"); //?????? ???????????????
	    let currentIdx = 0; // ?????? ???????????? index
	    const slideCount = slideImg.length; // ???????????? ??????
	    const prev = document.querySelector(".new-prd-controller #prev"); //?????? ??????
	    const next = document.querySelector(".new-prd-controller #next"); //?????? ??????
	    var prevDisplay = "none";
	    var nextDisplay = "block";
		
	    prev.addEventListener("click", function() {
	
	        if(currentIdx > 0){
	            currentIdx--;
	            $("#new-prd .main-prd-info").eq(currentIdx).css("display","inline-block");
	        }
	
	        // ??? ????????? ?????? ?????? ?????? ????????????
	        if(currentIdx == 0){
	            prevDisplay = "none";
	        }
	        nextDisplay = "block";
	        next.style.display = nextDisplay;
	        prev.style.display = prevDisplay;
	    });
	
	    next.addEventListener("click", function() {
	        if (currentIdx <= slideCount - 4) {
	            $("#new-prd .main-prd-info").eq(currentIdx).css("display", "none");
	            currentIdx++;
	        }
	        prevDisplay = "block";
	        next.style.display = nextDisplay;
	        prev.style.display = prevDisplay;
	
	        // ????????? ????????? ?????? ?????? ?????? ????????????
	        if(currentIdx == slideCount - 4) {
	            nextDisplay = "none";
	        }
	    });
	
	    // ???????????? ?????? hover ??????
	    $("#new-prd").hover(function() {
	        // hover ???
	        next.style.display = nextDisplay;
	        prev.style.display = prevDisplay;
	    }, function() {
	        // hover ?????? ???
	        next.style.display = "none";
	        prev.style.display = "none";
	    });
	
	    // ????????? hover ??????
	    // ????????? hover ???, ????????????'-hover'.????????? ?????? ??????
	    // ????????? hover ?????? ???, ????????????.????????? ?????? ??????
	    $(".main-prd-img").hover(function() {
	        $(this).attr("src", "${pageContext.request.contextPath}/images/" + $(this).data("imgnm") + "-hover" + $(this).data("ext"));
	    }, function() {
	        $(this).attr("src", "${pageContext.request.contextPath}/images/" + $(this).data("imgnm") + $(this).data("ext"));
	    });
	
	    // ?????? ????????? ??????
	    $(".prd-heart-img").on("click", function() {
	        // ????????? ???????????? ??????
	        if($(this).attr("src").endsWith("empty.png")){
	            // ??? ????????????
	            $(this).attr("src", "${pageContext.request.contextPath}/images/heart-fill.png");
	        } else {
	            // ??? ????????????
	            $(this).attr("src", "${pageContext.request.contextPath}/images/heart-empty.png");
	        }
	    });
	
	    // ???????????? ??????
	    /* $(".prd-cart-img").on("click", function(){
			$.ajax({
				url: "/cart/insertCart.do",
				type: "post",
				data: {
					prdctNo: 
				}
			});
	    }); */
	
	    // ?????? ?????? ??????
	    $(".main-prd-info").on("click",function() {
	
	    });
	    
	    $("div#top-sub #imgTopArea img").on("click",function() {
	    	var sPrdctNo = $(this).data("prdctno");
	    	var sPrdctDetailNo = $(this).data("prdctdetailno");
	    	
	    	location.href = "/product/getProductInfo.do?prdctNo="+sPrdctNo+"&prdctDetailNo="+sPrdctDetailNo; 
			
	    });
	    
	    // ????????? ?????? ??????
	    $(".main-prd-title").on("click",function() {
	
	    });
	    
	    $("div#new_sub #imgNewArea img").on("click",function() {
	    	var sPrdctNo = $(this).data("prdctno");
	    	var sPrdctDetailNo = $(this).data("prdctdetailno");
	    	
	    	location.href = "/product/getProductInfo.do?prdctNo="+sPrdctNo+"&prdctDetailNo="+sPrdctDetailNo; 
			
	    });
	    
	    
	    
	});
	
	function insertCart(prdctNo, prdctDetailNo) {
		console.log('111111');
    	//????????? ??????
    	//????????? ?????? ????????? ?????????????????????
    	const loginUserId = '${loginUser.userId}';
    	//if(loginUserId != null && loginUserId != '') => ajax ??????
    	//else => window.location.href = "/user/login.do";
    	if(loginUserId != null && loginUserId != '') {
    		console.log(loginUserId);
    		$.ajax({
    			url: "/cart/insertCart.do",
    			type: "post",
    			data: {
    				prdctNo: prdctNo,
    				prdctDetailNo: prdctDetailNo
    			},
    			success: function(obj) {
    				if(obj == 1) {
    					alert("??????????????? ??????????????????.");
    				} else {
    					alert("???????????? ????????? ??????????????????. ??????????????? ??????????????????.");
    				}
    			},
    			error: function(e) {
    				console.log(e);
    			}
    		});
    	} else {
    		window.location.href = "/user/login.do";
    		
    	}
    	
    	/* $.ajax({
			url: "/cart/insertCart.do",
			type: "post",
			data: {
				prdctNo: prdctNo,
				prdctDetailNo: prdctDetailNo
			},
			success: function(obj) {
				if(obj == 1) {
					alert("??????????????? ??????????????????.");
				} else {
					alert("???????????? ????????? ??????????????????. ??????????????? ??????????????????.");
				}
			},
			error: function(e) {
				console.log(e);
			}
		}); */
	}
</script>

<%-- ?????? ????????? --%>
<jsp:include page="${pageContext.request.contextPath }/footer.jsp"></jsp:include>