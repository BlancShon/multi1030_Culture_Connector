
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">

<head>
	<title> 문화 커넥터 </title>
	<!-- Meta Tags -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="author" content="Webestica.com">
	<meta name="description" content="Booking - Multipurpose Online Booking Theme">

    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=bb83919493996c6c554671877067a90a&libraries=services"></script>

	<!-- Favicon -->
	<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/images/logo-culture-light.png">

	<!-- Google Font -->
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500;700&family=Poppins:wght@400;500;700&display=swap">

	<!-- Plugins CSS -->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/all.min.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/bootstrap-icons.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/tiny-slider.css">
	<link rel="stylesheet" type="text/css" href="a${pageContext.request.contextPath}/resources/css/glightbox.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/css/flatpickr.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />

	<!-- Theme CSS -->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css">

</head>

<body>

	<nav class="navbar navbar-expand-xl">
		<div class="container">
			<!-- Logo START -->
			<a class="navbar-brand" href="main.html">
				<img class="light-mode-item navbar-brand-item" src="${pageContext.request.contextPath}/resources/images/logo-culture-light.png" alt="logo">
				<img class="dark-mode-item navbar-brand-item" src="${pageContext.request.contextPath}/resources/images/logo-culture.png" alt="logo">
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

							<li> <a class="dropdown-item" href="review-talk1.html">내 정보</a></li>
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
			
		
	  </nav>

<!-- **************** MAIN CONTENT START **************** -->
<main>
	
	<!--Main banner START -->
	<section class="py-0">
		<div class="container-fluid px-0">
			<!-- Slider START -->
			<div class="tiny-slider arrow-round arrow-blur">
				<div class="tiny-slider-inner" data-autoplay="true" data-arrow="true" data-gutter="0" data-edge="0" data-dots="false" data-items="3" data-items-md="2" data-items-xs="1">
					<!-- Slider item -->
					<div>
						<a class="w-100 h-100" data-glightbox data-gallery="gallery" href="assets/images/library.jpg">
						
						</a>
					</div>
	
					<!-- Slider item -->
					<div>
						<a class="w-100 h-100" data-glightbox data-gallery="gallery" href="assets/images/library2.jpeg">
						
						</a>
					</div>
	
					<!-- Slider item -->
					<div>
						<a class="w-100 h-100" data-glightbox data-gallery="gallery" href="assets/images/library3.jpeg">
						
						</a>
					</div>
	
					<!-- Slider item -->
					<div>
						<a class="w-100 h-100" data-glightbox data-gallery="gallery" href="assets/images/library4.jpeg">
						
						</a>
					</div>
				</div>
			
			</div>
			<!-- Slider START -->
		</div>
	</section>
	<!-- =======================
	<!-- Main banner END -->

