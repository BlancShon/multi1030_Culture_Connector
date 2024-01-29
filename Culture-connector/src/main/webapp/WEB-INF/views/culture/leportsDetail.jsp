
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
    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=fe7f4d52f14cf2bf7411ccb5ae2af5fb"></script>
    
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
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources//vendor/splide-master/dist/css/splide.min.css">

	<!-- Theme CSS -->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css">
	<!-- Plugins CSS -->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/all.min.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap-icons.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/tiny-slider.css">
	<link rel="stylesheet" type="text/css" href="a${pageContext.request.contextPath}/css/glightbox.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/css/flatpickr.min.css">

	<!-- Theme CSS -->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css">

</head>
<jsp:include page="/WEB-INF/views/common/cultureheader.jsp">
<jsp:param value="문화시설 상세" name="title"/>
</jsp:include>
<body>

	
	

<!-- **************** MAIN CONTENT START **************** -->
<main>


<!-- 사진!!!!!!!!!!!!!!!!!!!!! 시작 -->


 <!-- =======================
    Main Banner START -->
    <section class="pt-4 pt-lg-5">
        <div class="container position-relative">
    
            <!-- Title and button START -->
            <div class="row">
                <div class="col-12">
    
                    <!-- Meta -->
                    <div class="d-md-flex justify-content-md-between">
                        <!-- Title -->
                        <div>
                            <h1 class="fs-2"><c:out value="${leisure.title}"/></h1>
                        </div>
    
                        <!-- Buttons -->
                        <ul class="list-inline text-end">
                                <!-- Heart icon -->
                            <li class="list-inline-item">
                                <a href="#" class="btn btn-sm btn-light px-2"><i class="fa-solid fa-fw fa-heart"></i></a>
                            </li>
                            <!-- Share icon -->
                            <li class="list-inline-item dropdown">
                                <!-- Share button -->
                                <a href="#" class="btn btn-sm btn-light px-2" role="button" id="dropdownShare" data-bs-toggle="dropdown" aria-expanded="false">
                                    <i class="fa-solid fa-fw fa-share-alt"></i>
                                </a>
                                <!-- dropdown button -->
                                <ul class="dropdown-menu dropdown-menu-end min-w-auto shadow rounded" aria-labelledby="dropdownShare">
                                    <li><a class="dropdown-item" href="#"><i class="fab fa-twitter-square me-2"></i>Twitter</a></li>
                                    <li><a class="dropdown-item" href="#"><i class="fab fa-facebook-square me-2"></i>Facebook</a></li>
                                    <li><a class="dropdown-item" href="#"><i class="fab fa-linkedin me-2"></i>LinkedIn</a></li>
                                    <li><a class="dropdown-item" href="#"><i class="fa-solid fa-copy me-2"></i>Copy link</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
    
                </div>
            </div>
            <!-- Title and button END -->
    
            <!-- Image gallery START -->
            <div class="row mt-md-5">
                <div class="col-12">
                    <!-- Primary image -->
                    <div class="splide splide-main mb-3" data-splide='{"type" : "fade","autoplay": true,"heightRatio":0.5,"pagination":false,"arrows":false,"cover":true,"lazyLoad":"sequential"}'>
                        <div class="splide__track">
                            <ul class="splide__list">
                            
                                <li class="splide__slide rounded"><img src="${leisure.firstimage}" alt="">
                                    <!-- Glightbox image -->
                                    <a href="${leisure.firstimage}" class="stretched-link" data-glightbox="" data-gallery="banner"></a>
                                </li>
                                <c:if test="${not empty imgList}">
	                                <c:forEach var="item" items="${imgList}">
										   <li class="splide__slide rounded"><img src="${item}" alt="">
		                                    <!-- Glightbox image -->
		                                    <a href="${item}" class="stretched-link" data-glightbox="" data-gallery="banner"></a>
	                                </li>
									</c:forEach>
                              	</c:if>
                            </ul>
                        </div>
                    </div>
                    <!-- Secondary image -->
                    <div class="splide splide-thumb" data-splide='{"rewind":true,"fixedWidth":200,"fixedHeight":120,"isNavigation":true,"gap":20,"focus":"center","pagination":false,"cover":true,"lazyLoad":"sequential","breakpoints":{"600":{"fixedWidth":150,"fixedHeight":80}}}'>
                        <div class="splide__track">
                        	<c:if test="${not empty imgList}">
	                            <ul class="splide__list">
	                            	<li class="splide__slide"><img src="${leisure.firstimage}" alt=""></li>
									                            	
									<c:forEach var="item" items="${imgList}">
											 <li class="splide__slide"><img src="${item}" alt=""></li>
									</c:forEach>
	                                
	                            </ul>
                            </c:if>
                        </div>
                        <!-- Arrows -->
                        <div class="splide__arrows">
                            <button class="splide__arrow  splide__arrow--prev p-splide__arrow--prev bg-primary"><span class="spi-angle-left text-white"><i class="fa-solid fa-fw fa-angle-left"></i></span></button>
                            <button class="splide__arrow splide__arrow--next p-splide__arrow--next bg-primary"><span class="spi-angle-right text-white"><i class="fa-solid fa-fw fa-angle-right"></i></span></button>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Image gallery END -->
    
        </div>
    </section>
    <!-- =======================
    Main Banner END -->




