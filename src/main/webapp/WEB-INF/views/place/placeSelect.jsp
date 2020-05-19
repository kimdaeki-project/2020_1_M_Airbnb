<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>${vo.placeName}</title>
	
	<!-- 화면 css -->
	<link rel="stylesheet" type="text/css" href="../resources/css/selectHeaderStyle.css">
	<link rel="stylesheet" type="text/css" href="../resources/css/placeSelect.css">
	<link rel="stylesheet" type="text/css"  href="../resources/css/listFooter.css"> 
	<!-- contents부분 template-->
	<meta name="viewport" content="width=device-width, initial-scale=1">	
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
 	<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
 	<!-- fullcalendar css-->
 	<link rel="stylesheet" type="text/css" href='../resources/static/fullcalendar/packages/core/main.css' />
	<link rel="stylesheet" type="text/css" href='../resources/static/fullcalendar/packages/daygrid/main.css' />
	<!-- jquery -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	
	<style type="text/css">
		footer{
			padding: 0px 80px 80px 80px;
		}
		body,h1,h2,h3,h4,h5,h6 {
			font-family: "Raleway", Arial, Helvetica, sans-serif;
			color: rgb(72, 72, 72);
		}
		.mySlides {
			display: none
		}
		.w3-container{
			padding: 0;
		}
	</style>
