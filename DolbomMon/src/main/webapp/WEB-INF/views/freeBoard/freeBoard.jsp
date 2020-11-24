<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자유게시판</title>
<meta name="viewport" content="width=device, initial-scale=1" />
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/bootstrap.css" type="text/css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="<%=request.getContextPath()%>/css/bootstrap.js"></script>
<style>
	.container{
		width: 900px;	
	}
	#top{
		margin: 15px;
		padding: 15px;
		text-align: center;
		font-size: 30px;
	}
	
	.subject{
		width: 400px;
		white-space: nowrap;
		overflow: hidden;
		text-overflow: ellipsis;
	
	}
	a:link, a:visited, a:hover{
	 	color: black;
	 }
	body{
	 	font-size: 0.9em;
	 }
	
</style>
</head>
<body>
<div class="container">
<div id="top">
<b>자유게시판</b>
</div>
<div>
	<a class="btn btn-warning" href="freeBoardWrite" role="button">글쓰기</a>
</div>
<div><br/>총 게시물 수 : ${totalRecord}</div>
<div id="board">
<br/>
	<table class="table table-hover">
		<colgroup>
			<col style="width: 10%;">
			<col style="width: 15%;">
			<col>
			<col style="width: 15%;">
			<col style="width: 15%;">
			<col style="width: 10%;">
		</colgroup>
		<thead>
			<tr>
				<th scope="col">글번호</th>
				<th scope="col">말머리</th>
				<th scope="col">글제목</th>
				<th scope="col">작성자</th>
				<th scope="col">등록일</th>
				<th scope="col">조회수</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="vo" items="${list}">
				<tr>
					<th scope="row">${vo.no}</th>
					<th scope="row">${vo.head}</th>
					<!-- 공백을 step만큼 띄어주기 -->
					<c:forEach var="space" begin="1" end="${vo.step}">
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					</c:forEach>
					<c:if test="${vo.step>0}">
						☞
					</c:if>
					
					<!-- 글제목 script로 글자수 제한하기 -->
					<td class="subject"><a href="/dbmon/freeBoardView?no=${vo.no}">${vo.subject}</a></td>
					<td>${vo.userid}</td>
					<td>${vo.writedate}</td>
					<td>${vo.hit}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<br/>	
	<nav aria-label="Page navigation example">
		<ul class="pagination justify-content-center">
			<li class="page-item disabled">
				<a class="page-link" href="#" tabindex="-1" aria-disabled="true">Previous</a>
			</li>
			<li class="page-item"><a class="page-link" href="#">1</a></li>
			<li class="page-item"><a class="page-link" href="#">2</a></li>
			<li class="page-item"><a class="page-link" href="#">3</a></li>
			<li class="page-item"><a class="page-link" href="#">4</a></li>
			<li class="page-item"><a class="page-link" href="#">5</a></li>
			<li class="page-item">
				<a class="page-link" href="#">Next</a>
			</li>
		</ul>
	</nav>
	<br/>
	<div class="input-group mb-3">
		<input type="text" class="form-control" placeholder="검색어를 입력하세요"/>
		<div class="input-group-append">
			<button class="btn btn-warning" type="button" id="button-addon2">검색</button>
		</div>
	</div>
</div>
</div>
</body>
</html>