<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%-- <jsp:include page="/WEB-INF/views/common/culutreheader.jsp"> --%>
<%-- 	<jsp:param value="Culture Connector" name="title"/> --%>
<%-- </jsp:include> --%>

<!-- **************** MAIN CONTENT START **************** -->
<main>
	
<!-- =======================
Main Banner START -->
<section class="pt-4">
	<div class="container position-relative">
		<!-- Title and button START -->
		<div class="row">
			<div class="col-12">
				<!-- Meta -->
				<div class="d-flex justify-content-between align-items-lg-center">
			

					<!-- Buttons -->
					<div class="ms-3">
						<!-- Share button -->
						<a href="#" class="btn btn-sm btn-light px-2 mb-0" role="button" id="dropdownShare" data-bs-toggle="dropdown" aria-expanded="false">
							<i class="fa-solid fa-fw fa-share-alt">
                               
                            </i>
						</a>
						<!-- dropdown button -->
						<ul class="dropdown-menu dropdown-menu-end min-w-auto shadow rounded" aria-labelledby="dropdownShare">
							<li><a class="dropdown-item" href="#">
                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24"> 
                                    <path d="M12 3c5.799 0 10.5 3.664 10.5 8.185 0 4.52-4.701 8.184-10.5 8.184a13.5 13.5 0 0 1-1.727-.11l-4.408 2.883c-.501.265-.678.236-.472-.413l.892-3.678c-2.88-1.46-4.785-3.99-4.785-6.866C1.5 6.665 6.201 3 12 3zm5.907 8.06l1.47-1.424a.472.472 0 0 0-.656-.678l-1.928 1.866V9.282a.472.472 0 0 0-.944 0v2.557a.471.471 0 0 0 0 .222V13.5a.472.472 0 0 0 .944 0v-1.363l.427-.413 1.428 2.033a.472.472 0 1 0 .773-.543l-1.514-2.155zm-2.958 1.924h-1.46V9.297a.472.472 0 0 0-.943 0v4.159c0 .26.21.472.471.472h1.932a.472.472 0 1 0 0-.944zm-5.857-1.092l.696-1.707.638 1.707H9.092zm2.523.488l.002-.016a.469.469 0 0 0-.127-.32l-1.046-2.8a.69.69 0 0 0-.627-.474.696.696 0 0 0-.653.447l-1.661 4.075a.472.472 0 0 0 .874.357l.33-.813h2.07l.299.8a.472.472 0 1 0 .884-.33l-.345-.926zM8.293 9.302a.472.472 0 0 0-.471-.472H4.577a.472.472 0 1 0 0 .944h1.16v3.736a.472.472 0 0 0 .944 0V9.774h1.14c.261 0 .472-.212.472-.472z"/>
                                </svg>
                                kakaotalk</a>
                            </li>
							<li><a class="dropdown-item" href="#"><i class="fab fa-facebook-square me-2"></i>Facebook</a></li>
							<li><a class="dropdown-item" href="#"> 
                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-whatsapp" viewBox="0 0 16 16">
                                    <path d="M13.601 2.326A7.85 7.85 0 0 0 7.994 0C3.627 0 .068 3.558.064 7.926c0 1.399.366 2.76 1.057 3.965L0 16l4.204-1.102a7.9 7.9 0 0 0 3.79.965h.004c4.368 0 7.926-3.558 7.93-7.93A7.9 7.9 0 0 0 13.6 2.326zM7.994 14.521a6.6 6.6 0 0 1-3.356-.92l-.24-.144-2.494.654.666-2.433-.156-.251a6.56 6.56 0 0 1-1.007-3.505c0-3.626 2.957-6.584 6.591-6.584a6.56 6.56 0 0 1 4.66 1.931 6.56 6.56 0 0 1 1.928 4.66c-.004 3.639-2.961 6.592-6.592 6.592m3.615-4.934c-.197-.099-1.17-.578-1.353-.646-.182-.065-.315-.099-.445.099-.133.197-.513.646-.627.775-.114.133-.232.148-.43.05-.197-.1-.836-.308-1.592-.985-.59-.525-.985-1.175-1.103-1.372-.114-.198-.011-.304.088-.403.087-.088.197-.232.296-.346.1-.114.133-.198.198-.33.065-.134.034-.248-.015-.347-.05-.099-.445-1.076-.612-1.47-.16-.389-.323-.335-.445-.34-.114-.007-.247-.007-.38-.007a.73.73 0 0 0-.529.247c-.182.198-.691.677-.691 1.654s.71 1.916.81 2.049c.098.133 1.394 2.132 3.383 2.992.47.205.84.326 1.129.418.475.152.904.129 1.246.08.38-.058 1.171-.48 1.338-.943.164-.464.164-.86.114-.943-.049-.084-.182-.133-.38-.232"/>
                              </svg> whatsapp</a></li>
							<li><a class="dropdown-item" href="#"><i class="fa-solid fa-copy me-2"></i>Copy link</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<!-- Title and button END -->
	</div>
</section>
<!-- =======================
Main Banner END -->

