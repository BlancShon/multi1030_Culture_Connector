<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<jsp:include page="/WEB-INF/views/common/cultureheader.jsp">
	<jsp:param value="Culture Connector" name="title"/>
</jsp:include>

<c:set var="path" value="${pageContext.request.contextPath}"/>

<!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"> -->
<!-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" -->
<!-- 	integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous"> -->
<!-- <script defer src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" -->
<!-- 	integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" -->
<!-- 	crossorigin="anonymous"></script> -->
<!-- <meta name="author" content="Webestica.com" /> -->
<!-- <meta name="description" content="Booking - Multipurpose Online Booking Theme" /> -->


	<!-- 카카오톡 공유 기능 사용하는데 필요한 자바스크립트 파일 -->
	<script src="https://t1.kakaocdn.net/kakao_js_sdk/2.6.0/kakao.min.js" ></script> 
	
	<!-- 카카오맵 기능 사용하는데 필요한 자바스크립트 파일/ appkey는 kakaoDeveloper 사이트에서 생성한 고유 javaScript 키를 입력하면 됩니다. -->
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=3209ad17db60f2bfe7a8c0129f6fd91e"></script>



    
<!-- **************** MAIN CONTENT START **************** -->
	
								
<!-- **************** MAIN CONTENT START **************** -->
<main>

<!-- =======================
Main banner START -->
<section class="py-0">
	<div class="container-fluid px-0">
		<!-- Slider START -->
		<div class="tiny-slider arrow-round arrow-blur">
			<div class="tiny-slider-inner" data-autoplay="true" data-arrow="true" data-gutter="0" data-edge="0" data-dots="false" data-items="3" data-items-md="2" data-items-xs="1">
				<!-- Slider item -->
				<div>
					<a class="w-100 h-100" data-glightbox data-gallery="gallery" href="${pageContext.request.contextPath}/resources/images/festival1.jpg">
						<div class="card card-element-hover card-overlay-hover rounded-0 overflow-hidden">
							<!-- Image -->
							<img src="${pageContext.request.contextPath}/resources/images/festival1.jpg" class="" alt="">
							<!-- Full screen button -->
							<div class="hover-element w-100 h-100">
								<i class="bi bi-fullscreen fs-6 text-white position-absolute top-50 start-50 translate-middle bg-dark rounded-1 p-2 lh-1"></i>
							</div>
						</div>
					</a>
				</div>

<!-- 				Slider item -->
				<div>
					<a class="w-100 h-100" data-glightbox data-gallery="gallery" href="${pageContext.request.contextPath}/resources/images/festival3.jpg">
						<div class="card card-element-hover card-overlay-hover rounded-0 overflow-hidden">
<!-- 							Image -->
							<img src="${pageContext.request.contextPath}/resources/images/festival3.jpg" class="" alt="">
<!-- 							Full screen button -->
							<div class="hover-element w-100 h-100">
								<i class="bi bi-fullscreen fs-6 text-white position-absolute top-50 start-50 translate-middle bg-dark rounded-1 p-2 lh-1"></i>
							</div>
						</div>
					</a>
				</div>
<!-- 				Slider item -->
				<div>
					<a class="w-100 h-100" data-glightbox data-gallery="gallery" href="${pageContext.request.contextPath}/resources/images/festival6.jpg">
						<div class="card card-element-hover card-overlay-hover rounded-0 overflow-hidden">
<!-- 							Image -->
							<img src="${pageContext.request.contextPath}/resources/images/festival6.jpg" class="" alt="">
<!-- 							Full screen button -->
							<div class="hover-element w-100 h-100">
								<i class="bi bi-fullscreen fs-6 text-white position-absolute top-50 start-50 translate-middle bg-dark rounded-1 p-2 lh-1"></i>
							</div>
						</div>
					</a>
				</div>
<!-- 				Slider item -->
				<div>
					<a class="w-100 h-100" data-glightbox data-gallery="gallery" href="${pageContext.request.contextPath}/resources/images/festival4.jpg">
						<div class="card card-element-hover card-overlay-hover rounded-0 overflow-hidden">
<!-- 							Image -->
							<img src="${pageContext.request.contextPath}/resources/images/festival4.jpg" class="" alt="">
<!-- 							Full screen button -->
							<div class="hover-element w-100 h-100">
								<i class="bi bi-fullscreen fs-6 text-white position-absolute top-50 start-50 translate-middle bg-dark rounded-1 p-2 lh-1"></i>
							</div>
						</div>
					</a>
				</div>