<!-- 사진!!!!!!!!!!!!!!!!!!!!! 끝 -->




<!-- =======================
Tabs START -->
<section class="py-0">
	<div class="container">
		
		<!-- Tabs START -->
		<div class="row">
			<div class="col-12">
				<!-- Outer tabs START -->
				<ul class="nav nav-pills nav-justified nav-responsive bg-primary bg-opacity-10 rounded p-2" id="tour-pills-tab" role="tablist">
					<!-- Tab item -->
					<li class="nav-item" role="presentation">
						<button class="nav-link active mb-0" id="tour-pills-tab-1" data-bs-toggle="pill" data-bs-target="#tour-pills-tab1" type="button" role="tab" aria-controls="tour-pills-tab1" aria-selected="true">상세 소개</button>
					</li>
					<!-- Tab item -->
					<li class="nav-item" role="presentation">
						<button class="nav-link mb-0" id="tour-pills-tab-2" data-bs-toggle="pill" data-bs-target="#tour-pills-tab2" type="button" role="tab" aria-controls="tour-pills-tab2" aria-selected="false" tabindex="-1">이용 정보</button>
					</li>
					<!-- Tab item -->
					<li class="nav-item" role="presentation">
						<button class="nav-link mb-0" id="tour-pills-tab-3" data-bs-toggle="pill" data-bs-target="#tour-pills-tab3" type="button" role="tab" aria-controls="tour-pills-tab3" aria-selected="false" tabindex="-1">기타 정보</button>
					</li>
				</ul> 
				<!-- Outer tabs END -->
			</div>
		</div>
		<!-- Tabs END -->
	</div>
</section>
<!-- =======================
Tabs END -->

