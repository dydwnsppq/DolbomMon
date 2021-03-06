<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device, initial-scale=1" />
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/bootstrap.css" type="text/css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="<%=request.getContextPath()%>/css/bootstrap.js"></script>
<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
<style>

	.container{width:800px;}
	img{ height:110px; width:110px;}
	
	#title{
		margin:20px 5px;
		display:block;
		width:800px;
	}
	#titlefont{
		font-size: 25px;
		font-weight: 700;
		vertical-align: bottom;
		text-align:center;
	}
	.nav-item>a {
	color:black;
	}
	.fa-check-circle, .fa-times-circle{
		font-size: 50px;
		margin: 10px;
		color:orange;
	}
	.card-body{
		white-space: nowrap;
		overflow:hidden;
		text-overflow:ellipsis;
	}
	#imgBox{
		float:left;
		padding: 15px;
		height: 150px;
		position: absolute;
		top: 20px;
	}
	#offerBox{
	    position: relative;
	    width: 310px;
	    padding: 3px;
	    left: 180px;
	    float:left;
	}
	#offerTitle{
		font-size: 1.1em;
	}
	.all_wrapper{
		margin-top:70px;
		width:770px;
		background-color:white;
		margin:0 auto;
	}
	.viewContract{
		position: relative;
	    margin: 0 5px;
	    top: -40px;
	    right: -510px;
	}
	.cancel{
		position: relative;
	    margin: 0 5px;
	    top: -41px;
	    right: -630px;
	}
</style>
<script>
	var popupWidth = 1060;
	var popupHeight = 596;
	var popupX = (window.screen.width / 2) - (popupWidth / 2);
	var popupY= (window.screen.height / 2) - (popupHeight / 2);
	function contractOpen(no, id, payment){
		popupWidth = 1060;
		popupHeight = 1600;
		window.open('/dbmon/contractView?origin_no='+no+'&teacherid='+id+'&payment='+payment, '', 'status=no, height=' + popupHeight + ', width=' + popupWidth + ', left='+ popupX + ', top='+ popupY);
	}
	
</script>

</head>
<body>
<div id="top">
<%@include file="/WEB-INF/views/top.jsp"%>
<br/>
</div>
<div class="container" style="min-height:500px;">
			<div id="title">
   				<div id="titlefont">나의 활동 내역</div>
 			</div>
			<ul class="list-group list-group-flush">
				<li class="list-group-item">
				<div class="all_wrapper" >
					<div class="row">
						<c:forEach var="vo" items="${list2}">
							<div class="col-sm-12" style="padding: 20px;">
								<div class="card">
									<div class="card-body">
										<div id="imgBox" style="text-align:center;">
											<img <c:if test="${vo.pic==null || vo.pic=='' }" >src="img/profilepic.png" </c:if><c:if test="${vo.pic!=null || vo.pic != '' }" >src="upload/${vo.pic}"</c:if>class="rounded-circle" style="height:110px; width:110px;"/>
											</br><div style="font-size:15px;" class="badge badge-warning badge-pill ml-1" >${vo.username }</div>
										</div>
										<div id="offerBox" >
											<p class="card-text" style="line-height: 1.8em;">학부모 아이디 | <span style="color:orange;">${vo.userid }</span>
											<br/>등록일 | <span style="color:orange;">${vo.writedate }</span>
											<br/>결제일 | <span style="color:orange;">${vo.writedate }</span>
											<br/>돌봄 장소 | <span style="color:orange;">${vo.care_addr } </span>
											<br/>시급 | <span style="color: orange;">${vo.wish_wage }원</span>
											</p>
										</div>
										<!-- 
										<div style="height:1px;">
											<input class="btn btn-warning viewContract" type="button" value="계약서 확인" id="${vo.job_board_no}" style="margin:0 5px;" />
										</div>
										<div style="height:1px;">
											<input class="btn btn-warning cancel" type="button" value="지원 취소" id="cancel" style="margin:0 5px;" />
										</div>
										 -->
									</div>
								<div class="card-footer btn" onclick="contractOpen('${vo.origin_no}', '${vo.teacherid }', '${vo.payment }')">계약서 자세히 보기</div>
								</div>
							</div>
						</c:forEach>
						
					</div>
				</div>
			</ul>
</div>
<jsp:include page="../footer.jsp"/>
</body>
</html>