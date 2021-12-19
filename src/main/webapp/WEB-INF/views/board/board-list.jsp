<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
<body>	
<%@ include file="/WEB-INF/views/include/nav.jsp" %>
	<div class="limiter">
		<div class="container-table100">
			<div class="wrap-table100">
				<div class="table100 ver2 m-b-110">
					<div class="table100-head">
						<table>
							<thead>
								<tr class="row100 head">
									<th class="cell100 column1">번호</th>
									<th class="cell100 column2">제목</th>
									<th class="cell100 column3">작성자</th>
									<th class="cell100 column4">등록일</th>
								</tr>
							</thead>
						</table>
					</div>
					<div class="table100-body js-pscroll">
						<table>
							<tbody>
								<c:forEach items="${list}" var = "list">
							<tr class="row100 body">
								<td class="column1"><c:out value="${list.boardIdx}" /></td>
								<td class="column2"><a href="/board/board-detail?boardIdx=${list.boardIdx}"><c:out value="${list.title}" /></a></td>
								<td class="column3"><c:out value="${list.nickname}" /></td>
								<td class="column4"><fmt:formatDate value="${list.regDate}" pattern="yyyy-MM-dd"/></td>
							</tr>
						</c:forEach>
							</tbody>
						</table>
						</div>
						<button class="uplode" onclick ="location.href='/board/board-form'">글 작성</button>
					</div>
				</div>
			</div>
		</div>


<!--===============================================================================================-->	
	<script src="/resources/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="/resources/vendor/bootstrap/js/popper.js"></script>
	<script src="/resources/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="/resources/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="/resources/vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
	<script>
		$('.js-pscroll').each(function(){
			var ps = new PerfectScrollbar(this);

			$(window).on('resize', function(){
				ps.update();
			})
		});
					
	</script>
	<script src="/resources/js/board/main.js"></script>
</body>
<%@ include file="/WEB-INF/views/include/footer.jsp" %>
</html>