<!-- 				Slider item -->
<!-- 				<div> -->
<%-- 					<a class="w-100 h-100" data-glightbox data-gallery="gallery" href="${pageContext.request.contextPath}/resources/images/america.jpg"> --%>
<!-- 						<div class="card card-element-hover card-overlay-hover rounded-0 overflow-hidden"> -->
<!-- <!-- 							Image --> 
<%-- 							<img src="${pageContext.request.contextPath}/resources/images/america.jpg" class="" alt=""> --%>
<!-- <!-- 							Full screen button --> 
<!-- 							<div class="hover-element w-100 h-100"> -->
<!-- 								<i class="bi bi-fullscreen fs-6 text-white position-absolute top-50 start-50 translate-middle bg-dark rounded-1 p-2 lh-1"></i> -->
<!-- 							</div> -->
<!-- 						</div> -->
<!-- 					</a> -->
<!-- 				</div> -->
			</div>
		</div>
		<!-- Slider START -->
	</div>
</section>
<!-- =======================
Main banner END -->

<!-- =======================
Title and tabs START -->
<section>
	<div class="container">
		<div class="row">
			<div class="col-12">
				<div class="card bg-light p-0 pb-0">
					<!-- Card body -->
					<div class="card-body d-flex justify-content-between flex-wrap">
						<!-- Title and badge -->
						<div>
							<!-- Badge -->
							<div class="badge text-bg-dark mb-2"><i class="bi bi-yin-yang fa-fw text-warning"></i> Festival</div>
							<!-- 가게이름 -->
							<h1 class="h3 mt-2 mb-2">${festival.title}</h1>

							<!-- 주소 addr1-->
							<p class="mb-2 mb-sm-0"><i class="bi bi-geo-alt me-1 text-primary"></i>${festival.addr1}</p>
							<!-- 주요 메뉴-->
							<p class="mb-2 mb-sm-0"><i class="bi bi-signpost-fill fa-fw text-primary"></i>${festival.eventplace}</p>
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
										<li><a class="dropdown-item" href="#"><i class="fab fa-twitter-square me-2"></i>Twitter</a></li>
										<li><a class="dropdown-item" href="#"><i class="fab fa-facebook-square me-2"></i>Facebook</a></li>
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
									<div class="card-footer bg-transparent border-top py-0">
										<ul class="nav nav-tabs nav-bottom-line nav-responsive border-0" role="tablist">
											<li class="nav-item"> <a class="nav-link mb-0 active" data-bs-toggle="tab" href="#tab-1">소개</a> </li>
										</ul>
									</div>
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
								 <h4 class="mb-0"><i class="fa-solid bi bi-card-list text-primary me-2"></i>상세 내용</h4>
							</div>
							<br> 
							<!-- 상세설명 overView -->
							<p class="mb-3"><b>${festival.overview}
							</p></b>
							
							<div class="card-body px-0 pb-0">
								<img src="${festival.firstimage}" class="card-img" alt="">
										<!-- Full screen button -->
										<div class="hover-element w-100 h-100">
											<i class="fs-6  top-50 start-50 translate-middle  rounded-1 p-2 lh-1"></i>
										</div>
									

							</div>
						</div>
						<!-- Card END -->
						<!-- Direction START -->
						<div class="card shadow mb-4">
							<!-- Card header -->
							<div class="card-header border-bottom">
								<h4 class="mb-0"><b><i class="fa-solid bi bi-geo-alt-fill text-primary me-2"></i>축제 위치&nbsp</h5></b>
							</div>

							<!-- Card body -->
							<div class="card-body">
								<!-- Map START -->
