
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
	
	<!-- 카카오톡 공유 기능 사용하는데 필요한 자바스크립트 파일 -->
	<script src="https://t1.kakaocdn.net/kakao_js_sdk/2.6.0/kakao.min.js" ></script> 
	
	<!-- 카카오맵 기능 사용하는데 필요한 자바스크립트 파일/ appkey는 kakaoDeveloper 사이트에서 생성한 고유 javaScript 키를 입력하면 됩니다. -->
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
<jsp:include page="/WEB-INF/views/common/cultureheader.jsp">
<jsp:param value="문화시설 상세" name="title"/>
</jsp:include>
<body>

	

<!-- **************** MAIN CONTENT START **************** -->
<main>

	
	<!--Main banner START -->
	<section class="py-0">

		<div class="container" style="text-align: center; width: 2000px; height: 500px;">
			<input id="mainImage" value="${culture.firstimage}" type="hidden"><img src ="${culture.firstimage}" style="width: 100%; height: 100%">
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
							
							<div class="badge text-bg-dark"><i class="fas fa-star fa-fw text-warning"></i> 4.5</div>
							
							<!-- Title -->
							<input id="locationName" value="${culture.title}" type="hidden"><h1 class="h3 mt-2 mb-1">${culture.title}</h1>
							<input id="mapCoordinate" value="${culture.addr1}" type="hidden"> <p class="mb-2 mb-sm-0">${culture.addr1}</p>
						
						</div>
						<!-- Buttons -->
						<ul class="list-inline mb-0">
							<!-- wishlist -->
							<li class="list-inline-item">
								<a href="#" class="btn btn-sm btn-white px-2"><img src="${pageContext.request.contextPath}/resources/images/heart.svg" style="width: 20px;"></a>
							</li>
							<li class="list-inline-item">
								<a href="javascript:;" class="btn btn-sm btn-white px-2" id="kakaotalk-sharing-btn"><img src="https://developers.kakao.com/assets/img/about/logos/kakaotalksharing/kakaotalk_sharing_btn_medium.png" style="width: 20px;"></a>
							</li>
							<li class="list-inline-item">
								<a href="#" class="btn btn-sm btn-white px-2"><img src="${pageContext.request.contextPath}/resources/images/whatsapp.svg" style="width: 20px;"></a>
							</li>
							<!-- Share -->
			
							<!-- Report -->
							<li class="list-inline-item">
								<a href="#" class="btn btn-sm btn-white px-2"><img src="${pageContext.request.contextPath}/resources/images/triangle.svg" style="width: 20px;"></a>
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
							
								<p class="mb-3">${culture.overview}</p> 

 

									
					
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
									<img alt="" src="${culture.image0}">
									</div>

									<div class="col-md-4">
									<img alt="" src="${culture.image1}">
									</div>

									<div class="col-md-4">
										<img alt="" src="${culture.image2}">
									</div>

									<div class="col-md-4">
										<img alt="" src="${culture.image3}">
									</div>

									<div class="col-md-4">
										<img alt="" src="${culture.image4}">	
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
								
								<!-- Info -->
								<ul class="list-group list-group-borderless my-3">
									<!-- Address -->
						
									<li class="list-group-item">
										<a href="#" class="h6 fw-normal mb-0">
											<img src="${pageContext.request.contextPath}/resources/images/location-mark.svg" style="width: 20px;">${culture.addr1}
										</a>
									</li>
									<!-- Call no -->
									<li class="list-group-item">
										<a href="#" class="h6 fw-normal mb-0">
											<img src="${pageContext.request.contextPath}/resources/images/call.svg" style="width: 20px;"> +82&nbsp;${culture.infocenterculture} 
										</a>
									</li>
									<!-- Email -->
									<li class="list-group-item">
										<a href="#" class="h6 fw-normal mb-0">
											<img src="${pageContext.request.contextPath}/resources/images/email.svg" style="width: 20px;">example@gmail.com
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


<script type="text/javascript">

/* Kakao.init('bb83919493996c6c554671877067a90a');
console.log(location.href) */
</script>



<script>
Kakao.init('bb83919493996c6c554671877067a90a'); // 사용하려는 앱의 JavaScript 키 입력
</script>



<script>



<!-- 카카오톡 공유 썸네일에 사용할 변수 -->
var thumbImg = document.getElementById("mainImage").value; //이미지 주소
console.log(thumbImg)
var thumbTitle = document.getElementById("locationName").value; 
console.log(thumbTitle)

<!-- 카카오톡 공유 기능 -->
Kakao.Share.createDefaultButton({
    container: '#kakaotalk-sharing-btn',
    objectType: 'feed',
    content: {
      title: thumbTitle,
      description: '#부산',
      imageUrl:
    	  thumbImg,
      link: {
        // [내 애플리케이션] > [플랫폼] 에서 등록한 사이트 도메인과 일치해야 함
        mobileWebUrl: 'https://developers.kakao.com',
        webUrl: location.href, // 현재 접속 중인 웹사이트 경로를 출력하는 함수
      },
    },
    social: {
      likeCount: 286,
      commentCount: 45,
      sharedCount: 845,
    },
    buttons: [
      {
        title: '웹으로 보기',
        link: {
          mobileWebUrl: 'https://developers.kakao.com',
          webUrl: location.href,
        },
      },
      {
        title: '앱으로 보기',
        link: {
          mobileWebUrl: 'https://developers.kakao.com',
          webUrl: location.href,
        },
      },
    ],
  });
</script>





<script>
		<!--카카오맵 기능(db로부터 주소를 받아와서 변수로 입력하면 해당 주소를 좌표로 변환하여 카카오맵에서 구현) -->
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
		var locationName =  document.getElementById('locationName').value
		console.log(locationName)
		var locationCoor =  document.getElementById('mapCoordinate').value
		 console.log(locationCoor)
		 
		geocoder.addressSearch(locationCoor, function(result, status) {
			
			// 정상적으로 검색이 완료됐으면 
			if (status === kakao.maps.services.Status.OK) {
		
				var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
		
				// 결과값으로 받은 위치를 마커로 표시합니다
			 	var marker = new kakao.maps.Marker({
					map: map,
					position: coords
				}); 
		
				// 인포윈도우로 장소에 대한 설명을 표시합니다
			/* 	var infowindow = new kakao.maps.InfoWindow({
					 content:'<div style="width:150px;text-align:center;padding:6px 0;"></div>'
				});
				infowindow.open(map); */
				marker.setMap(map)
				// 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
				map.setCenter(coords);
			} 
		});    
</script>



	





</body>
</html>

