<!-- =======================
Tabs-content START -->
<section class="pt-4 pt-md-5">
	<div class="container">

		<div class="row g-4 g-md-5">
			<!-- Tabs Content START -->
			<div class="col-xl-8">
				<!-- Outer tabs contents START -->
				<div class="tab-content mb-0" id="tour-pills-tabContent">

					<!-- Content item START -->
					<div class="tab-pane fade show active" id="tour-pills-tab1" role="tabpanel" aria-labelledby="tour-pills-tab-1">
						<div class="card bg-transparent p-0">
							<!-- Card header -->
							<div class="card-header bg-transparent border-bottom p-0 pb-3">
								<h3 class="mb-0" style="text-align: center;">소개글</h3>
							</div>

							<!-- Card body START -->
							<div class="card-body p-0 pt-3">
								<p class="mb-4"><c:out value="${leisure.overview}"/></p>
 								

							</div>
							<!-- Card body END -->
						</div>
					</div>		
					<!-- Content item END -->

					<!-- Content item START -->
					<div class="tab-pane fade" id="tour-pills-tab2" role="tabpanel" aria-labelledby="tour-pills-tab-2">
						<div class="card bg-transparent p-0">
							<!-- Card header -->
							<div class="card-header bg-transparent border-bottom p-0 pb-3">
								<h3 class="mb-0" style="text-align: center;">이용 정보</h3>
							</div>
						<!-- List -->
						
								<h5>- Info</h5>
								<ul class="list-group list-group-borderless mb-4">
									<li class="list-group-item">
										<span class="h6 mb-0 me-1"><i class="bi bi-dot"></i>홈페이지 : </span>
										<span class="h6 fw-light mb-0">${leisure.homepage}</span>
									</li>
									<li class="list-group-item">
										<span class="h6 mb-0 me-1"><i class="bi bi-dot"></i>전화번호 : </span>
										<span class="h6 fw-light mb-0">${leisure.tel}</span>
									</li>
									<li class="list-group-item">
										<span class="h6 mb-0 me-1"><i class="bi bi-dot"></i>예약 : </span>
										<span class="h6 fw-light mb-0">${leisure.reservation}</span>
									</li>
									<li class="list-group-item">
										<span class="h6 mb-0 me-1"><i class="bi bi-dot"></i>문의 : </span>
										<span class="h6 fw-light mb-0">${leisure.infocenterleports}"</span>
									</li>
								</ul>
								<h5>- 이용 안내</h5>
								<ul class="list-group list-group-borderless mb-4">
									<li class="list-group-item">
										<span class="h6 mb-0 me-1"><i class="bi bi-dot"></i>이용 가능 계절 : </span>
										<span class="h6 fw-light mb-0">${leisure.openperiod}</span>
									</li>
									<li class="list-group-item">
										<span class="h6 mb-0 me-1"><i class="bi bi-dot"></i>수용 가능 인원 : </span>
										<span class="h6 fw-light mb-0">${leisure.accomcountleports}</span>
									</li>
									<li class="list-group-item">
										<span class="h6 mb-0 me-1"><i class="bi bi-dot"></i>이용 시간 : </span>
										<span class="h6 fw-light mb-0">${leisure.usetimeleports}</span>
									</li>
									<li class="list-group-item">
										<span class="h6 mb-0 me-1"><i class="bi bi-dot"></i>이용 가격 : </span>
										<span class="h6 fw-light mb-0">${leisure.usefeeleports}</span>
									</li>
									<li class="list-group-item">
										<span class="h6 mb-0 me-1"><i class="bi bi-dot"></i>휴무일 : </span>
										<span class="h6 fw-light mb-0">${leisure.restdateleports}</span>
									</li>
									<li class="list-group-item">
										<span class="h6 mb-0 me-1"><i class="bi bi-dot"></i>연령 제한 : </span>
										<span class="h6 fw-light mb-0">${leisure.expagerangeleports}</span>
									</li>
								</ul>
							<!-- Card body END -->
						</div>
					</div>	
					<!-- Content item END -->

					<!-- Content item START -->
					<div class="tab-pane fade" id="tour-pills-tab3" role="tabpanel" aria-labelledby="tour-pills-tab-3">
						<div class="card bg-transparent p-0">
							<!-- Card header -->
							<div class="card-header bg-transparent border-bottom p-0 pb-3">
								<h3 class="mb-0" >신용카드 &amp; 주차 정보</h3>
							</div>

							<!-- Card body START -->
							<div class="card-body p-0 pt-3">
		
								<!-- List -->
								<ul class="list-group list-group-borderless">
									<li class="list-group-item">
										<span class="h6 fw-normal me-1 mb-0"><i class="bi bi-dot"></i>카드 : </span>
										<span>${leisure.chkcreditcardleports}</span>
									</li>
									<li class="list-group-item">
										<span class="h6 fw-normal me-1 mb-0"><i class="bi bi-dot"></i>주차 : </span>
										<span>${leisure.parkingleports}</span>
									</li>
									<li class="list-group-item">
										<span class="h6 fw-normal me-1 mb-0"><i class="bi bi-dot"></i>주차 요금 :</span>
										<span>${leisure.parkingfeeleports}</span>
									</li>
									<li class="list-group-item">
										<span class="h6 fw-normal me-1 mb-0"><i class="bi bi-dot"></i>반려 동물 :</span>
										<span>${leisure.chkpetleports}</span>
									</li>
									<li class="list-group-item">
										<span class="h6 fw-normal me-1 mb-0"><i class="bi bi-dot"></i>유모차 대여 :</span>
										<span>${leisure.chkbabycarriageleports}</span>
									</li>
								</ul>
		
							</div>
							<!-- Card body END -->
						</div>
					</div>	
					<!-- Content item END -->


				</div>	
			</div>
			<!-- Tabs Content END -->

			<!-- Right side content START -->
			<aside class="col-xl-4">
				<div class="row g-4">

					<!-- Help item START -->
					<div class="col-md-6 col-xl-12">
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
											<img src="${pageContext.request.contextPath}/resources/images/location-mark.svg" style="width: 20px;">${leisure.addr1}
										</a>
									</li>
									<!-- Call no -->
									<li class="list-group-item">
										<a href="#" class="h6 fw-normal mb-0">
											<img src="${pageContext.request.contextPath}/resources/images/call.svg" style="width: 20px;"> +82&nbsp;${leisure.infocenterleports} 
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
					</div>
					<!-- Help item END -->
				</div>
			</aside>
			<!-- Right side content END -->

		</div> <!-- Row END -->
	</div>
