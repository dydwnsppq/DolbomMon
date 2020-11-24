<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device, initial-scale=1" />
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/bootstrap.css" type="text/css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="<%=request.getContextPath()%>/css/bootstrap.js"></script>
<link rel="stylesheet"
	href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
	integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p"
	crossorigin="anonymous" />
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<style>
.container {
	width: 800px;
	text-align:center;
}

#title {
	margin: 20px 5px;
	display: block;
	width: 100%;
}

#titlefont {
	font-size: 25px;
	font-weight: 700;
	vertical-align: bottom;
	text-align: center;
}

#activityWarning {
	color: gray;
	text-align: center;
}

#activityHidden {
	overflow: hidden;
	height: 0px;
}

#shinsaenga, #yua, #younga, #chodeung {
	font-size: 40px;
	float: right;
	color: white;
}

input[type=submit] {
	position: relative;
	display: block;
	width: 80px;
	left: calc(50% - 40px);
	margin-top: 30px;
}
label{
width:24%;

}

</style>

<script>
	$(function(){
		$("#actBox label").click(function(){
			var selectedAct = $(this).attr("for");
			var alt = $("input[id='"+ selectedAct+"']").attr("alt");
			
			if(alt=="1"){
				$(this).css("background-color","orange");
				$("input[id='"+ selectedAct +"']").attr("alt", "2");
			}else if(alt=="2"){
				$(this).css("background-color","white");
				$("input[id='"+ selectedAct +"']").attr("alt", "1");
				
			}
		});
		
		
	});
</script>
</head>
<body>

	<div class="container">
		<div id="title">
			<div id="titlefont">원하는 활동 수정</div>
		</div>
		<div class="m-2" id="activityWarning">
			<b>가능한 활동</b><br/>
			현재 놀이/학습 돌봄유형이므로 실내놀이와 책읽기 활동은 필수로 선택되어야 합니다<br/>
		</div>


			<div id="activityHidden">
				<input type="checkbox" name="tAct" id="act1" alt="1"/>
				<input type="checkbox" name="tAct" id="act2" alt="1"/>
				<input type="checkbox" name="tAct" id="act3" alt="1"/>
				<input type="checkbox" name="tAct" id="act4" alt="1"/>
				<input type="checkbox" name="tAct" id="act5" alt="1"/>
				<input type="checkbox" name="tAct" id="act6" alt="1"/>
				<input type="checkbox" name="tAct" id="act7" alt="1"/>
				<input type="checkbox" name="tAct" id="act8" alt="1"/>
				<input type="checkbox" name="tAct" id="act9" alt="1"/>
				<input type="checkbox" name="tAct" id="act10" alt="1"/>
				<input type="checkbox" name="tAct" id="act11" alt="1"/>
				<input type="checkbox" name="tAct" id="act12" alt="1"/>
				
			</div>

			<div id="actBox">
				<div class="row">
	   			<label for="act1"><img src="icon/change-join-walk-off.svg"/><br/>등하원돕기</label>
	   			<label for="act2"><img src="icon/change-read-off.svg" /><br/>책읽기</label>
	   			<label for="act3"><img src="icon/change-indoorplay-off.svg" /><br/>실내놀이</label>
	   			<label for="act4"><img src="icon/change-outdooractivities-off.svg"/><br/>야외활동</label>
	   			</div>
	   			
	   			<div class="row">
	   			<label for="act5"><img src="icon/change-korean-off.svg"/><br/>한글놀이</label>
				<label for="act6"><img src="icon/change-english-off.svg"/><br/>영어놀이</label>
				<label for="act7"><img src="icon/change-study-off.svg"/><br/>학습지도</label>
				<label for="act8"><img src="icon/change-pe-off.svg"/><br/>체육놀이</label>
	   			</div>
	   			
				<div class="row">   		
				<label for="act9"><img src="icon/change-cleaning-off.svg"/><br/>간단 청소</label>
				<label for="act10"><img src="icon/change-cook-off.svg"/><br/>밥 챙겨주기</label>
				<label for="act11"><img src="icon/change-washing-off.svg"/><br/>간단 설거지</label><br/>
				<label></label>
				</div>  
				
				<div class="row">   		
				<label for="act12"><img src="icon/change-longterm-off.svg"/><br/>장기입주</label>
				<label for="act13"><img src="icon/change-shortperiod-off.svg"/><br/>단기입주</label><br/>
				<label></label>
				<label></label>
	   			</div>
			</div>



			<input type="submit" class="btn btn-warning" value="저장" />
		</div>
</body>
</html>