<!-- =======================
Main Content START -->
<section class="pt-0">
	<div class="container" data-sticky-container>
		<div class="row g-4">

			<!-- Main content START -->
			<div class="col-xl-8">
				<div class="vstack gap-5">

					<!-- Main cab list START -->
					<div class="card border p-4">
						<!-- Card body START -->
						<div class="card-body p-0">
							<div class="row g-4 align-items-center">
								<!-- Image -->
								<div class="col-md-4">
									<div class="">
										<img src="${pageContext.request.contextPath}/resources/images/category/foodShop/rest4.jpeg" alt="">
									</div>
								</div>

								<!-- card body -->
								<div class="col-md-8">
									<!-- Title and rating -->
									<div class="d-sm-flex justify-content-sm-between">
										<!-- Card title -->
										<div>
											<h4 class="card-title mb-2">오늘 잡은 소 대구 칠곡점</h4>
											<ul class="nav nav-divider h6 fw-normal mb-2">
												<li class="nav-item">대구 북구</li>
												<li class="nav-item">#</li>
												
											</ul>
										</div>
										<!-- Rating Star -->
										<ul class="list-inline mb-0">
											<li class="list-inline-item me-0"><i class="fa-solid fa-star text-warning"></i></li>
											<li class="list-inline-item me-0"><i class="fa-solid fa-star text-warning"></i></li>
											<li class="list-inline-item me-0"><i class="fa-solid fa-star text-warning"></i></li>
											<li class="list-inline-item me-0"><i class="fa-solid fa-star text-warning"></i></li>
											<!-- <li class="list-inline-item"><i class="fa-solid fa-star-half-alt text-warning"></i></li> -->
										</ul>
									</div>

								
								</div>
							</div>
						</div>	
						<!-- Card body END -->

						<!-- Card footer -->
						<div class="card-footer p-0 pt-4">
						
						</div>
					</div>
					<!-- Main cab list END -->

					<!-- Trip Details START -->
					<div class="">
						<!-- Card header -->
						<div class="">
							<h4 class="mb-0">상세정보</h4>
							<br>
							<br>
						</div>
						
						<!-- Card body START -->
						<div>
							<!-- Form START -->
							<form class="row g-4">
                                
								오늘잡은소 대구칠곡점은 대구광역시 북구 국우동에 있다. KBS 2TV 시사 교양 프로그램 생생정보에 출연한 바 있다. 깔끔한 외관과 내부가 눈에 띄는 곳이다. 내부에는 단체석이 마련되어 있어 각종 모임을 하기 좋다. 대표 메뉴는 꽃등심로스구이다. 이 밖에 안심스테이크, 갈비살, 부채살, 육회비빔밥, 물냉면, 비빔냉면 등 등을 맛볼 수 있다. 오전 11시부터 오후 2시까지 한우 불고기와 한돈 고추장불고기, 다양한 반찬과 후식을 푸짐하게 먹을 수 있는 한식뷔페도 운영된다. 단, 일요일은 예외다. 칠곡IC와 서변IC에서 가깝고, 인근에 운암지 수변공원, 신전뮤지엄이 있다.
								<br>
                                <div id="map" style="width:100%;height:350px; border-style: dashed;"></div>
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
                                    geocoder.addressSearch('대구광역시 북구 구리로 183-8 오늘잡은소', function(result, status) {

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
                                                content: '<div style="width:150px;text-align:center;padding:6px 0;">오늘 잡은 소 대구 칠곡점</div>'
                                            });
                                            infowindow.open(map, marker);

                                            // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
                                            map.setCenter(coords);
                                        } 
                                    });    
                                </script>
								<div>
								<div style="float: left;">
								<ul>
									<li class="nav-item" style="text-align: left;"><span style="font-weight: bold; color: black;">문의 및 안내</span>&nbsp;&nbsp;	053-321-2277</li>
									<li class="nav-item" style="text-align: left;"><span style="font-weight: bold; color: black;">주소</span>&nbsp;&nbsp; 	대구광역시 북구 구리로 183-8</li>
									<li class="nav-item" style="text-align: left;"><span style="font-weight: bold; color: black;">주차 안내</span> &nbsp;&nbsp;있음 / 주차요금 없음 </li>
									<li class="nav-item" style="text-align: left;"><span style="font-weight: bold; color: black;">홈페이지</span>&nbsp;&nbsp; http://smartstore.naver.com/ojabso</li>
									<li class="nav-item" style="text-align: left;"><span style="font-weight: bold; color: black;">영업 시간</span>&nbsp;&nbsp;11:00~23:00, 일요일 뷔페 미운영</li>
									<li class="nav-item" style="text-align: left;"><span style="font-weight: bold; color: black;">대표 메뉴</span>&nbsp;&nbsp;	꽃등심로스구이</li>
									
								</ul>
								</div>

								<!-- <div style="float: right;">
								<ul>
									<li class="nav-item" style="text-align: left;">문의 및 안내</li>
									<li class="nav-item" style="text-align: left;">주소</li>
									<li class="nav-item" style="text-align: left;">예약안내</li>
									<li class="nav-item" style="text-align: left;">홈페이지</li>
									<li class="nav-item" style="text-align: left;">전화번호</li>
									
								</ul> -->
								</div>
							</div>
                            </form>
							<!-- Form END -->
						</div>
						<!-- Card body END -->
					</div>
					<!-- Trip Details END -->

					<!-- Driver and cab detail START -->
					
                    
			
		</div>
	</div>
</section>
<!-- =======================
Main Content END -->

</main>
<!-- **************** MAIN CONTENT END **************** -->

<!-- =======================
Footer START -->
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>

<!-- =======================
Footer END -->

<!-- Back to top -->
<div class="back-top"></div>

<!-- Bootstrap JS -->
<script src="${pageContext.request.contextPath}/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>

<!-- Vendors -->
<script src="${pageContext.request.contextPath}/vendor/sticky-js/sticky.min.js"></script>
<script src="${pageContext.request.contextPath}/vendor/glightbox/js/glightbox.js"></script>
<script src="${pageContext.request.contextPath}/vendor/flatpickr/js/flatpickr.min.js"></script>
<script src="${pageContext.request.contextPath}/vendor/tiny-slider/tiny-slider.js"></script>

<!-- ThemeFunctions -->
<script src="${pageContext.request.contextPath}/js/functions.js"></script>

</body>
</html>