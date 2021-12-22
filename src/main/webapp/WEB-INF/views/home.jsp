<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%@ include file="/WEB-INF/views/include/head.jsp" %>
    <body id="page-top">
    <%@ include file="/WEB-INF/views/include/nav.jsp" %>
        <!-- Masthead-->
        <header class="masthead">
            <div class="container px-4 px-lg-5 h-100">
                <div class="row gx-4 gx-lg-5 h-100 align-items-center justify-content-center text-center">
                    <div class="col-lg-8 align-self-end">
                        <h1 class="text-white font-weight-bold">Record your everything!</h1>
                        <hr class="divider" />
                    </div>
                    <div class="col-lg-8 align-self-baseline">
                        <p class="text-white-75 mb-5">Record everything about you! Why don't you log in and write down how you feel today and what happened today?</p>
                        <!-- <a class="btn btn-primary btn-xl" href="#about">Find Out More</a> -->
                    </div>
                </div>
            </div>
        </header>
        <!-- About-->
        <section class="page-section bg-primary" id="about">
            <div class="container px-4 px-lg-5">
                <div class="row gx-4 gx-lg-5 justify-content-center">
                    <div class="col-lg-8 text-center">
                        <h2 class="text-white mt-0">오늘 하루 어땠나요?</h2>
                        <hr class="divider divider-light" />
                        <a class="btn btn-light btn-xl" href="/board/board-list">Record your everything!</a>
                    </div>
                </div>
            </div>
        </section>
        <!-- Services-->
        <section class="page-section" id="services">
            <div class="container px-4 px-lg-5">
                <h2 class="text-center mt-0">At Your Service</h2>
                <hr class="divider" />
                <div class="row gx-4 gx-lg-5">
                    <div class="col-lg-3 col-md-6 text-center">
                        <div class="mt-5">
                            <div class="mb-2"><i class="bi-laptop fs-1 text-primary"></i></div>
                            <h3 class="h4 mb-2">Scribbles</h3>
                            <p class="text-muted mb-0">당신의 모든것을 기록해보세요! 오늘의 기분이나 오늘 있었던 일을 함께 공유해보는건 어떨까요?</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>       
    </body>
    <%@ include file="/WEB-INF/views/include/footer.jsp" %>
    <%@ include file="/WEB-INF/views/include/commonJs.jsp" %>
</html>
