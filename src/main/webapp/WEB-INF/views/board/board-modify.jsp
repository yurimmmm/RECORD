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
</head>
<body>
<%@ include file="/WEB-INF/views/include/nav.jsp" %>

<div class="limiter">
		<div class="container-table100">
			<div class="wrap-table100">
				<div class="table100 ver2 m-b-110">
				<form role="form">
					<div class="table100-head">
						<table>
							<thead>
								<tr class="row100 head">
									<th class="cell100 column1" style="background-color: #f4623a; color: white;">제목</th>
									<th style="text-align: center;">${modify.title}</th>
								</tr>
							</thead>
						</table>
					</div>
					<div class="table100-body js-pscroll">
						<table>
							<tbody>
								<tr class="row100 body" id="detailWriter">
									<td>작성자  :  ${modify.nickname}</td>
								</tr>
<%-- 								<tr class="row100 body" style="display: flex">
									<c:forEach items="${files}" var="file">
										<img src="${file.downloadURL }"
											style="max-width: 360px; max-height: 273px">
									</c:forEach>
								</tr> --%>
								<tr class="row100 body" id="detailContent">
									<td style="padding-left: 40px;">${modify.content}</td>
								</tr>								
							</tbody>
						</table>
					</div>
					<p>
						<button type="submit">수정</button>
						<button id="cancel_btn">취소</button>
					</p>
				  </form>
				  <button class="back" onclick="history.back()">게시물 목록으로 돌아가기</button>
				</div>
			</div>
		</div>
	</div>

<script>
    // 폼을 변수에 저장
    var formObj = $("form[role='form']"); 
    
    // 취소 버튼 클릭
    $("#cancel_btn").click(function(){   
     formObj.attr("action", "/board/read?bno=" + $("#bno").val());
     formObj.attr("method", "get");  
     formObj.submit();
    });
</script>

</body>
<%@ include file="/WEB-INF/views/include/footer.jsp" %>
</html>