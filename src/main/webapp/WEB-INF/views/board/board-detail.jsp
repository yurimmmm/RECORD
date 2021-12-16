<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/WEB-INF/views/include/head.jsp" %>
</head>
<body>
<%@ include file="/WEB-INF/views/include/nav.jsp" %>
<div class="content">

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
	</script>
</body>
<%@ include file="/WEB-INF/views/include/footer.jsp" %>
</html>