<!-- 								<iframe class="w-100 " src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3022.9663095343008!2d-74.00425878428698!3d40.74076684379132!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c259bf5c1654f3%3A0xc80f9cfce5383d5d!2sGoogle!5e0!3m2!1sen!2sin!4v1586000412513!5m2!1sen!2sin" height="200" style="border:0;" aria-hidden="false" tabindex="0"></iframe> -->
									
								<section id="container">
									<div id="map" style="width:100%;height:400px;"></div>
								</section>

							<script>
								var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
							    mapOption = { 
								        center: new kakao.maps.LatLng(${festival.mapy}, ${festival.mapx}), // 지도의 중심좌표
								        level: 4 // 지도의 확대 레벨
								    };
								
								var map = new kakao.maps.Map(mapContainer, mapOption);
								
								//마커를 표시할 위치와 내용을 가지고 있는 객체 배열입니다 
								var positions = [
										{
										    content: '<div>${festival.title}</div>', 
										    latlng: new kakao.maps.LatLng(${festival.mapy}, ${festival.mapx})
										},
								];
								
								for (var i = 0; i < positions.length; i ++) {
								// 마커를 생성합니다
								var marker = new kakao.maps.Marker({
								    map: map, // 마커를 표시할 지도
								    position: positions[i].latlng // 마커의 위치
								});
								
								// 마커에 표시할 인포윈도우를 생성합니다 
								var infowindow = new kakao.maps.InfoWindow({
								    content: positions[i].content // 인포윈도우에 표시할 내용
								});
								
								// 마커에 mouseover 이벤트와 mouseout 이벤트를 등록합니다
								// 이벤트 리스너로는 클로저를 만들어 등록합니다 
								// for문에서 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
								kakao.maps.event.addListener(marker, 'mouseover', makeOverListener(map, marker, infowindow));
								kakao.maps.event.addListener(marker, 'mouseout', makeOutListener(infowindow));
								}
								
								//인포윈도우를 표시하는 클로저를 만드는 함수입니다 
								function makeOverListener(map, marker, infowindow) {
								return function() {
								    infowindow.open(map, marker);
								};
								}
								
								//인포윈도우를 닫는 클로저를 만드는 함수입니다 
								function makeOutListener(infowindow) {
								return function() {
								    infowindow.close();
								};
								}
							</script>
								
								
								<!-- Info -->
								<ul class="list-group list-group-borderless my-3">
									<!-- Address // addr1-->
									<li class="list-group-item">
										<a href="#" class="h6 fw-normal mb-0">
											<i class="bi fa-fw bi-geo-alt me-2"></i>${festival.addr1}
										</a>
									</li>
									<!-- Call no // tel -->
									<li class="list-group-item">
										<a href="#" class="h6 fw-normal mb-0">
											<i class="bi fa-fw bi-telephone-forward me-2"></i>${festival.sponsor1tel}
										</a>
									</li>
									<!-- Email -->
									<!-- <li class="list-group-item">
										<a href="#" class="h6 fw-normal mb-0">
											<i class="bi fa-fw bi-envelope me-2"></i>example@gmail.com
										</a>
									</li> -->
								</ul>
							</div>
						</div>
						<!-- Direction END -->
						<!-- Card START -->
							<!-- Card header -->
							
							<!-- Card body -->
							
						<!-- Card END -->
					</div>
					<!-- Left side END -->

					<!-- Right side START -->
					<div class="col-lg-5 col-xl-4">

						<br>
						<br>
						<!-- Time table START -->
						
						<div class="card shadow">
							<!-- Card header -->
							<div class="card-header border-bottom">
								<h5 class="mb-0">추가 이미지</h5>
								<hr>
							</div>
						</div>
						<div class="card-body" >
								<a class="w-100 h-100" data-glightbox data-gallery="gallery" href="${festival.image1}">
									<div class="card card-element-hover card-overlay-hover overflow-hidden">
										<!-- Image -->
										<img src="${festival.image1}" class="card-img" alt="">
										<!-- Full screen button -->
										<div class="hover-element w-100 h-100">
											<i class="bi bi-fullscreen fs-6 text-white position-absolute top-50 start-50 translate-middle bg-dark rounded-1 p-2 lh-1"></i>
										</div>
									</div>
								</a>
						</div>
						<br>
						<div class="card-body">
								<a class="w-100 h-100" data-glightbox data-gallery="gallery" href="${festival.image3}">
									<div class="card card-element-hover card-overlay-hover overflow-hidden">
										<!-- Image -->
										<img src="${festival.image3}" class="card-img" alt="">
										<!-- Full screen button -->
										<div class="hover-element w-100 h-100">
											<i class="bi bi-fullscreen fs-6 text-white position-absolute top-50 start-50 translate-middle bg-dark rounded-1 p-2 lh-1"></i>
										</div>
									</div>
								</a>
						</div>
						<br>
						<br>

						<div class="card shadow">
							<!-- Card header -->
							<div class="card-header border-bottom">
								<h5 class="mb-0">안내 사항</h5>
							</div>

							<!-- http://apis.data.go.kr/B551011/KorService1/detailIntro1? -->
							<!-- Card body -->
							<div class="card-body">
							
									<ul class="list-group list-group-borderless mb-0">
									<li class="list-group-item d-flex justify-content-between">
										<span>축제 이름</span>
										<!-- tel -->
										<span>${festival.title}</span>
									</li>
									
									<li class="list-group-item py-0"><hr class="my-1"></li>
									<li class="list-group-item d-flex justify-content-between">
										<span>문의 및 안내</span>
										<!-- tel -->
										<span>${festival.tel}</span>
									</li>

									<li class="list-group-item py-0"><hr class="my-1"></li>
									<li class="list-group-item d-flex justify-content-between">
										<span>스폰서</span>
										<!-- parkingfood -->
										<span>${festival.sponsor1}</span>
									</li>

									<li class="list-group-item py-0"><hr class="my-1"></li>
									<li class="list-group-item d-flex justify-content-between">
										<span>운영 시간</span>
										<!-- opentimefood -->
										<span>${festival.playtime}</span>
									</li>

									<li class="list-group-item py-0"><hr class="my-1"></li>

									<li class="list-group-item d-flex justify-content-between">
										<span>시작 일자</span>
										<!-- restdatefood -->
										<span>${festival.eventstartdate}</span>
									</li>

									<li class="list-group-item py-0"><hr class="my-1"></li> 

									<li class="list-group-item d-flex justify-content-between">
										<span>마감 일자</span>
										<!-- reservationfood -->
										<span>${festival.eventenddate}</span>
									</li>

									<li class="list-group-item py-0"><hr class="my-1"></li> 

									<li class="list-group-item d-flex justify-content-between">
										<span>가능 연령</span>
										<!-- chkcreditcardfood -->
										<span>${festival.agelimit}</span>
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

			<!-- Content item START -->
			<div class="tab-pane fade" id="tab-2" role="tabpanel" aria-labelledby="tab-2">
				<div class="row g-4">
					<!-- Left side START -->
					<div class="col-lg-8">
						<!-- Card item -->
						<div class="card card-body border mb-4">
							<!-- Badge -->
							<div class="d-sm-flex justify-content-between mb-2">
								<div class="mb-2 mb-sm-0">
									<div class="badge text-bg-dark"><i class="bi bi-bag-fill fa-fw text-warning"></i> 포장시</div>
									<div class="badge text-bg-success">5천원 할인</div>
								</div>	
								<span class="text-success">첫 이용 고객 무료 쿠폰</span>
							</div>	
							<!-- Title // title-->
							<h5 class="card-title mb-2">가고파부치기<a href="#"></a>&nbsp 5천원 할인 쿠폰</h5>
							
							<!-- List -->
							<div class="d-flex align-items-center flex-wrap">
								<span class="me-2">사용 제한</span>
								<ul class="nav nav-divider h6 fw-light mb-0">
									<li class="nav-item"><i class=""></i>1회</li>
									<li class="nav-item"><i class="bi bi-calendar me-1"></i>평일 사용</li>
									<li class="nav-item"><i class="bi bi-clock me-1"></i>11 AM - 6 PM</li>
								</ul>
							</div>

							<!-- Price and button -->
							<div class="d-sm-flex justify-content-between mt-4">
								<div class="hstack gap-1">
									<h5 class="mb-0">0원</h5>
									<span class="text-decoration-line-through">5,000원</span>
								</div>
								<div class="mt-2 mt-sm-0">
									<a href="#" class="btn btn-sm btn-light mb-0" data-bs-toggle="modal" data-bs-target="#detailModal">사용 안내</a>
									<a href="#" class="btn btn-sm btn-primary mb-0"><i class="bi bi-plus-lg"></i> 담기</a>
								</div>	
							</div>
						</div>

						<!-- Card item -->
					</div>
					<!-- Left side END -->

					<!-- Right side START -->
					<div class="col-lg-4">
						<!-- Buy now widget -->

						<!-- Coupon code widget -->
						<div class="card card-body shadow">
							<div class="cardt-title">
								<h5>지인 소개 할인 코드</h5>
							</div>

							<ul class="list-group list-group-borderless mb-0">
								<li class="list-group-item small pb-0"><i class="bi bi-patch-check-fill text-success me-1"></i>주변 지인에게 코드를 공유하세요</li>
								<li class="list-group-item small pb-0"><i class="bi bi-patch-check-fill text-success me-1"></i>업장 이용시 코드 확인 후 10% 할인</li>
							</ul>
							<!-- Input group -->
							<div class="input-group mt-3">
								<input class="form-control form-control border-dashed" placeholder="Coupon code" value="Culture2024">
								<button type="button" class="btn btn-primary">Copy</button>
							</div>
						</div>
					</div>
					<!-- Right side END -->

				</div>
			</div>

		<!-- Tabs contents END -->		
	</div>
</section>
<!-- =======================
Content END -->

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
  <script src="${pageContext.request.contextPath}/resources/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
  
  <!-- Vendors -->
  <script src="${pageContext.request.contextPath}/resources/vendor/tiny-slider/tiny-slider.js"></script>
  <script src="${pageContext.request.contextPath}/resources/vendor/purecounterjs/dist/purecounter_vanilla.js"></script>
  <script src="${pageContext.request.contextPath}/resources/glightbox/js/glightbox.js"></script>
  <script src="${pageContext.request.contextPath}/resources/flatpickr/js/flatpickr.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/choices/js/choices.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/jarallax/jarallax.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/vendor/jarallax/jarallax-video.min.js"></script>
  
  <!-- ThemeFunctions -->
  <script src="${pageContext.request.contextPath}/resources/js/functions.js"></script>
  </body>
  </html>