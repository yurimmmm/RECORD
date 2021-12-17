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
				<form>
					<div class="table100-head">
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
					<button class="back" onclick="location.href='board/board-list'">게시물 목록으로 돌아가기</button>
				  </form>
				</div>
			</div>
		</div>
	</div>




<%-- <div class="content">

	<h2 class='tit'>게시판</h2>
	<div class='info'>
		<span>번호 :   <c:out value="${datas.board.boardIdx}"/></span>
		<span>제목 :   <c:out value="${datas.board.title}"/></span>
		<span>등록일 : <c:out value="${datas.board.regDate}"/></span>
		<span>작성자 : <c:out value="${datas.board.userId}"/></span>
	</div>
	<div class='info file_info'>
		<ol>
			<c:forEach items="${datas.files}" var="file">
				<li><a onclick="downloadFile('${file.originFileName}','${file.renameFileName}','${file.savePath}')">
						${file.originFileName}</a></li>		
			</c:forEach>
		</ol>
	</div>
	
	<div class='article_content'>
		<pre><c:out value="${datas.board.content}"/></pre>
	</div>

</div>
	<script type="text/javascript">
		let downloadFile = (ofn,rfn,path) => {
			let paramObj = {
					originFileName : ofn,
					renameFileName : rfn,
					savePath : path
			}
			location.href = '/download?' + urlEncoder(paramObj);
		}
	</script> --%>
</body>
<%@ include file="/WEB-INF/views/include/footer.jsp" %>
</html>