<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<body>
<!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-light fixed-top py-3" id="mainNav">
            <div class="container px-4 px-lg-5">
                <a class="navbar-brand" href="/">RECORD</a>
                <button class="navbar-toggler navbar-toggler-right" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ms-auto my-2 my-lg-0">
                        <li class="nav-item"><a class="nav-link" href="#">programing</a></li>
                        <li class="nav-item"><a class="nav-link" href="/board/board-list">Scribbles</a></li>
                        <li class="nav-item"><a class="nav-link" href="#">diary</a></li>
                        <c:if test="${empty authentication}">
							<li class="nav-item"><a class="nav-link" href="/member/login">Login</a></li><hr>
						</c:if>
						<c:if test="${not empty authentication}">
							<li class="nav-item"><a class="nav-link" href="/mypage/my-info">myPage</a></li>
							<li class="nav-item"><a class="nav-link" href="/member/logout">Logout</a></li><hr>
						</c:if> 
                    </ul>
                </div>
            </div>
        </nav>
       
</body>
</html>