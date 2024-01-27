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
      name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"
    />
   
    

    <!-- Logo -->
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/images/logo-culture-light.png" />

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
      href="${pageContext.request.contextPath}/resources/vendor/font-awesome/css/all.min.css"
    />
    <link
      rel="stylesheet"
      type="text/css"
      href="${pageContext.request.contextPath}/resources/vendor/bootstrap-icons/bootstrap-icons.css"
    />
    <link
      rel="stylesheet"
      type="text/css"
      href="${pageContext.request.contextPath}/resources/vendor/tiny-slider/tiny-slider.css"
    />
    <link
      rel="stylesheet"
      type="text/css"
      href="${pageContext.request.contextPath}/resources/vendor/glightbox/css/glightbox.css"
    />
    <link
      rel="stylesheet"
      type="text/css"
      href="${pageContext.request.contextPath}/resources/vendor/flatpickr/css/flatpickr.min.css"
    />
    <link
      rel="stylesheet"
      type="text/css"
      href="${pageContext.request.contextPath}/resources/vendor/choices/css/choices.min.css"
    />

    <!-- Theme CSS -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css" />
  </head>

  <body>
 
<!-- Header START -->
<header class="navbar-light header-sticky" style="font-weight: bold;">
  <!-- Logo Nav START -->
  <nav class="navbar navbar-expand-xl">
      <div class="container">
          <!-- Logo START -->
          <a class="navbar-brand" href="${path}/home">
            <img style="height: 100px" class="light-mode-item navbar-brand-item" src="${pageContext.request.contextPath}/resources/images/logo-culture-light.png" alt="logo">
		    		<img style="height: 100px" class="dark-mode-item navbar-brand-item" src="${pageContext.request.contextPath}/resources/images/logo-culture.png" alt="logo">

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
            <a class="nav-link active" aria-current="page" href="${path}/home">홈</a>
          </li>

					<!-- Nav item 문화 테마 -->
					<li class="nav-item dropdown">
						<a class="nav-link dropdown-toggle" href="#" id="pagesMenu" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">문화 테마</a>
						<ul class="dropdown-menu" aria-labelledby="pagesMenu">

							<li> <a class="dropdown-item" href="${pageContext.request.contextPath}/culture/list">문화 관광지</a></li>
							<li> <a class="dropdown-item" href="${pageContext.request.contextPath}/cultureTheme2">문화 예술 공연</a></li>
							<li> <a class="dropdown-item" href="${pageContext.request.contextPath}/cultureTheme3">지역 문화 축제</a></li>
							<li> <a class="dropdown-item" href="${pageContext.request.contextPath}/leports/list">액티비티/원데이 클래스</a></li>

						</ul>
					</li>

         <!-- Nav item 음식 투어  -->
          
					<li class="nav-item dropdown">
						  <a class="nav-link dropdown-toggle" href="${pageContext.request.contextPath}/food" id="pagesMenu" data-bs-toggle="dropdown" >음식투어</a>
						  <ul class="dropdown-menu" aria-labelledby="pagesMenu">
			  
							  <li> <a class="dropdown-item" href="${pageContext.request.contextPath}/food">통합 검색</a></li>
							  <li> <a class="dropdown-item" href="${pageContext.request.contextPath}/foodSearch">상세 검색</a></li>
			  
						  </ul>
						</li>

          <!-- Nav item 문화 소식 -->
					<li class="nav-item dropdown">
						<a class="nav-link dropdown-toggle" href="#" id="pagesMenu" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">문화 소식</a>
						<ul class="dropdown-menu" aria-labelledby="pagesMenu">

							<li> <a class="dropdown-item" href="${pageContext.request.contextPath}/cultureNews1">문화 기사</a></li>
							<li> <a class="dropdown-item" href="${pageContext.request.contextPath}/course/list">문화 코스</a></li>
							<li> <a class="dropdown-item" href="${pageContext.request.contextPath}/cultureNews3">쿠폰/혜택</a></li>

						</ul>
					</li>

          <!-- Nav item 리뷰(수다톡) -->
					<li class="nav-item dropdown">
						<a class="nav-link dropdown-toggle" href="#" id="pagesMenu" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">리뷰(수다톡)</a>
						<ul class="dropdown-menu" aria-labelledby="pagesMenu">

							<li> <a class="dropdown-item" href="${path}/board/list">리뷰 게시판</a></li>
							<li> <a class="dropdown-item" href="${pageContext.request.contextPath}/reviewTalk2.html">리뷰 참여하기</a></li>
							<li> <a class="dropdown-item" href="${path}/festival/searchTestList">검색 테스트</a></li>
							<li> <a class="dropdown-item" href="${path}/dbsave">데이터베이스 저장</a></li>
							<!--  검색 테스트는 테스트 끝나면 지울겁니다 데베저장도 마찬가지 -->
						</ul>
					</li>

          <!-- Nav item 문화(여행) 지도  -->
					<li class="nav-item">
            <a class="nav-link active" aria-current="page" href="${pageContext.request.contextPath}/clutureTourMap">문화(여행) 지도</a>
          </li>


          <script>
            // 페이지가 로드되면 실행될 함수
            document.addEventListener('DOMContentLoaded', function () {
                // 서버로부터 로그인 상태를 받아옵니다.
                // 이 예제에서는 임의로 로그인 상태를 설정했습니다.
                // 실제 구현에서는 서버로부터 이 값을 가져와야 합니다.
                var isUserLoggedIn = false; // 예제를 위해 false로 설정, 실제 구현에서는 서버로부터의 데이터를 사용하세요.
            
                // 로그인 상태에 따라 메뉴 옵션을 변경합니다.
                if (isUserLoggedIn) {
                    // 로그인 상태일 때 보여줄 요소
                    document.getElementById('login').style.display = 'none'; // 로그인 버튼 숨기기
                    document.getElementById('user-info').style.display = 'block'; // 사용자 정보 메뉴 보이기
                } else {
                    // 비로그인 상태일 때 보여줄 요소
                    document.getElementById('login').style.display = 'block'; // 로그인 버튼 보이기
                    document.getElementById('user-info').style.display = 'none'; // 사용자 정보 메뉴 숨기기
                }
            });
            </script>

          <!-- 로그인 하기 전 나중에 자바스크립트로 같은거로 로그인 상태 확인뒤에 보이거나 안보이게-->
          <c:if test="${loginMember == null}">
          <li class="nav-item" id="login">
            <a class="nav-link active" aria-current="page" href="${path}/loginForm">로그인</a>
          </li>
          </c:if>

					<!-- Nav item 회원 정보 로그인 전/후 차이 둬야할듯-->
					<c:if test="${loginMember != null}">
					<li class="nav-item dropdown" id="user-info">
						<a class="nav-link dropdown-toggle" href="/member/view" id="pagesMenu" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="true">회원 정보</a>
						<ul class="dropdown-menu" aria-labelledby="pagesMenu">

							<li> <a class="dropdown-item" href="${pageContext.request.contextPath}/inform">내 정보</a></li>
							<li> <a class="dropdown-item" href="review-talk2.html">비밀번호 변경</a></li>
							<li> <a class="dropdown-item" href="review-talk2.html">SNS 로그인 연동</a></li>
							<li> <a class="dropdown-item" href="${path}/member/viewWishList">북마크/리뷰 관리</a></li>
							<li> <a class="dropdown-item" href="${path}/logout">로그아웃</a></li>

						</ul>
					</li>
					</c:if>
					
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