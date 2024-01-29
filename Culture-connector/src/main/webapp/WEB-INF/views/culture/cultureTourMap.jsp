<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>


<jsp:include page="/WEB-INF/views/common/cultureheader.jsp">
    <jsp:param value="Culture Connector" name="title"/>
</jsp:include>

<!-- **************** MAIN CONTENT START **************** -->
<main>

	<!-- =======================
	Titles START -->
	<section class="pt-6">
		<div class="container position-relative">
	
			<!-- Title and button START -->
			<div class="row">
				<div class="col-12">
					<div class="d-sm-flex justify-content-sm-between align-items-center">
						<!-- Title -->
						<div class="mb-2 mb-sm-0">
							<h1 class="fs-3 mb-2">문화(여행) 지도</h1>
						</div>
	
						<!-- Offcanvas Button -->
						<button class="btn btn-primary-soft btn-primary-check d-xl-none mb-0" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasSidebar" aria-controls="offcanvasSidebar">
							<i class="fa-solid fa-sliders-h me-1"></i> Show filters
						</button>
					</div>	
				</div>
			</div>
			<!-- Title and button END -->
	
		</div>
	</section>
	<!-- =======================
	Titles END -->
	
	<section class="pt-0">
		<div class="container" data-sticky-container>
			<div class="row">
	
				<!-- Left sidebar START -->
				<aside class="col-2">
					<div data-sticky data-margin-top="80" data-sticky-for="1199">
						<!-- Responsive offcanvas body START -->
						<div class="offcanvas-xl offcanvas-end" tabindex="-1" id="offcanvasSidebar" aria-labelledby="offcanvasSidebarLabel">
							<div class="offcanvas-header">
								<h5 class="offcanvas-title" id="offcanvasSidebarLabel">Advance Filters</h5>
								<button  type="button" class="btn-close" data-bs-dismiss="offcanvas" data-bs-target="#offcanvasSidebar" aria-label="Close"></button>
							</div>
							<!-- Offcanvas body -->
							<div class="offcanvas-body flex-column p-3 p-xl-0">
								<form class="rounded-3 shadow">
									<!-- 서치바 시작 -->
	
									<!-- 서치바 끝 -->
	
									<hr class="my-0"> <!-- Divider -->
	
									<!-- 시설별 선택 START -->
									<div class="card card-body rounded-0 rounded-bottom p-4">
										<!-- Title -->
										<h6 class="mb-2">카테고리</h6>
										<!-- Radio buttons -->
                                        <input type="radio" id="cultureRadio" name="category" value="culture">
                                        <label for="cultureRadio">문화시설</label><br>
                                        <input type="radio" id="eventRadio" name="category" value="event" checked>
                                        <label for="eventRadio">공연예술</label>
                                        <input type="radio" id="festivalRadio" name="category" value="festival">
                                        <label for="festivalRadio">축제</label>
                                        <input type="radio" id="leisureSportRadio" name="category" value="leisureSport">
                                        <label for="leisureSportRadio">레저스포츠</label>
                                        <input type="radio" id="foodRadio" name="category" value="food">
                                        <label for="foodRadio">음식점</label>
                                        
                                        <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
									</div>
									<!-- 시설별 선택 END -->
								</form><!-- Form End -->
							</div>
						</div>
						<!-- Responsive offcanvas body END -->
					</div> 	
				</aside>
				<!-- Left sidebar END -->
	
				<!-- MAP START -->
				<div class="col-10">
					<div id="map" style="width:100%;height:100%;position:relative;overflow:hidden;"></div>
				</div>
				<!-- MAP END -->
	
			</div> <!-- Row END -->
	
		</div>
	</section>
	
	</main>
	<!-- **************** MAIN CONTENT END **************** -->

    <style>
