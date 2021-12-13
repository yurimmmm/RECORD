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
         <h2 class="sidenav-page-name">SEARCH-PW<br></h2>
         <p>Search and reset your Password from here to access.</p>
    </div>
</div>
      <div class="main">
         <div class="col-md-6 col-sm-12" style="max-width: 70%">
            <div class="login-form">
             <div id=page-logo><img src="/resources/assets/img/redord-logo.png" alt="..." /></div><br><hr class="divider" />
			 <h3>비밀번호 찾기</h3><br><hr>
               <form method="post" class="form-signin" action="/member/search-pw" name="findform">
                  <div class="form-group">
                     <label>아이디를 입력해주세요</label>
                     <input type="text" class="form-control" name="userId" id="userId" placeholder="ID">
                  </div>
                  <div class="form-group">
                     <label>회원가입 시 작성한 이메일을 입력해주세요</label>
                     <input type="text" class="form-control" name="email" id="email"placeholder="email">
                  </div>
                  <input class="btn btn-secondary" type="submit" id="search-pw-bnt"value="비밀번호 재설정하기" /><br><br>
	
	              <c:if test="${check == 1}">
					<label class="search-id-box"><b>일치하는 정보가 존재하지 않습니다.</b></label>
				  </c:if>				
				  <c:if test="${check == 0 }">
						<div><br><hr class="divider" />
							<label>비밀번호를 변경해주세요.</label>
						</div>
						<div class="form-label-group">
							<input type="hidden" id="userId" name="userId" value="${userId}">	
											
							<input type="password" name="password" id="password" class="form-control" placeholder="영어,숫자,특수문자 조합의 8글자 이상의 문자열입니다.">
		                  	 <span class="input_possible" id="password_possible">사용 가능한 비밀번호 입니다.</span>
		                     <span class="input_impossible" id="password_impossible">영어,숫자,특수문자 조합의 8자 이상의 문자열 입니다.</span>
						</div><br>					
						<div class="form-label-group">
							<input type="password" name="password2" id="password2" class="form-control" placeholder="비밀번호를 다시 한번 입력하세요">
		                  	 <span class="input_possible" id="password_accord" >비밀번호가 일치합니다.</span>
		                     <span class="input_impossible" id="password_discord">비밀번호가 일치하지않습니다.</span>
						</div>					
						<div class="form-label-group">
							<input class="btn btn-secondary" id="updatePw" type="button" value="비밀번호 저장하기" onclick="updatePassword()">
						</div>
				  </c:if>
				</form> 
            </div>
         </div>
         <div class="empty"></div>
      </div>
<script type="text/javascript" src="/resources/js/member/updatePw.js"></script>
</body>
<%@ include file="/WEB-INF/views/include/footer.jsp" %>
</html>