</head>
<body>
	<!-- Header start -->
	<c:import url="../jsp/selectHeader.jsp"></c:import>
	<!-- Header End -->

	<!-- Main Start -->
	<main id="mainWrap">
		<!-- 1. 위쪽 사진 -->
		<div id="picWrap">
			<div id="pics">
				<div id="pic1">
					<img  src="https://a0.muscache.com/im/pictures/e1295260-5ce4-496b-84f2-a90ae2612811.jpg?aki_policy=xx_large"height="712.5" width="951">
				</div>
				<div class="pic2">
					<div class="pic">
						<img src="https://a0.muscache.com/im/pictures/7436dc02-1515-44e8-80d4-64ab18d657c3.jpg?aki_policy=large" height="355.5" width="474">
					</div>
					<div class="pic">
						<img  src="https://a0.muscache.com/im/pictures/e0085908-7090-41c6-80d5-9337740b8126.jpg?aki_policy=large" height="355.5" width="474">
					</div>
				</div>
				<div class="pic2">
					<div class="pic">
						<img src="https://a0.muscache.com/im/pictures/47f57809-8ce1-47f6-800c-6a7ec5a75eaa.jpg?aki_policy=large" height="355.5" width="474">
					</div>
					<div class="pic">
						<img src="https://a0.muscache.com/im/pictures/83a03dac-eda7-482a-a218-086f7a1270c6.jpg?aki_policy=large"  height="355.5" width="474">
					</div>
				</div>
			</div>
			<div id="btnTop">
				<button class="picBtn"> 공유하기 </button>
				<button class="picBtn"> 저장 </button>
			</div>
			<div id="btnBtm">
				<button class="picBtn"> 사진 보기 </button>
			</div>
		</div>
		<!-- 2. 아래쪽 설명/예약 -->
		<div id="descWrap">
			<!-- 2-1. 왼쪽 설명 파트-->
			<div id="desc">	
					  <div id="desc_title">
			  	<div id="titLeft">
			  		<div id="mainTit">
			  			${vo.placeName}
			  		</div>
					<div id="subTit">
						<a href="">${vo.placeLocation}</a>
					</div>
			  	</div>
			  	
				<div id="titRight">
					<div id="hostPic">
						<img src="https://a0.muscache.com/im/pictures/user/c7afacd0-a5ef-469d-bf31-87e4f81e3940.jpg?aki_policy=profile_x_medium" height="64" width="64">
					</div>
					<div id="hostName">
						${vo.hostNum}
					</div>
				</div>
			  </div>
			   
			  <div class="w3-container">
			    <hr>
			    <h4><strong>The space</strong></h4>
			    <div class="w3-row w3-large">
			      <div class="w3-col s6">
			        <p><i class="fa fa-fw fa-male"></i> Max people: ${vo.placeMaxGuest}</p>
			        
			        <p><i class="fa fa-fw fa-bath"></i> Bathrooms: ${vo.bathroom}</p>
			        <p><i class="fa fa-fw fa-bed"></i> Bed: ${vo.bed}</p>
			      </div>
			      <div class="w3-col s6">
			        <p><i class="fa fa-fw fa-clock-o"></i> Check In: After ${vo.checkIn}:00</p>
			        <p><i class="fa fa-fw fa-clock-o"></i> Check Out: ${vo.checkOut}:00</p>
			      </div>
			    </div>
			    <hr>
			    
			    <h4><strong>Amenities</strong></h4>
			    <div class="w3-row w3-large">
			      <div class="w3-col s6">
			        <p><i class="fa fa-fw fa-shower"></i> Shower</p>
			        <p><i class="fa fa-fw fa-wifi"></i> WiFi</p>
			        <p><i class="fa fa-fw fa-tv"></i> TV</p>
			      </div>
			      <div class="w3-col s6">
			        <p><i class="fa fa-fw fa-cutlery"></i> Kitchen</p>
			        <p><i class="fa fa-fw fa-thermometer"></i> Heating</p>
			        <p><i class="fa fa-fw fa-wheelchair"></i> Accessible</p>
			      </div>
			    </div>
			    <hr>
			    
			    <h4><strong>호스트의 숙소 소개</strong></h4>
			    <p>${vo.placeDesc}</p>
			    <p style="margin-top:10px;">We accept: <i class="fa fa-credit-card w3-large"></i> <i class="fa fa-cc-mastercard w3-large"></i> <i class="fa fa-cc-amex w3-large"></i> <i class="fa fa-cc-cc-visa w3-large"></i><i class="fa fa-cc-paypal w3-large"></i></p>
			  
			  </div>
			  <hr>
			  
			  <!-- 예약 가능 여부 -->
			   <h4><strong>예약 가능 여부</strong></h4>
			    <div id="calendar"><!-- 달력 --></div>
			    <hr>
			  
			  
			  <!-- Review -->
				<h4><strong>후기</strong></h4>	
			    <div class="review">	    
			    	<div class="review_rating">
			    		<div class="review_rating_1"> 
			    			<div style="width:18px; height:25px; line-height:20px;">
			    			<img style="width:15px; height:12px; vertical-align: middle;"src="data:image/svg+xml,%3Csvg viewBox='0 0 1000 1000' xmlns='http://www.w3.org/2000/svg' fill='%23008489'%3E%3Cpath d='M972 380c9 28 2 50-20 67L725 619l87 280c11 39-18 75-54 75-12 0-23-4-33-12L499 790 273 962a58 58 0 0 1-78-12 50 50 0 0 1-8-51l86-278L46 447c-21-17-28-39-19-67 8-24 29-40 52-40h280l87-279c7-23 28-39 52-39 25 0 47 17 54 41l87 277h280c24 0 45 16 53 40z'/%3E%3C/svg%3E"/>
			    			</div>
			    			<div style="padding-right: 15px;  text-align: center;">${rateAvg}</div>
			    		</div>
			    		<div class="review_rating_1" style="height: 12px !important; border-right: 1px solid rgb(235, 235, 235) !important; position:relative; top:8px; "></div>
			    		<div class="review_rating_1" style="padding-left:13px;">${reviewCnt} <span style="font-weight:normal;">후기</span></div>
			    		
			    		<div class="review_search">
			    			<div style="width:154px; height:34px; padding: 6px 7px; box-sizing: border-box; overflow: hidden;">
			    				<input type="text" id="search" placeholder="후기 검색" style=" outline-style: none;">
			    			</div>
			    			<div id="searchBtn" style="width:31px; height: 34px; padding: 6px 0;">
			    				<button id="goSearch" type="button" style="background: none; border: none; padding-left: 5px; padding-right: 5px;">
			    					<svg viewBox="0 0 24 24" role="presentation" aria-hidden="true" focusable="false" style="height: 1em; width: 1em; display: block; fill: currentcolor;"><path d="m10.4 18.2c-4.2-.6-7.2-4.5-6.6-8.8.6-4.2 4.5-7.2 8.8-6.6 4.2.6 7.2 4.5 6.6 8.8-.6 4.2-4.6 7.2-8.8 6.6m12.6 3.8-5-5c1.4-1.4 2.3-3.1 2.6-5.2.7-5.1-2.8-9.7-7.8-10.5-5-.7-9.7 2.8-10.5 7.9-.7 5.1 2.8 9.7 7.8 10.5 2.5.4 4.9-.3 6.7-1.7v.1l5 5c .3.3.8.3 1.1 0s .4-.8.1-1.1" fill-rule="evenodd"></path></svg>
			    				</button>
			    			</div>
			    		</div>
			   		</div>
			   		
			   		<div id="reviews">
				   		<c:forEach items="${reviewList}" var="review">
						<div class="review_one" style="margin-top:20px;">
						    	<div class="review_user">
						  	  		<div class="review_user_pic">
						    			<img src="https://a0.muscache.com/im/pictures/user/42d3a3e4-f462-4d8f-85cb-1a444865ecb2.jpg?aki_policy=profile_x_medium" height="48" width="48" alt="Jina님의 사용자 프로필" title="Jina님의 사용자 프로필">
						    		</div>
						    		<div class="review_user_info" style="margin-left:16px;  font-family: Circular">
						    			<div style="font-weight: bold;">${review.memberNum}</div>
						    			<div>${review.reviewDate}</div>
						    		</div>
						    	</div>
						    	<div class="review_content">
						    		${review.reviewDesc}
						    	</div>
						    	<hr>
						  		</div>					
						</c:forEach>
						
						<div style="margin-bottom: 30px;">
							<div class="pagination">
								<c:if test="${pager.curBlock gt 1}">
									 <button class="front"> < </button> 					
								</c:if>
			
								<c:forEach begin="${pager.startNum}" end="${pager.lastNum}" var="i">
									<button title="${i}" class="pages"> ${i}</button>
								</c:forEach>
								
								<c:if test="${pager.curBlock lt pager.totalBlock}">
									<button class="back"> > </button> 
								</c:if>
							</div>
						</div>
					</div>
			    </div>
			    
			    <!-- review ajax -->
				<script type="text/javascript">	
					$("#reviews").on("click", ".pages",function(){
						curPage = $(this).attr("title");
						$(this).addClass("active");
						$.get("getReview?placeNum=${vo.placeNum}&search=${pager.search}&curPage="+curPage, function(result){
							$("#reviews").html(result);
						});
					});
					$("#reviews").on("click",".front",function(){
						$.get("getReview?placeNum=${vo.placeNum}&search=${pager.search}&curPage=${pager.startNum-1}", function(result){
							$("#reviews").html(result);
						});
					});
					$("#reviews").on("click", ".back",function(){
						$.get("getReview?placeNum=${vo.placeNum}&search=${pager.search}&curPage=${pager.lastNum+1}", function(result){
							$("#reviews").html(result);
						});
					});
					
					$("#searchBtn").on("click", "#goSearch", function(){
						var search = $("#search").val();
						$.get("getReview?placeNum=${vo.placeNum}&search="+search, function(result){
							$("#reviews").html(result);
						});
					});
				</script>
			  
			  <!-- Map API -->
			  <h4><strong>${vo.placeLocation}</strong></h4>
			  	<!-- 지도 불러오기 -->
				<div aria-hidden="false" class="_10v3f8y9">
					<aside aria-label="검색 기반 위치 핀이 표시되는 지도" class="_zdxht7" style="height: 50vh; padding-top: 80px; margin-top: -80px; position: sticky; top: 0px;">
						<div data-veloute="map/GoogleMap" style="position: relative; width: 100%; height: 100%;">
							<div style="height: 100%; background-color: rgb(230, 227, 223); position: relative; overflow: hidden;">
								<div style="height: 100%; width: 100%; position: absolute; top: 0px; left: 0px; background-color: rgb(229, 227, 223);">
									<div class="gm-style" style="position: absolute; z-index: 0; left: 0px; top: 0px; height: 100%; width: 100%; padding: 0px; border-width: 0px; margin: 0px;">
										<div id="map2" style="z-index: -1;position: absolute;width: 100%;height: 100%;top: 0px;left: 0px;border: none;"></div>
			
									</div>
								</div>
							</div>
						</div>
					</aside>
				</div>
				<!-- 지도 불러오기 끝 -->
			 	<p style="margin-top:10px;">정확한 위치 정보는 예약이 확정된 후 알려드립니다.</p>
			  	<hr>
			 
			 
			 <!-- Host 소개 -->
			    <div id="hostInfo">
			    	<div id="hostInfo1">
			    		<div id="hostInfoDesc">
			    			<h4 style="margin: 0 0 8px 0;"><strong>Host: ${vo.hostNum}님 </strong></h4>
			    			South Korea, 한국 · 회원 가입: 2016년 5월
			    		</div>
			    		<div id="hostInfoPic">
			    			<img src="https://a0.muscache.com/im/pictures/user/c7afacd0-a5ef-469d-bf31-87e4f81e3940.jpg?aki_policy=profile_x_medium" height="64" width="64">
			    		</div>
			    	</div>
			    	<div id="hostInfo2"> ★ 후기 ${reviewCnt}개 </div>
			    	<div id="hostInfo4" style="margin-top: 15px;">
			    		블로그(스테이 고찌글라)도 운영 중이에요. 함덕바다에서 걸어서 2분 거리에 있습니다. 숙소는 조용한 주택가에 자리잡고 있지만 버스정류장 및 편의시설이 걸어서 도보거리에 위치해 있어 렌트카 없이도 편리하게 머무를 수 있습니다. 옛날 주택을 리모델링 하였기 때문에 벌레나 곤충이 숙소안에 들어 울 수 있으니 예민하신 분은 예약 하실 때 신중해 주세요. 저희는 방범을 위해 cctv가 야외에 출입문을 향해서 설치되어 있어요. 내부및 야외욕조 안쪽은 보이지 않습니다. 저희는 한달살이를 받지 않습니다. 자세한 사항은 꼭 문의를 해주세요 ^^	
			    	</div>
			    	
			    	<div id="hostInfo3">
			    		<button>호스트에게 연락하기</button>
			    	</div>
			    	 <!-- 클릭하면 카카오톡 메세지 전송 -->
			    	 
			    	  <hr>
			    </div>
			   	
			     <!-- 숙소 이용 규칙 -->
			    <h4><strong>숙소 이용규칙</strong></h4>
			    <p>${vo.placeRule}</p>
			</div>
	
			<!-- 2-2. 오른쪽 예약 파트-->
			<div id="resWrap">
					<div id="res">
					<div id="res1">
						<div id="res1_1">
							<span id="afterCost">₩${vo.placePrice}</span>
							<span id="day">/박</span>
						</div>
						<div id="res1_2">
							<img src="data:image/svg+xml,%3Csvg viewBox='0 0 1000 1000' xmlns='http://www.w3.org/2000/svg' fill='%23008489'%3E%3Cpath d='M972 380c9 28 2 50-20 67L725 619l87 280c11 39-18 75-54 75-12 0-23-4-33-12L499 790 273 962a58 58 0 0 1-78-12 50 50 0 0 1-8-51l86-278L46 447c-21-17-28-39-19-67 8-24 29-40 52-40h280l87-279c7-23 28-39 52-39 25 0 47 17 54 41l87 277h280c24 0 45 16 53 40z'/%3E%3C/svg%3E"/>
							<span id="res1_2_1">4.98</span>
							<span id="res1_2_2">(후기 35개)</span>
						</div>
						<div class="line"></div>
					</div>
					
					<form id="res2">
						<div id="res2_1">
							<div>
								<label>날짜</label>
								<div class="res2_1_1">
									<input class="date">
									<span id="to">
										<svg viewBox="0 0 24 24" role="presentation" aria-hidden="true" focusable="false" style="height: 24px; width: 24px; display: block; fill: currentcolor;"><path d="m0 12.5a.5.5 0 0 0 .5.5h21.79l-6.15 6.15a.5.5 0 1 0 .71.71l7-7v-.01a.5.5 0 0 0 .14-.35.5.5 0 0 0 -.14-.35v-.01l-7-7a .5.5 0 0 0 -.71.71l6.15 6.15h-21.79a.5.5 0 0 0 -.5.5z" fill-rule="evenodd"></path></svg>
									</span>
									<input class="date">
								</div>
							</div>
							<div>
								<label>인원</label>
								<button class="res2_1_1">
									<div id="guest">게스트 2명</div>
									<span>
										<svg viewBox="0 0 18 18" role="presentation" aria-hidden="true" focusable="false" style="height: 16px; width: 16px; display: block; fill: currentcolor;"><path d="m16.29 4.3a1 1 0 1 1 1.41 1.42l-8 8a1 1 0 0 1 -1.41 0l-8-8a1 1 0 1 1 1.41-1.42l7.29 7.29z" fill-rule="evenodd"></path></svg>
									</span>
								</button>
							</div>
						</div>
						<div id="res2_2">
							<div class="res2_2_1">
								<div class="res2_2_2">
									<div>₩71,000 x 1박&nbsp</div>
									<svg viewBox="0 0 24 24" role="presentation" aria-hidden="true" focusable="false" style="height: 15px; width: 15px; display: block; fill: rgb(72, 72, 72);"><path d="m12 0c-6.63 0-12 5.37-12 12s5.37 12 12 12 12-5.37 12-12-5.37-12-12-12zm0 23c-6.07 0-11-4.92-11-11s4.93-11 11-11 11 4.93 11 11-4.93 11-11 11zm4.75-14c0 1.8-.82 2.93-2.35 3.89-.23.14-1 .59-1.14.67-.4.25-.51.38-.51.44v2a .75.75 0 0 1 -1.5 0v-2c0-.74.42-1.22 1.22-1.72.17-.11.94-.55 1.14-.67 1.13-.71 1.64-1.41 1.64-2.61a3.25 3.25 0 0 0 -6.5 0 .75.75 0 0 1 -1.5 0 4.75 4.75 0 0 1 9.5 0zm-3.75 10a1 1 0 1 1 -2 0 1 1 0 0 1 2 0z" fill-rule="evenodd"></path></svg>
								</div>
								<span>₩71,000</span>
							</div>
							<div class="res2_2_1">
								<div class="res2_2_2">
									<div>서비스 수수료&nbsp</div>
									<svg viewBox="0 0 24 24" role="presentation" aria-hidden="true" focusable="false" style="height: 15px; width: 15px; display: block; fill: rgb(72, 72, 72);"><path d="m12 0c-6.63 0-12 5.37-12 12s5.37 12 12 12 12-5.37 12-12-5.37-12-12-12zm0 23c-6.07 0-11-4.92-11-11s4.93-11 11-11 11 4.93 11 11-4.93 11-11 11zm4.75-14c0 1.8-.82 2.93-2.35 3.89-.23.14-1 .59-1.14.67-.4.25-.51.38-.51.44v2a .75.75 0 0 1 -1.5 0v-2c0-.74.42-1.22 1.22-1.72.17-.11.94-.55 1.14-.67 1.13-.71 1.64-1.41 1.64-2.61a3.25 3.25 0 0 0 -6.5 0 .75.75 0 0 1 -1.5 0 4.75 4.75 0 0 1 9.5 0zm-3.75 10a1 1 0 1 1 -2 0 1 1 0 0 1 2 0z" fill-rule="evenodd"></path></svg>
								</div>
								<span>₩71,000</span>
							</div>
							<div class="res2_2_1">
								<div class="res2_2_2">
									<div>숙박세와 수수료&nbsp</div>
									<svg viewBox="0 0 24 24" role="presentation" aria-hidden="true" focusable="false" style="height: 15px; width: 15px; display: block; fill: rgb(72, 72, 72);"><path d="m12 0c-6.63 0-12 5.37-12 12s5.37 12 12 12 12-5.37 12-12-5.37-12-12-12zm0 23c-6.07 0-11-4.92-11-11s4.93-11 11-11 11 4.93 11 11-4.93 11-11 11zm4.75-14c0 1.8-.82 2.93-2.35 3.89-.23.14-1 .59-1.14.67-.4.25-.51.38-.51.44v2a .75.75 0 0 1 -1.5 0v-2c0-.74.42-1.22 1.22-1.72.17-.11.94-.55 1.14-.67 1.13-.71 1.64-1.41 1.64-2.61a3.25 3.25 0 0 0 -6.5 0 .75.75 0 0 1 -1.5 0 4.75 4.75 0 0 1 9.5 0zm-3.75 10a1 1 0 1 1 -2 0 1 1 0 0 1 2 0z" fill-rule="evenodd"></path></svg>
								</div>
								<span>₩71,000</span>
							</div>
							<div id="tot">
								<div>총 합계</div>
								<span>₩142,000</span>
							</div>
						</div>
						<div id="res2_3">
							<button>예약하기</button>
							<div>예약 확정 전에는 요금이 청구되지 않습니다. <br> 일부 예약에는 보증금이 있을 수 있습니다.</div>
						</div>
					</form>
				</div>
				
				<div id="report">
					<a href="">이 숙소 신고하기</a>
				</div>
			</div>
		</div>
	</main>
	<!-- Main End -->
	
	
	<!-- Footer Start -->
	<c:import url="../jsp/footer.jsp"></c:import>
	<!-- Footer End -->
	
	<!-- Java Script 파일 삽입-->
	<!-- Kakao API -->
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=327fa35f2eae30fcd772f149b123ba65&libraries=services"></script>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=327fa35f2eae30fcd772f149b123ba65"></script>							
	<script type="text/javascript" src="../resources/js/houseSelectScript.js"></script>
	<!-- fullcalendar -->
	<script src='../resources/static/fullcalendar/packages/core/main.js'></script>
	<script src='../resources/static/fullcalendar/packages/daygrid/main.js'></script>
	<script src='../resources/static/fullcalendar/packages/interaction/main.js'></script>
	<script src='../resources/static/fullcalendar/packages/moment/moment.js'></script>
	<script src="../resources/js/fullcalendar.js"></script>
	
		
</body>
</html>