.overlaybox {position:relative;width:360px;height:350px;background:url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/box_movie.png') no-repeat;padding:15px 10px;}
.overlaybox div, ul {overflow:hidden;margin:0;padding:0;}
.overlaybox li {list-style: none;}
.overlaybox .boxtitle {color:#000000;font-size:16px;font-weight:bold;background: url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/arrow_white.png') no-repeat right 120px center;margin-bottom:8px;}
.overlaybox .first {position:relative;width:247px;height:136px;background: url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/thumb.png') no-repeat;margin-bottom:8px;}
.first .text {color:#000000;font-weight:bold;}
.first .triangle {position:absolute;width:48px;height:48px;top:0;left:0;background: url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/triangle.png') no-repeat; padding:6px;font-size:18px;}
.first .movietitle {position:absolute;width:100%;bottom:0;background:rgba(0,0,0,0.4);padding:7px 15px;font-size:14px;}
.overlaybox ul {width:247px;}
.overlaybox li {position:relative;margin-bottom:2px;background:#2b2d36;padding:5px 10px;color:#aaabaf;line-height: 1;}
.overlaybox li span {display:inline-block;}
.overlaybox li .number {font-size:16px;font-weight:bold;}
.overlaybox li .title {font-size:13px;}
.overlaybox ul .arrow {position:absolute;margin-top:8px;right:25px;width:5px;height:3px;background:url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/updown.png') no-repeat;} 
.overlaybox li .up {background-position:0 -40px;}
.overlaybox li .down {background-position:0 -60px;}
.overlaybox li .count {position:absolute;margin-top:5px;right:15px;font-size:10px;}
.overlaybox li:hover {color:#000000;background:#d24545;}
.overlaybox li:hover .up {background-position:0 0px;}
.overlaybox li:hover .down {background-position:0 -20px;}   
</style>

	<!-- Add your JavaScript file link here -->
<!-- 카카오맵 기능 사용하는데 필요한 자바스크립트 파일/ appkey는 kakaoDeveloper 사이트에서 생성한 고유 javaScript 키를 입력하면 됩니다. -->
<script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=bb83919493996c6c554671877067a90a&libraries=services,clusterer"></script>
<script>
    // Initialize the Map
    var mapContainer = document.getElementById('map'),
        mapOptions = {
            center: new kakao.maps.LatLng(37.5665, 126.9780),
            level: 3
        };      

    var map = new kakao.maps.Map(mapContainer, mapOptions);

    // Load Data from Server
    async function fetchData(category) {
        console.log("fetchData called - Category being fetched:", category);
        let data; // Declare data at the beginning
        // Declare 'url' outside the try-catch block for broader scope
        let url = '';

        try {
            // Constructing URL
            url = '/mvc/cultureTourMap/getCategoryData?category=' + category;
            console.log("fetchData - Constructed URL:", url);

            // Attempting to make a fetch call
            console.log("fetchData - Making fetch call to:", url);
            let response = await fetch(url);

            // Check response status
            console.log("fetchData - Response status:", response.status);
            if (!response.ok) {
                throw new Error(`HTTP error! status: ${response.status}`);
            }

            // Attempting to parse JSON
            console.log("fetchData - Parsing response JSON");
            let data = await response.json();
            console.log("fetchData - Data received:", data);
            return data;
        } catch (error) {
            console.error('Error in fetchData:', error);
            console.log('Error occurred with URL:', url)
            data = null; // Set data to null or appropriate default
        }
    }

    // Function to clear existing markers
    function clearMarkers(clusterer) {
        console.log("clearMarkers called");
        clusterer.clear();
    }

    // Initialize Clusterer
    var clusterer = new kakao.maps.MarkerClusterer({
        map: map,
        averageCenter: true,
        minLevel: 5
    });

    // Function to display markers
    function displayMarkers(data) {
        console.log("displayMarkers called - Data received:", JSON.stringify(data, null, 2));
        var items = [];

        // 기존 데이터 집합과 추가적인 데이터 집합을 확인
        if (data.events) items = items.concat(data.events);
        if (data.cultures) items = items.concat(data.cultures);
        // 추가적인 데이터 집합
        if (data.festivals) items = items.concat(data.festivals);
        if (data.leisureSports) items = items.concat(data.leisureSports);
        if (data.foods) items = items.concat(data.foods);






        
        // 여기에 더 많은 데이터 집합을 추가할 수 있습니다.

        if (items.length === 0) {
            console.log("displayMarkers - No items to display");
            return; // Exit if there are no items
        }
        var markers = items.map(function(item) {
            var marker = new kakao.maps.Marker({
                position: new kakao.maps.LatLng(item.mapy, item.mapx)
            });
            addMarkerClickListener(marker, item);
            return marker;
        });
        console.log("displayMarkers - Markers created:", markers); // Log created markers
        clusterer.addMarkers(markers);
    }

    // 마커 클릭 이벤트 리스너 추가 함수
    function addMarkerClickListener(marker, item) {
        kakao.maps.event.addListener(marker, 'click', function() {
            setOverlayContent(item);
            overlay.setPosition(marker.getPosition());
            overlay.setMap(map);
        });
    }

    // 오버레이 생성
    var overlay = new kakao.maps.CustomOverlay({
        content: '',
        position: new kakao.maps.LatLng(0, 0),
        xAnchor: 0.3,
        yAnchor: 0.91
    });

    // 오버레이에 표시할 내용을 설정하는 함수
    function setOverlayContent(item) {
    var content = '<div class="overlaybox">';

    // 첫 번째 이미지 추가
    if (item.firstimage) {
        content += '<div class="first">' +
                '<img src="' + item.firstimage + '" alt="' + item.title + '" style="max-width: 100%; height: auto;">' +
                // 기타 필요한 요소들을 여기에 추가
                '</div>';
    }

    // 제목과 상세 페이지 링크 추가
    content += '<div class="boxtitle"><a href="/cultureTheme2Detail?contentid=' + item.contentid + '">' + item.title + '</a></div>';

    // 주소 추가
    if (item.addr1) {
        content += '<ul><li><span>Address: ' + item.addr1 + '</span></li></ul>';
    }

    // 전화번호 추가
    if (item.tel) {
        content += '<ul><li><span>Phone: ' + item.tel + '</span></li></ul>';
    }

    content += '</div>';
    overlay.setContent(content);
}

    // 오버레이를 숨기는 함수
    function hideOverlay() {
        overlay.setMap(null);
    }

    // 지도 클릭 시 오버레이 숨김
    kakao.maps.event.addListener(map, 'click', hideOverlay);

    // Attach Event Listeners to Radio Buttons
    document.querySelectorAll('input[name="category"]').forEach(function(radio) {
        radio.addEventListener('change', async function() {
            let category = this.value;
            console.log("Radio button change event - Selected category:", category);
            let data = await fetchData(category);
            // Clear existing markers before displaying new ones
            clearMarkers(clusterer);
            displayMarkers(data);
        });
    });

    document.addEventListener('DOMContentLoaded', function() {
        console.log("DOMContentLoaded - Initial fetch for 'event'");
        fetchData('event').then(displayMarkers);
    });


</script>

<jsp:include page="/WEB-INF/views/common/footer.jsp"/>