<!-- Title and tabs START -->
<section>
	<div class="container">
		<div class="row">
			<div class="col-12">
				<div class="card bg-light p-0 pb-0">
					<!-- Card body -->
					<div class="card-body d-flex justify-content-between flex-wrap">
						<!-- Title and badge -->
						<div><img src="">
							<!-- Badge -->
							<div class="badge text-bg-dark"><i class="fas fa-building fa-fw text-warning"></i> 문화시설</div>
							<div class="badge text-bg-dark"><img src="${pageContext.request.contextPath}/resources/images/book.svg"> 도서관</div>
							<div class="badge text-bg-dark"><i class="fas fa-star fa-fw text-warning"></i> 4.5</div>
							
							<!-- Title -->
							<h1 class="h3 mt-2 mb-1">구립구산동도서관마을</h1>
							<p class="mb-2 mb-sm-0"><i class="bi bi-geo-alt me-1 text-primary"></i>서울특별시 은평구 연서로13길 29-23</p>
						</div>
						<!-- Buttons -->
						<ul class="list-inline mb-0">
							<!-- wishlist -->
							<li class="list-inline-item">
								<a href="#" class="btn btn-sm btn-white px-2"><i class="fa-solid fa-fw fa-heart"></i></a>
							</li>
							<!-- Share -->
							<li class="list-inline-item dropdown">
								<!-- Share button -->
								<a href="#" class="btn btn-sm btn-white px-2" role="button" id="dropdownShare" data-bs-toggle="dropdown" aria-expanded="false">
									<i class="fa-solid fa-fw fa-share-alt"></i>
								</a>
								<!-- dropdown button -->
								<ul class="dropdown-menu min-w-auto shadow rounded" aria-labelledby="dropdownShare">
									<li><a class="dropdown-item" href="#"><i class="fab fa-whatsapp me-2"></i>whatsapp</a></li>
									<li><a class="dropdown-item" href="#"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24"> 
										<path d="M12 3c5.799 0 10.5 3.664 10.5 8.185 0 4.52-4.701 8.184-10.5 8.184a13.5 13.5 0 0 1-1.727-.11l-4.408 
												2.883c-.501.265-.678.236-.472-.413l.892-3.678c-2.88-1.46-4.785-3.99-4.785-6.866C1.5 6.665 6.201 3 12 3zm5.907 
												8.06l1.47-1.424a.472.472 0 0 0-.656-.678l-1.928 1.866V9.282a.472.472 0 0 0-.944 0v2.557a.471.471 0 0 0 0 .222V13.5a.472.472 0 0 
												0 .944 0v-1.363l.427-.413 1.428 2.033a.472.472 0 1 0 .773-.543l-1.514-2.155zm-2.958 1.924h-1.46V9.297a.472.472 0 0 
												0-.943 0v4.159c0 .26.21.472.471.472h1.932a.472.472 0 1 0 0-.944zm-5.857-1.092l.696-1.707.638 1.707H9.092zm2.523.488l.002-.016a.469.469 0 0 
												0-.127-.32l-1.046-2.8a.69.69 0 0 0-.627-.474.696.696 0 0 0-.653.447l-1.661 4.075a.472.472 0 0 0 .874.357l.33-.813h2.07l.299.8a.472.472 0 1 
												0 .884-.33l-.345-.926zM8.293 9.302a.472.472 0 0 0-.471-.472H4.577a.472.472 0 1 0 0 .944h1.16v3.736a.472.472 0 0 0 .944 0V9.774h1.14c.261 0 .472-.212.472-.472z"/>
									</svg> kakaotalk</a></li>
									<li><a class="dropdown-item" href="#"><i class="fab fa-facebook me-2"></i>Twitter</a></li>
									<li><a class="dropdown-item" href="#"><i class="fab fa-linkedin me-2"></i>LinkedIn</a></li>
									<li><a class="dropdown-item" href="#"><i class="fa-solid fa-copy me-2"></i>Copy link</a></li>
								</ul>
							</li>
							<!-- Report -->
							<li class="list-inline-item">
								<a href="#" class="btn btn-sm btn-white px-2"><i class="bi bi-exclamation-triangle-fill fa-fw"></i></a>
							</li>
						</ul>
					</div>
					<!-- Card footer -->
				
				</div>
			</div>
		</div>
	</div>

</section>
<!-- =======================
Title and tabs END -->

