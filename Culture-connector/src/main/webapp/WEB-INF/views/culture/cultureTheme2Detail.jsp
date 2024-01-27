<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!-- 카카오톡 공유 기능 사용하는데 필요한 자바스크립트 파일 -->
<script src="https://t1.kakaocdn.net/kakao_js_sdk/2.6.0/kakao.min.js" ></script> 
	
<!-- 카카오맵 기능 사용하는데 필요한 자바스크립트 파일/ appkey는 kakaoDeveloper 사이트에서 생성한 고유 javaScript 키를 입력하면 됩니다. -->
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=bb83919493996c6c554671877067a90a&libraries=services"></script>

<jsp:include page="/WEB-INF/views/common/cultureheader.jsp">
    <jsp:param value="Culture Connector" name="title"/>
</jsp:include>


<!-- **************** MAIN CONTENT START **************** -->
<main>

	
<!--Main banner START -->
<section class="py-0">

    <div class="container" style="text-align: center; width: 2000px; height: 500px;">
        <input id="mainImage" value="${event.firstimage}" type="hidden"><img src ="${event.firstimage}" style="width: 100%; height: 100%">
    </div>

</section>
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
							<input id="locationName" value="${event.title}" type="hidden"><h1 class="h3 mt-2 mb-1">${event.title}</h1>
							<input id="mapCoordinate" value="${event.addr1}" type="hidden"> <p class="mb-2 mb-sm-0">${event.addr1}</p>
						
						</div>
						<!-- Buttons -->
						<form action="${path}/member/addWishList" method="post">
						<ul class="list-inline mb-0">
							<!-- wishlist -->
							
							<li class="list-inline-item">
								<a href="${path}/member/addWishList?contentid=${event.contentid}" class="btn btn-sm btn-white px-2" id="addWishList"><img src="${pageContext.request.contextPath}/resources/images/heart.svg" style="width: 20px;"></a>
								
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
						</form>
						
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
							
								<p class="mb-3">${event.overview}</p> 

 

									
					
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
									<img alt="" src="${event.image0}">
									</div>

									<div class="col-md-4">
									<img alt="" src="${event.image1}">
									</div>

									<div class="col-md-4">
										<img alt="" src="${event.image2}">
									</div>

									<div class="col-md-4">
										<img alt="" src="${event.image3}">
									</div>

									<div class="col-md-4">
										<img alt="" src="${event.image4}">	
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
											<img src="${pageContext.request.contextPath}/resources/images/location-mark.svg" style="width: 20px;">${event.addr1}
										</a>
									</li>
									<!-- Call no -->
									<li class="list-group-item">
										<a href="#" class="h6 fw-normal mb-0">
											<img src="${pageContext.request.contextPath}/resources/images/call.svg" style="width: 20px;"> +82&nbsp;${event.sponsor1tel} 
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



<!-- Bootstrap JS -->
<script src="assets/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>

<!-- Vendors -->
<script src="assets/vendor/splide-master/dist/js/splide.min.js"></script>
<script src="assets/vendor/glightbox/js/glightbox.js"></script>

<!-- ThemeFunctions -->
<script src="assets/js/functions.js">

/* Kakao.init('bb83919493996c6c554671877067a90a');
console.log(location.href) */
</script>



<script>
Kakao.init('bb83919493996c6c554671877067a90a'); // 사용하려는 앱의 JavaScript 키 입력
</script>



<script>



// <!-- 카카오톡 공유 썸네일에 사용할 변수 -->
var thumbImg = document.getElementById("mainImage").value; //이미지 주소
console.log(thumbImg)
var thumbTitle = document.getElementById("locationName").value; 
console.log(thumbTitle)

// <!-- 카카오톡 공유 기능 -->
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
		// <!--카카오맵 기능(db로부터 주소를 받아와서 변수로 입력하면 해당 주소를 좌표로 변환하여 카카오맵에서 구현) -->
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


<script type="text/javascript">

/* document.getElementById("addWishList").click(function() {
	if(document.getElementById("countValue").value === 0) {
		alert("위시리스트에 추가되었습니다.")
	}else {
		alert("이미 위시리스트에 존재합니다.")
	}
})
  */







</script>

<jsp:include page="/WEB-INF/views/common/footer.jsp"/>