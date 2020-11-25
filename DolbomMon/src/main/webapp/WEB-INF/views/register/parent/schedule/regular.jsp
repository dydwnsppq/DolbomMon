<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/bootstrap.css" type="text/css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="<%=request.getContextPath()%>/css/bootstrap.js"></script>
<style>
	/* ==================== 초기화 ====================== */
	*{margin:0; padding:0; text-decoration:none; list-style:none;}
	.container{width:518px; padding:0;}
	/* ==================== 초기화 ====================== */
	#selectDayDiv input[type=checkbox]{display:none;}
	
	/* ==================== 헤더 ====================== */
	#header{
		width:100%; 
		overflow:hidden; 
		height:auto; 
		text-align:center; 
		font-size:20px; 
		margin-top:40px;
	}
	/* ==================== 헤더 ====================== */
	
	/* ==================== 기간, 요일 설정 ====================== */
	#startDateDiv{border-bottom:1px solid gray; overflow:hidden; height:auto; padding:15px 0;}
	#startDateDiv span{float:left; font-weight:bold; color:gray; line-height:30px;}
	#startDateDiv input[type=date]{float:right; background-color:rgb(255, 222, 89);}/*돌봄 시작일*/
	
	
	#selectDayDiv{width:100%; overflow:hidden; height:auto;}
	#selectDayDiv li>label{
		width:100%; height:100%; 
		border:1px solid gray; border-radius:50%; 
		background-color:#EFEFEF; 
		margin:0;
	}
	#selectDayDiv li{
		width:60px; 
		height:60px; 
		line-height:60px; 
		border-radius:50%; 
		text-align:center; 
		float:left; margin:7px; 
	}	
	
	#selectTimeDiv{margin:30px 0;}
	#selectTimeDiv>ul{width:100%; overflow:hidden; height:auto;}
	#selectTimeDiv li>input[type=date]{background-color:rgb(255, 222, 89); } /* 시작종료시간 색상*/ 
	#selectTimeDiv li:nth-of-type(1){float:left;}
	#selectTimeDiv li:nth-of-type(2){float:right;}
	
	input[type=submit]{width:100%; height:40px; background-color:rgb(255, 222, 89);}
	/* ==================== 기간, 요일 설정 ====================== */
	
</style>
<script>

	$(function(){
		$(document).ready(function(){
			for(var i=1;i<8;i++){
				if($("input[id=y"+i+"]").is(":checked")){
					$("label[for=y"+i+"]").css("background-color", "rgb(255, 222, 89)");//노랑
				}else{
					$("label[for=y"+i+"]").css("background-color", "#EFEFEF");//회색
				}
			}
		});
		
		// 요일 선택 시 색깔변경
		$("input[name=yoil]").change(function(){
			var selectedData = $(this).attr("id");
			
			if($("input[id="+selectedData+"]").is(":checked")){
				$("label[for="+selectedData+"]").css("background-color", "rgb(255, 222, 89)");//노랑
			}else{
				$("label[for="+selectedData+"]").css("background-color", "#EFEFEF");//회색
			}
		});
		
		// 요일 선택 시 div 출력
		
		
	});
</script>
</head>

<body>
	<div class="container">
		<form action="<%=request.getContextPath()%>/parent/description">
		<div id="header">정기적으로</div>	
		<div id="startDateDiv"><span>돌봄시작일</span><input type="date" name="start_date"/></div>
		<div id="selectDayDiv">
			<input type="checkbox" id="y1" name="yoil" value="월" />
			<input type="checkbox" id="y2" name="yoil" value="화" />
			<input type="checkbox" id="y3" name="yoil" value="수" />
			<input type="checkbox" id="y4" name="yoil" value="목" />
			<input type="checkbox" id="y5" name="yoil" value="금" />
			<input type="checkbox" id="y6" name="yoil" value="토" />
			<input type="checkbox" id="y7" name="yoil" value="일" />
			<ul>
				<li><label for="y1">월</label></li>
				<li><label for="y2">화</label></li>
				<li><label for="y3">수</label></li>				<li><label for="y4">목</label></li>
				<li><label for="y5">금</label></li>
				<li><label for="y6">토</label></li>
				<li><label for="y7">일</label></li>
			</ul>
		</div>
		<div id="selectTimeDiv">
			<ul id="selectTimeList">
				<li><span>시작시간</span><br/><input type="date" value="" name="start_time" /></li>
				<li><span>종료시간</span><br/><input type="date" value="" name="end_time" /></li>
			</ul>
			<input type="submit" value="다음" />
		</div>
		</form>
	</div>
</body>
</html>