<!-- =======================
Content START -->
<section class="pt-0">
	<div class="container">
		<!-- Tabs contents START -->
		<div class="tab-content mb-0" id="tour-pills-tabContent">

			<!-- Content item START -->
			<div class="tab-pane fade show active" id="tab-1" role="tabpanel" aria-labelledby="tab-1">
				<div class="row g-4 g-lg-5">
					<!-- Left side START -->
					<div class="col-lg-7 col-xl-8">
						<!-- Card START -->
						<div class="card bg-transparent mb-4">
							<!-- Card header -->
							<div class="card-header bg-transparent border-bottom px-0 pt-0">
								<h4 class="mb-0">상세정보</h4>
							</div>
							<!-- Card body -->
							<div class="card-body px-0 pb-0">
								<p class="mb-3">서울시 은평구 구산동 주택가 한복판에 자리한 구산동도서관마을은 외관부터 특이하다. 크고 번듯한 하나의 건물이 아니라, 서로 다른 모양과 색깔의 건물 여럿이 모여 도서관을 이루고 있다. 여러 집이 모여 하나의 마을을 이루는 것처럼. 지금은 도서관이 된 건물들도 이전에는 사람들이 살던 집이었다. 낡은 연립주택 세 동을 리모델링한 후 도서관 하나를 만든 것이다. 

 

									구산동도서관마을의 공간 구성은 아주 독특하다. 원래 골목길이었던 도서관 로비부터가 그렇다. 붉은 벽돌로 지어진 옛 건물과 새로 지은 건물이 독특하게 어우러진 로비를 지나면, 다른 도서관처럼 거대한 열람공간 대신 기존의 방들을 최대한 살려 누구나 편안하게 책을 볼 수 있는 아늑한 공간들이 나온다. 5층짜리 도서관에는 55개나 되는 크고 작은 방에 분야별로 나뉜 서가와 여러 가지 시설이 자리 잡았다. 이런 공간은 마치 미로처럼 이어진다. 길 중간에 뜻밖의 계단이 나타나고, 층계를 오르다 보면 콘크리트 벽이 붉은 벽돌로 바뀌는 식이다. 계단 벽에는 주요 공간들의 옛날과 현재 사진이 비교 전시되어 공간의 역사를 느낄 수 있다. </p>

								<p class="mb-0">마을 주민들이 직접 도서관을 운영하니, 지역 맞춤, 주민 맞춤형 프로그램이 가득하다. 작년에는 주민참여예산을 지원받아 ‘도서관 마을학교’를 진행했다. 장장 7개월 동안 진행된 프로그램에 참여한 주민들은 후속모임을 거쳐 독서 동아리를 구성하고 구산동도서관마을 독사활동가로 활동하고 있다. 은평구뿐 아니라 이웃 지역의 기관, 단체 등과 다양한 연계 프로그램도 진행 중이다. </p>
							</div>
						</div>
						<!-- Card END -->

						<!-- Card START -->
						<div class="card bg-transparent">
							<!-- Card header -->
							<div class="card-header bg-transparent border-bottom px-0">
								<h4 class="mb-0">Image Gallery</h4>
							</div>
							<!-- Card body -->
							<div class="card-body px-0 pb-0">
								<div class="row g-4">
									<div class="col-md-4">
										<a class="w-100 h-100" data-glightbox data-gallery="gallery" href="assets/images/library.jpg">
										
										</a>
									</div>

									<div class="col-md-4">
										<a class="w-100 h-100" data-glightbox data-gallery="gallery" href="assets/images/library2.jpeg">
										
										</a>
									</div>

									<div class="col-md-4">
										<a class="w-100 h-100" data-glightbox data-gallery="gallery" href="assets/images/library3.jpeg">
										
										</a>
									</div>

									<div class="col-md-4">
										<a class="w-100 h-100" data-glightbox data-gallery="gallery" href="assets/images/library4.jpeg">
											
										</a>
									</div>

									<div class="col-md-4">
										<a class="w-100 h-100" data-glightbox data-gallery="gallery" href="assets/images/category/directory/10.jpg">
										
										</a>
									</div>

									<div class="col-md-4">
										<a class="w-100 h-100" data-glightbox data-gallery="gallery" href="assets/images/category/directory/08.jpg">
										
										</a>
									</div>

									<div class="col-md-4">
										<a class="w-100 h-100" data-glightbox data-gallery="gallery" href="assets/images/category/directory/07.jpg">
										
										</a>
									</div>
								</div>
							</div>
						</div>
						<!-- Card END -->
					</div>
					<!-- Left side END -->

					<!-- Right side START -->
					<div class="col-lg-5 col-xl-4">
						<!-- Direction START -->
						<div class="card shadow mb-4">
							<!-- Card header -->
							<div class="card-header border-bottom">
								<h5 class="mb-0">위치 정보</h5>
							</div>

							<!-- Card body -->
							<div class="card-body">
								<!-- Map START -->
								
								<div id="map" style="width:100%;height:270px;"></div>
								<script>

								var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
									mapOption = {
										center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
										level: 1 // 지도의 확대 레벨
									};  

								// 지도를 생성합니다    
								var map = new kakao.maps.Map(mapContainer, mapOption); 

								// 주소-좌표 변환 객체를 생성합니다
								var geocoder = new kakao.maps.services.Geocoder();

								// 주소로 좌표를 검색합니다
								geocoder.addressSearch('서울 은평구 연서로13길 29-23 구산동도서관마을', function(result, status) {

									// 정상적으로 검색이 완료됐으면 
									if (status === kakao.maps.services.Status.OK) {

										var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

										// 결과값으로 받은 위치를 마커로 표시합니다
										var marker = new kakao.maps.Marker({
											map: map,
											position: coords
										});

										// 인포윈도우로 장소에 대한 설명을 표시합니다
										var infowindow = new kakao.maps.InfoWindow({
											content: '<div style="width:150px;text-align:center;padding:6px 0;">구산동도서관마을</div>'
										});
										infowindow.open(map, marker);

										// 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
										map.setCenter(coords);
									} 
								});    
								</script>
								<!-- Info -->
								<ul class="list-group list-group-borderless my-3">
									<!-- Address -->
									<li class="list-group-item">
										<a href="#" class="h6 fw-normal mb-0">
											<i class="bi fa-fw bi-geo-alt me-2"></i>서울특별시 은평구 연서로13길 29-23
										</a>
									</li>
									<!-- Call no -->
									<li class="list-group-item">
										<a href="#" class="h6 fw-normal mb-0">
											<i class="bi fa-fw bi-telephone-forward me-2"></i>+82 02-357-0100
										</a>
									</li>
									<!-- Email -->
									<li class="list-group-item">
										<a href="#" class="h6 fw-normal mb-0">
											<i class="bi fa-fw bi-envelope me-2"></i>example@gmail.com
										</a>
									</li>
								</ul>
								<!-- Social button -->
								<ul class="list-inline mb-0 mt-3">
									<li class="list-inline-item">Follow us on: </li>
									<li class="list-inline-item"> <a class="btn btn-sm px-2 bg-facebook mb-0" href="https://www.facebook.com/gsvlib/?locale=ko_KR"><i class="fab fa-fw fa-facebook-f"></i></a> </li>
									<li class="list-inline-item"> <a class="btn btn-sm shadow px-2 bg-instagram mb-0" href="#"><i class="fab fa-fw fa-instagram"></i></a> </li>
									<li class="list-inline-item"> <a class="btn btn-sm shadow px-2 bg-twitter mb-0" href="#"><i class="fab fa-fw fa-twitter"></i></a> </li>
									<li class="list-inline-item"> <a class="btn btn-sm shadow px-2 bg-linkedin mb-0" href="#"><i class="fab fa-fw fa-linkedin-in"></i></a> </li>
								</ul>
							</div>
						</div>
						<!-- Direction END -->

						<!-- Time table START -->
						<div class="card shadow">
							<!-- Card header -->
							<div class="card-header border-bottom">
								<h5 class="mb-0">Working Hours</h5>
							</div>

							<!-- Card body -->
							<div class="card-body">
								<ul class="list-group list-group-borderless mb-0">
									<li class="list-group-item d-flex justify-content-between">
										<span>월요일</span>
										<span>09:00~22:00</span>
									</li>

									<li class="list-group-item py-0"><hr class="my-1"></li>

									<li class="list-group-item d-flex justify-content-between">
										<span>화요일</span>
										<span>09:00~22:00</span>
									</li>

									<li class="list-group-item py-0"><hr class="my-1"></li>

									<li class="list-group-item d-flex justify-content-between">
										<span>수요일</span>
										<span>09:00~22:00</span>
									</li>

									<li class="list-group-item py-0"><hr class="my-1"></li>

									<li class="list-group-item d-flex justify-content-between">
										<span>목요일</span>
										<span>09:00~22:00</span>
									</li>

									<li class="list-group-item py-0"><hr class="my-1"></li> 

									<li class="list-group-item d-flex justify-content-between">
										<span>금요일</span>
										<span>09:00~22:00</span>
									</li>

									<li class="list-group-item py-0"><hr class="my-1"></li> 

									<li class="list-group-item d-flex justify-content-between">
										<span>토요일</span>
										<span>09:00~18:00</span>
									</li>

									<li class="list-group-item py-0"><hr class="my-1"></li> 

									<li class="list-group-item d-flex justify-content-between">
										<span>일요일</span>
										<span>09:00~18:00</span>
									</li>
								</ul>
							</div>
						</div>
						<!-- Time table END -->
					</div>
					<!-- Right side END -->
				</div>
			</div>
			<!-- Content item END -->

		
