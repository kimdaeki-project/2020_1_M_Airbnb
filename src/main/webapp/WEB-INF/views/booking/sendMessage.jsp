<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
       <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css"
	href="../resources/css/myPage.css">
<link rel="stylesheet" type="text/css"
	href="../resources/css/headerStyle.css">
<c:import url="../template/boot.jsp"></c:import>
<link rel="stylesheet" type="text/css"
	href="../resources/css/footer.css">
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css"> 
	<style type="text/css">
		.content {
			width:100%;
			min-height: 720px;
			height:100%;
		}
		.contents {
			width:85%;
			height : 100%;
			min-width: 1000px;
			min-height: 600px;
			margin: 0 auto;
			padding: 0 35px;
			box-sizing: border-box;
			
		}
		.back{
			
			width: 100%;
			min-height: 600px;
			background-image: url("../resources/w3images/back.png");
			background-repeat: no-repeat;
			background-position: center;
		}

		.qu{
			display: inline-block;
			line-height: 30px;
			margin-left: 20px;
			font-size: 1.2em;
		}
		
		.host{
			margin : 0 200px;
		}
		.collapse{
			background-color: #ffffff;
       		background-color: rgba( 235, 235, 235, 0.5 );
       		font-size: 1.1em;
       		font-weight: bold;
       		line-height: 35px;
		}
		.container {
			padding : 0 50px;
			box-sizing: border-box;
		}
		.btn-info {
			font-size: 1.4em;
			font-weight: bold;
		}
	</style>
	
</head>
<body>
<c:if test="${empty member}">

	<script type="text/javascript">
		$(document).ready(function() {
			alert("로그인 후 이용해주세요.");
			location.href="../";
		})
	</script>

</c:if>

<c:if test="${not empty member}">
<c:import url="../jsp/header.jsp"></c:import>
<div class="content">
	
	<div class="contents">
		
 		
		
		<div class="back">
		<div class="host">
		<div class="q">
			<div class="container">
			  <h2>숙소에 대해 자주 묻는 질문</h2><hr>
			  <a href="#find" class="btn btn-info" data-toggle="collapse" style="width: 100%; height: 40px;">찾아 가기 및 간단한 소개</a>
			  <div id="find" class="collapse">
				 숙소 부지에 무료 주차 공간이 있습니다<br>
				 ${vo.placeDesc }
			  </div><hr>
			   <a href="#rule" class="btn btn-info" data-toggle="collapse" style="width: 100%; height: 40px;">숙소 이용 규칙</a>
			  <div id="rule" class="collapse">
			  ${vo.placeRule }
			  </div><hr>
			   <a href="#demo" class="btn btn-info" data-toggle="collapse" style="width: 100%; height: 40px;">요금 설정</a>
			  <div id="demo" class="collapse">
			   일주일 이상 숙박하시면 5% 할인이, 한 달 이상 숙박하시면 10% 할인이 적용됩니다.<br>
			체크인 14일 전까지 예약을 취소하면 전액 환불됩니다. 그 이후 체크인 5일 전까지 예약을 취소하면 서비스 수수료를 제외한 전액이 환불됩니다.<br>
			예약을 서두르세요!
			  </div><hr>
			</div>
			
			<div class="qu">
			<b style="font-size: 1.8em">호스트에게 연락하기</b><br>
			${host.receiveName} 님에게 문의할 사항이 있나요?
			</div>
			<div id="hostPic" style="float:left;">
			<img src="${pageContext.request.contextPath}/resources/images/member/${hostFile.fileName}" height="64" width="64">
			</div>
		</div>
		<form action="../message/send" method="post">
				<input type="text" name="s_memberNum" value="${member.memberNum }" hidden="true">
				<input type="text" name="sendName" value="${member.name }" hidden="true">
				<input type="text" name="r_memberNum" value="${host.r_memberNum }" hidden="true">
				<input type="text" name="receiveName" value="${host.receiveName }" hidden="true">
				<input type="text" name="placeNum" value="${host.placeNum }" hidden="true">
			    <div class="form-group">
			      <textarea class="form-control" rows="5" id="comment" placeholder="여기에 메세지를 입력하세요" required="required" name="message"></textarea>
			    </div>
			    <input type="submit" class="btn btn-primary" value="메시지 전송하기" width="250px" height="100px" style="float: right">
		</form>
		</div>
		</div>
	</div>
</div>

<hr>
<c:import url="../jsp/footer.jsp"></c:import>
</c:if>

<script type="text/javascript">
	$(".btn-primary").click(function() {
		alert("메시지 전송 성공");
	})
</script>
</body>
</html>