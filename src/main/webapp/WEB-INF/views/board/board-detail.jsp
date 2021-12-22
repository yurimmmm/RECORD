<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%@ include file="/WEB-INF/views/include/head.jsp" %>
<head>
	<title>Table V04</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/resources/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/resources/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/resources/vendor/animate/animate.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/resources/vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/resources/vendor/perfect-scrollbar/perfect-scrollbar.css">
<!--===============================================================================================-->
	<link rel="stylesheet" href="/resources/css/board/util.css">
	<link rel="stylesheet" href="/resources/css/board/main.css">
<!--===============================================================================================-->
<script src='https://code.jquery.com/jquery-3.3.1.min.js'></script>
</head>
<script type="text/javascript">
		$(document).ready(function(){
			var formObj = $("form[name='readForm']");
			
			// 수정 
			$(".update_btn").on("click", function(){
				formObj.attr("action", "/board/board-modify");
				formObj.attr("method", "get");
				formObj.submit();				
			})
			
			// 삭제
			$(".delete_btn").on("click", function(){
				formObj.attr("action", "/board/board-delete");
				formObj.attr("method", "post");
				formObj.submit();
			})
			
		})
</script>
<body>
<%@ include file="/WEB-INF/views/include/nav.jsp" %>

<div class="limiter">
		<div class="container-table100">
			<div class="wrap-table100">
				<div class="table100 ver2 m-b-110">
					<div class="table100-head">
						<form name="readForm" role="form" method="post">
							<input type="hidden" id="boardIdx" name="boardIdx" value="${detail.boardIdx}" />
						</form>
						<table>
							<thead>
								<tr class="row100 head">
									<th class="cell100 column1" style="background-color: #f4623a; color: white;">제목</th>
									<th style="text-align: center;">${detail.title}</th>
								</tr>
							</thead>
						</table>
					</div>
					<div class="table100-body js-pscroll">
						<table>
							<tbody>
								<tr class="row100 body" id="detailWriter">
									<td>작성자  :  ${detail.nickname}</td>
								</tr>
								<tr class="row100 body" id="detailContent">
									<td style="padding-left: 40px;">${detail.content}</td>
								</tr>								
							</tbody>
						</table>
					</div>
					<div class="modify">
						<button type="submit" class="update_btn">수정　　/</button>
						<button type="submit" class="delete_btn">　　삭제</button>
					</div>	
				  <button class="back" onclick="history.back()">게시물 목록으로 돌아가기</button>
				</div>
			</div>
		</div>
	</div>
</body>
<%@ include file="/WEB-INF/views/include/footer.jsp" %>
</html>