</div>
	</div>		
</section>
</main>
<!-- **************** MAIN CONTENT END **************** -->

<!-- =======================
Footer START -->
<footer class="bg-dark pt-5">
  <div class="container">
      <!-- Row START -->
      <div class="row g-4">
          <!-- Widget 1 START -->
          <div class="col-lg-3">
              <!-- logo -->
              <a href="index.html">
                  <img class="h-40px" src="assets/images/logo-culture-light.png" alt="로고">
              </a>
              <p class="my-3 text-body-secondary">
                  문화커넥터와 함께 떠나는 문화여행
              </p>
             
          </div>
          <!-- Widget 1 END -->

          <!-- Widget 2 START -->
          <div class="col-lg-8 ms-auto">
              <div class="row g-4">
                  <!-- Link block -->
                  <div class="col-6 col-md-3">
                      <h5 class="text-white mb-2 mb-md-4">페이지</h5>
                      <ul class="nav flex-column text-primary-hover">
                          <li class="nav-item">
                              <a class="nav-link text-body-secondary" href="main.html"
                              >홈</a
                              >
                          </li>
                          <li class="nav-item">
                              <a class="nav-link text-body-secondary" href="cluture-theme1.html"
                              >문화 테마</a
                              >
                          </li>
                          <li class="nav-item">
                              <a class="nav-link text-body-secondary" href="cuisine-tour.html"
                              >음식 투어</a
                              >
                          </li>
                          <li class="nav-item">
                              <a class="nav-link text-body-secondary" href="cluture-news1.html"
                              >문화 소식</a
                              >
                          </li>
                          <li class="nav-item">
                              <a class="nav-link text-body-secondary" href="review-talk1.html"
                              >리뷰(수다톡)</a
                              >
                          </li>
                          <li class="nav-item">
                              <a class="nav-link text-body-secondary" href="cluture-tour-map.html"
                              >문화(여행) 지도</a
                              >
                          </li>
                      </ul>
                  </div>

                  <!-- Link block -->
                  <div class="col-6 col-md-3">
                      <h5 class="text-white mb-2 mb-md-4">회원정보</h5>
                      <ul class="nav flex-column text-primary-hover">
                          <li class="nav-item">
                              <a class="nav-link text-body-secondary" href="#">가입하기</a>
                          </li>
                          <li class="nav-item">
                              <a class="nav-link text-body-secondary" href="sign-in.html">로그인</a>
                          </li>
                          <li class="nav-item">
                              <a class="nav-link text-body-secondary" href="#"
                              >내정보</a
                              >
                          </li>
                         
                      </ul>
                  </div>
                  

              
           
          </div>
          <!-- Widget 2 END -->
      </div>
      <!-- Row END -->

     
  </div>
     <!-- Bottom footer -->
  <div class="row">
    <div class="container">
      <div
        class="d-lg-flex justify-content-between align-items-center py-3 text-center text-lg-start"
      >
        <!-- copyright text -->
        <div class="text-body-secondary text-primary-hover">
          저작권 ©2024 멀티캠퍼스 문화커넥터
       
        </div>
     
      </div>
    </div>
  </div>
</div>
</footer>
<!-- Footer END -->



<!-- Back to top -->
<div class="back-top"></div>

<!-- Bootstrap JS -->
<script src="assets/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>

<!-- Vendors -->
<script src="assets/vendor/tiny-slider/tiny-slider.js"></script>
<script src="assets/vendor/purecounterjs/dist/purecounter_vanilla.js"></script>
<script src="assets/vendor/glightbox/js/glightbox.js"></script>
<script src="assets/vendor/flatpickr/js/flatpickr.min.js"></script>
<script src="assets/vendor/choices/js/choices.min.js"></script>
<script src="assets/vendor/jarallax/jarallax.min.js"></script>
<script src="assets/vendor/jarallax/jarallax-video.min.js"></script>

<!-- ThemeFunctions -->
<script src="assets/js/functions.js"></script>
</body>
</html>

