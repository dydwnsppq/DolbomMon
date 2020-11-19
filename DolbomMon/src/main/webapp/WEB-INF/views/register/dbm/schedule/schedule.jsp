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
	/* =============== 초기화 ============== */
	*{margin:0; padding:0;}
	.container{width:600px; padding:0;}
	/* =============== 초기화 ============== */
	
	/* =============== ㅎㄷ ============== */
	#headerDiv{width:100%; height:auto; margin-top:50px; text-align:center; font-size:25px; font-weight:bold;}
	/* =============== ㅎㄷ ============== */
	
	/* =============== 시간 선택 라디오버튼 ============== */
	.inputRadioDiv{width:100%; height:auto; padding:20px; border-bottom:1px solid gray;}
	.inputRagiodiv:last-child{border:1px solid gray;}
	label{margin:0px; width:100%; }
	
	/* =============== 시간 선택 라디오버튼 ============== */
	
	input[type=submit]{width:100%; height:50px; margin-top:30px;}
</style>
<script>
	$(function(){
		
		// 선택된 라디오 버튼에따라 링크 바꾸기
		$("input[type=radio]").change(function(){
			var selectedId = $(this).attr("id");
			console.log("sfs===" + selectedId);
			if(selectedId=="cr7") {
				$("form").attr("action", "<%=request.getContextPath()%>/dbm/schedule/detail");
			}else{
				$("form").attr("action", "<%=request.getContextPath()%>/regForm");
			}
		});
		
	 	
	});
</script>
</head>
<body>
	<div class="container">
		<div id="headerDiv">
			언제 활동할 수 있나요?
		</div>
		<form action="<%=request.getContextPath()%>/regForm">
			<div class="inputRadioDiv">
				<label for="wdAll"><input type="radio" id="wdAll" name="1" />월~금 종일<span>오전 8시 - 저녁 8시</span></label>
			</div>
			<div class="inputRadioDiv">
				<label for="wdAM"><input type="radio" id="wdAM" name="1" />월~금 오전<span>오전 7시 - 오후 2시</span></label>
			</div>
			<div class="inputRadioDiv">
				<label for="wdPM"><input type="radio" id="wdPM" name="1" />월~금 오후<span>오후 2시 - 저녁 10시</span></label>
			</div>
			<div class="inputRadioDiv">
				<label for="weAll"><input type="radio" id="weAll" name="1" />주말 종일<span>오전 8시 - 저녁 8시</span></label>
			</div>
			<div class="inputRadioDiv">
				<label for="cr7"><input type="radio" id="cr7" name="1" />내가 원하는 시간 직접 입력하기</label>
			</div>
			<input type="submit" value="다음">
		</form>
	</div>
</body>
</html>