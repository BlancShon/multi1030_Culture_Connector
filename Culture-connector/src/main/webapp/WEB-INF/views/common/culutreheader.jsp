<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title> 문화 커넥터 </title>
    <!--지도 맵 링크-->
    <link href="${pageContext.request.contextPath}/resources/css/map-style.css"  rel="stylesheet" type="text/css"/>
    <script src="${pageContext.request.contextPath}\resources\js\jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}\resources\js\map-config.js"></script>
    <script src="${pageContext.request.contextPath}\resources\js\map-interact.js"></script>
    <!-- Meta Tags -->
    <meta charset="utf-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, shrink-to-fit=no"
    />
   
    

    <!-- Favicon -->
    <link rel="shortcut icon" href="{pageContext.request.contextPath}/resources/images/logo-culture-light.png" />

    <!-- Google Font -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      rel="stylesheet"
      href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500;700&family=Poppins:wght@400;500;700&display=swap"
    />

    <!-- Plugins CSS -->
    <link
      rel="stylesheet"
      type="text/css"
      href="assets/vendor/font-awesome/css/all.min.css"
    />
    <link
      rel="stylesheet"
      type="text/css"
      href="assets/vendor/bootstrap-icons/bootstrap-icons.css"
    />
    <link
      rel="stylesheet"
      type="text/css"
      href="assets/vendor/tiny-slider/tiny-slider.css"
    />
    <link
      rel="stylesheet"
      type="text/css"
      href="assets/vendor/glightbox/css/glightbox.css"
    />
    <link
      rel="stylesheet"
      type="text/css"
      href="assets/vendor/flatpickr/css/flatpickr.min.css"
    />
    <link
      rel="stylesheet"
      type="text/css"
      href="assets/vendor/choices/css/choices.min.css"
    />

    <!-- Theme CSS -->
    <link rel="stylesheet" type="text/css" href="assets/css/style.css" />
  </head>

  <body>
 
<!-- Header START -->
<header class="navbar-light header-sticky" style="font-weight: bold;">
  <!-- Logo Nav START -->
  <nav class="navbar navbar-expand-xl">
      <div class="container">
          <!-- Logo START -->
          <a class="navbar-brand" href="main.html">
            <img style="height: 100px" class="light-mode-item navbar-brand-item" src="assets/images/logo-culture-light.png" alt="logo">
		    		<img style="height: 100px" class="dark-mode-item navbar-brand-item" src="assets/images/logo-culture.png" alt="logo">

          </a>
			<!-- Logo END -->

			<!-- Responsive navbar toggler -->
			<button class="navbar-toggler ms-auto ms-sm-0 p-0 p-sm-2" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-animation">
					<span></span>
					<span></span>
					<span></span>
				</span>
        <span class="d-none d-sm-inline-block small">Menu</span>
			</button>

			<!-- Responsive category toggler -->
			<button class="navbar-toggler ms-sm-auto mx-3 me-md-0 p-0 p-sm-2" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCategoryCollapse" aria-controls="navbarCategoryCollapse" aria-expanded="false" aria-label="Toggle navigation">
				<i class="bi bi-grid-3x3-gap-fill fa-fw"></i><span class="d-none d-sm-inline-block small">Category</span>
			</button>

			<!-- Main navbar START -->
			<div class="navbar-collapse collapse" id="navbarCollapse">
				<ul class="navbar-nav navbar-nav-scroll me-auto">

					<!-- Nav item 홈  -->
					<li class="nav-item">
            <a class="nav-link active" aria-current="page" href="main.html">홈</a>
          </li>

					<!-- Nav item 문화 테마 -->
					<li class="nav-item dropdown">
						<a class="nav-link dropdown-toggle" href="#" id="pagesMenu" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">문화 테마</a>
						<ul class="dropdown-menu" aria-labelledby="pagesMenu">

							<li> <a class="dropdown-item" href="cluture-theme1.html">문화 관광지</a></li>
							<li> <a class="dropdown-item" href="cluture-theme2.html">문화 예술 공연</a></li>
							<li> <a class="dropdown-item" href="cluture-theme3.html">지역 문화 축제</a></li>
							<li> <a class="dropdown-item" href="cluture-theme4.html">액티비티/원데이 클래스</a></li>

						</ul>
					</li>

          <!-- Nav item 음식 투어  -->
					<li class="nav-item">
            <a class="nav-link active" aria-current="page" href="cuisine-tour.html">음식 투어</a>
          </li>

          <!-- Nav item 문화 소식 -->
					<li class="nav-item dropdown">
						<a class="nav-link dropdown-toggle" href="#" id="pagesMenu" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">문화 소식</a>
						<ul class="dropdown-menu" aria-labelledby="pagesMenu">

							<li> <a class="dropdown-item" href="cluture-news1.html">문화 기사</a></li>
							<li> <a class="dropdown-item" href="cluture-news2.html">문화 코스</a></li>
							<li> <a class="dropdown-item" href="cluture-news3.html">쿠폰/혜택</a></li>

						</ul>
					</li>

          <!-- Nav item 리뷰(수다톡) -->
					<li class="nav-item dropdown">
						<a class="nav-link dropdown-toggle" href="#" id="pagesMenu" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">리뷰(수다톡)</a>
						<ul class="dropdown-menu" aria-labelledby="pagesMenu">

							<li> <a class="dropdown-item" href="review-talk1.html">리뷰 게시판</a></li>
							<li> <a class="dropdown-item" href="review-talk2.html">리뷰 참여하기</a></li>

						</ul>
					</li>

          <!-- Nav item 문화(여행) 지도  -->
					<li class="nav-item">
            <a class="nav-link active" aria-current="page" href="cluture-tour-map.html">문화(여행) 지도</a>
          </li>



          <!-- 로그인 하기 전 나중에 자바스크립트로 같은거로 로그인 상태 확인뒤에 보이거나 안보이게-->
          <li class="nav-item" id="login">
            <a class="nav-link active" aria-current="page" href="login.html">로그인</a>
          </li>

					<!-- Nav item 회원 정보 로그인 전/후 차이 둬야할듯-->
					<li class="nav-item dropdown">
						<a class="nav-link dropdown-toggle" href="#" id="pagesMenu" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">회원 정보</a>
						<ul class="dropdown-menu" aria-labelledby="pagesMenu">

							<li> <a class="dropdown-item" href="inform.html">내 정보</a></li>
							<li> <a class="dropdown-item" href="review-talk2.html">비밀번호 변경</a></li>
							<li> <a class="dropdown-item" href="review-talk2.html">SNS 로그인 연동</a></li>
							<li> <a class="dropdown-item" href="review-talk2.html">북마크/리뷰 관리</a></li>
							<li> <a class="dropdown-item" href="review-talk2.html">로그아웃</a></li>

						</ul>
					</li>

					
				</ul>
			</div>
			<!-- Main navbar END -->

                <!-- Toggler button and stay button -->
                <div class="d-flex align-items-center justify-content-end">
                  <!-- Responsive navbar toggler -->
                  <button
                    class="navbar-toggler"
                    type="button"
                    data-bs-toggle="collapse"
                    data-bs-target="#navbarCollapse"
                    aria-controls="navbarCollapse"
                    aria-expanded="false"
                    aria-label="Toggle navigation"
                  >
                    <span class="navbar-toggler-animation">
                      <span></span>
                      <span></span>
                      <span></span>
                    </span>
                    <span class="d-none d-sm-inline-block small">Menu</span>
                  </button>

             
                </div>
              </div>
            </div>
          </div>
        </div>
      </nav>
      <!-- Logo Nav END -->
    </header>
    <!-- Header END -->