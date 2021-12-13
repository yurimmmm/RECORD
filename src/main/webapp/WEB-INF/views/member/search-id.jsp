<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/WEB-INF/views/include/head.jsp" %>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<link rel="stylesheet" href="/resources/css/member/memberCommon.css">
</head>
<body>
<%@ include file="/WEB-INF/views/include/nav.jsp" %>
<div class="sidenav">
    <div class="login-main-text">
         <h2 class="sidenav-page-name">SEARCH-ID<br></h2>
         <p>Search your ID from here to access.</p>
    </div>
</div>
      <div class="main">
         <div class="col-md-6 col-sm-12" style="max-width: 70%">
            <div class="login-form">
              <div id=page-logo><img src="/resources/assets/img/redord-logo.png" alt="..." /></div><br><hr class="divider" />
              <h3>아이디 찾기</h3><br><hr>
               <form method="post" class="form-signin" action="/member/search-id" name="findform">
                  <div class="form-group">
                     <label>회원가입 시 작성한 이메일을 입력해주세요</label><br>
                     <input type="text" class="form-control" id="email" name="email" placeholder="email" >
                  </div>
                  <input class="btn btn-secondary" type="submit" value="아이디 찾기" /><br><br>                     
                  <c:if test="${check == 1}">
					<label class="search-id-box"><b>일치하는 정보가 존재하지 않습니다.</b></label>
				  </c:if>
				  <c:if test="${check == 0 }">
					<label class="search-id-box">찾으시는 아이디는 <b>'${member.userId}'</b> 입니다.</label>			
					<div class="form-label-group">
					</div>
				  </c:if>
               </form>
            </div>
         </div>
         <div class="empty"></div>
      </div>
</body>
<%@ include file="/WEB-INF/views/include/footer.jsp" %>
</html>