</section>
<!-- =======================
Tabs-content END -->




</main>
<!-- **************** MAIN CONTENT END **************** -->
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>




<!-- Back to top -->
<div class="back-top"></div>
<!-- Bootstrap JS CDN -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-rbs5vr9i87q4ys1q2ny46u1p7e3c9h5o1u8e4onq18ebL5uFi06e7Jk7b57lPtw" crossorigin="anonymous"></script>

<!-- Vendors -->
<script src="https://cdn.jsdelivr.net/npm/tiny-slider@2.9.3/dist/tiny-slider.js"></script>
<script src="https://cdn.jsdelivr.net/npm/purecounterjs@1.0.5/dist/purecounter_vanilla.js"></script>
<script src="https://cdn.jsdelivr.net/npm/glightbox@1.0.8/dist/glightbox.js"></script>
<script src="https://cdn.jsdelivr.net/npm/flatpickr@4.6.9/dist/flatpickr.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/choices.js@10.1.0/public/assets/scripts/choices.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/jarallax@1.12.0/dist/jarallax.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/jarallax@1.12.0/dist/jarallax-video.min.js"></script>
<script src="${pageContext.request.contextPath}/vendor/splide-master/dist/js/splide.min.js"></script>
<script src="${pageContext.request.contextPath}/vendor/glightbox/js/glightbox.js"></script>


<!-- ThemeFunctions -->
<script src="${pageContext.request.contextPath}/js/functions.js"></script>



<!-- Bootstrap JS -->
<script src="${pageContext.request.contextPath}/resources/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>

<!-- Vendors -->
<script src="${pageContext.request.contextPath}/resources/vendor/tiny-slider/tiny-slider.js"></script>
<script src="${pageContext.request.contextPath}/resources/vendor/purecounterjs/dist/purecounter_vanilla.js"></script>
<script src="${pageContext.request.contextPath}/resources/vendor/glightbox/js/glightbox.js"></script>
<script src="${pageContext.request.contextPath}/resources/vendor/flatpickr/js/flatpickr.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/vendor/choices/js/choices.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/vendor/jarallax/jarallax.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/vendor/jarallax/jarallax-video.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/vendor/splide-master/dist/js/splide.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/vendor/glightbox/js/glightbox.js"></script>

<!-- ThemeFunctions -->
<script src="${pageContext.request.contextPath}/resources/js/functions.js"></script>
<script src="${pageContext.request.contextPath}/js/functions.js"></script>








<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=발급받은 APP KEY를 사용하세요"></script>
<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = { 
        center: new kakao.maps.LatLng(${leisure.mapy}, ${leisure.mapx}), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };

var map = new kakao.maps.Map(mapContainer, mapOption);

// 마커가 표시될 위치입니다 
var markerPosition  = new kakao.maps.LatLng(${leisure.mapy}, ${leisure.mapx}); 

// 마커를 생성합니다
var marker = new kakao.maps.Marker({
    position: markerPosition
});

// 마커가 지도 위에 표시되도록 설정합니다
marker.setMap(map);

var iwContent = '<div style="padding:5px;">${leisure.title}</div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
    iwPosition = new kakao.maps.LatLng(${leisure.mapy}, ${leisure.mapx}); //인포윈도우 표시 위치입니다

// 인포윈도우를 생성합니다
var infowindow = new kakao.maps.InfoWindow({
    position : iwPosition, 
    content : iwContent 
});
  
// 마커 위에 인포윈도우를 표시합니다. 두번째 파라미터인 marker를 넣어주지 않으면 지도 위에 표시됩니다
infowindow.open(map, marker); 
</script>


</body>
</html>




















