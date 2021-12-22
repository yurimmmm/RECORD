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
					<form name="updateForm" role="form" method="post" action="/board/board-modify">
						<input type="hidden" name="boardIdx" value="${modify.boardIdx}"/>
						<div class="table100-head">
							<table>
								<thead>
									<tr class="row100 head">
										<th class="cell100 column1" style="background-color: #f4623a; color: white;">제목</th>
										<th><input style="width: 100%" name="title" required="required" value="${modify.title}"/></th>
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
									<tr class="row100 body" id="detailContent">
										<td><textarea class="textarea" name="content" required="required"><c:out value="${modify.content}" /></textarea></td>
									</tr>								
								</tbody>
							</table>
						</div>						
					<button class="update">저장하기</button>
				  </form>
				</div>
			</div>
		</div>
	</div>

</body>
<%@ include file="/WEB-INF/views/include/footer.jsp" %>
</html>