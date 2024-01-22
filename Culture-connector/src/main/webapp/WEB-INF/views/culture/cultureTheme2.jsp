<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<jsp:include page="/WEB-INF/views/common/cultureheader.jsp">
	<jsp:param value="Culture Connector" name="title"/>
</jsp:include>


  
<!-- **************** MAIN CONTENT START **************** -->
<main>

<!-- =======================
Main Banner START -->
<section class="py-0">
<div class="container-fluid">
    <div class="row">
        <div class="col-lg-11 mx-auto">
            <!-- Slider START -->
            <div class="tiny-slider arrow-round arrow-blur arrow-hover rounded-3 overflow-hidden">
                <div class="tiny-slider-inner" data-gutter="0" data-arrow="true" data-dots="false" data-items="1" data-autoplaytime="5000">
                    <!-- Card item START -->
                    <div class="card overflow-hidden h-400px h-sm-400px rounded-0" style="background-image:url(${pageContext.request.contextPath}/resources/images/category/culture-theme/festival.jpg); background-position: center left; background-size: cover;">
                        <!-- Background dark overlay -->
                        <div class="bg-overlay bg-dark opacity-3"></div>
                        <!-- Card image overlay -->
                        <div class="card-img-overlay d-flex align-items-center"> 
                            <div class="container">
                                <div class="row">
                                    <div class="col-11 col-lg-7">
                                        <h6 class="text-white fw-normal mb-0"> 💖 도시의 함성을 느껴보세요</h6>
                                        <!-- Title -->
                                        <h1 class="text-white display-6">문화 예술 공연의 콜라보</h1>
                                        <!-- Subtitle or Description -->
                                        <p class="text-white">여러 아티스트들의 소울을 느끼며 나도 참여</p>
                                        <a href="#" class="btn btn-primary mb-0">자세히</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Card item END -->

                    <!-- Card item START -->
                    <div class="card overflow-hidden h-400px h-sm-400px bg-parallax text-center rounded-0"  data-jarallax-video="https://www.youtube.com/watch?v=y8iV3CW_E6w">
                        <!-- Background dark overlay -->
                        <div class="bg-overlay bg-dark opacity-3"></div>
                        <!-- Card image overlay -->
                        <div class="card-img-overlay d-flex align-items-center"> 
                            <div class="container w-100 my-auto">
                                <div class="row justify-content-center">
                                    <div>
                                        <!-- Introduction or Teaser -->
                                        <p class="text-white">사로잡힐 준비 되셨나요?</p>
                                        <!-- Description -->
                                        <h2 class="text-white display-6">열정 넘치는 살아있는 공연</h2>
                                        <p class="text-white">함께 환상적인 경험을 같이 하시죠.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Card item END -->
                </div>
            </div>
            <!-- Slider END -->
        </div>
    </div>
</div>
</section>
<!-- =======================
Main Banner END -->

<!-- =======================
Special offer START -->
<section class="pb-0">
<div class="container">
    <!-- Title -->
    <div class="row mb-4">
        <div class="col-12 text-center">
            <h3 class="mb-0">최신 공연 바로 보기</h3>
        </div>
    </div>

    <!-- Slider START -->
    <div class="tiny-slider arrow-round arrow-blur arrow-hover">
        <div class="tiny-slider-inner mb-8" data-autoplay="true" data-arrow="true" data-edge="2" data-dots="false" data-items-xl="3" data-items-lg="3" data-items-md="2" data-items-sm="1">
            
            <!-- Offer card START -->
            <div>
                <div class="card">
                    <img src="http://tong.visitkorea.or.kr/cms/resource/70/2952070_image2_1.jpg" class="card-img" alt="">
                    <!-- Card body -->
                    <div class="position-absolute top-100 start-50 translate-middle w-100">
                        <div class="card-body text-center bg-mode shadow rounded mx-4 p-3">
                            <h6 class="card-title mb-1"><a href="#">가평 에덴벚꽃길 벚꽃축제</a></h6>
                            <small>20231021</small>
                            <div class="mt-2"><a href="#" class="btn btn-sm btn-dark mb-0">자세히</a></div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Offer card END -->
            
            <!-- Offer card START -->
            <div>
                <div class="card">
                    <img src="https://tong.visitkorea.or.kr/cms/resource/07/3021807_image2_1.jpg" class="card-img" alt="">
                    <!-- Card body -->
                    <div class="position-absolute top-100 start-50 translate-middle w-100">
                        <div class="card-body text-center bg-mode shadow rounded mx-4 p-3">
                            <h6 class="card-title mb-1"><a href="#">가을 , 명동으로</a></h6>
                            <small>20231021</small>
                            <div class="mt-2"><a href="#" class="btn btn-sm btn-dark mb-0">자세히</a></div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Offer card END -->

            <!-- Offer card START -->
            <div>
                <div class="card">
                    <img src="http://tong.visitkorea.or.kr/cms/resource/67/2997767_image2_1.png" class="card-img" alt="">
                    <!-- Card body -->
                    <div class="position-absolute top-100 start-50 translate-middle w-100">
                        <div class="card-body text-center bg-mode shadow rounded mx-4 p-3">
                            <h6 class="card-title mb-1"><a href="#">강원 콘텐츠 페스타</a></h6>
                            <small>20230908</small>
                            <div class="mt-2"><a href="#" class="btn btn-sm btn-dark mb-0">자세히</a></div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Offer card END -->
            
            <!-- Offer card START -->
            <div>
                <div class="card">
                    <img src="http://tong.visitkorea.or.kr/cms/resource/70/2952070_image2_1.jpg" class="card-img" alt="">
                    <!-- Card body -->
                    <div class="position-absolute top-100 start-50 translate-middle w-100">
                        <div class="card-body text-center bg-mode shadow rounded mx-4 p-3">
                            <h6 class="card-title mb-1"><a href="#">가평 에덴벚꽃길 벚꽃축제</a></h6>
                            <small>20231021</small>
                            <div class="mt-2"><a href="#" class="btn btn-sm btn-dark mb-0">자세히</a></div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Offer card END -->
            
            <!-- Offer card START -->
            <div>
                <div class="card">
                    <img src="https://tong.visitkorea.or.kr/cms/resource/07/3021807_image2_1.jpg" class="card-img" alt="">
                    <!-- Card body -->
                    <div class="position-absolute top-100 start-50 translate-middle w-100">
                        <div class="card-body text-center bg-mode shadow rounded mx-4 p-3">
                            <h6 class="card-title mb-1"><a href="#">가을 , 명동으로</a></h6>
                            <small>20231021</small>
                            <div class="mt-2"><a href="#" class="btn btn-sm btn-dark mb-0">자세히</a></div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Offer card END -->

            <!-- Offer card START -->
            <div>
                <div class="card">
                    <img src="http://tong.visitkorea.or.kr/cms/resource/67/2997767_image2_1.png" class="card-img" alt="">
                    <!-- Card body -->
                    <div class="position-absolute top-100 start-50 translate-middle w-100">
                        <div class="card-body text-center bg-mode shadow rounded mx-4 p-3">
                            <h6 class="card-title mb-1"><a href="#">강원 콘텐츠 페스타</a></h6>
                            <small>20230908</small>
                            <div class="mt-2"><a href="#" class="btn btn-sm btn-dark mb-0">자세히</a></div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Offer card END -->

        </div>	
    </div>
    <!-- Slider END -->
</div>
</section>
<!-- =======================
Special offer END -->

<!-- =======================
About START -->
<section class="py-0 py-lg-7">
<div class="container">
    <!-- Title -->
    <div class="row mb-4">
        <div class="col-12">
            <h2>우리 동네에 무슨일이 있을가?</h2>
            <p class="mb-0">우리 동네 근처에서 열리는 행사 보기</p>
        </div>
    </div>

    <!-- 지역 이름 선택 -->
    <div class="row g-4 g-md-5">
        <!-- Card item START -->
        <div class="col-6 col-sm-4 col-lg-3 col-xl-2">
            <div class="card bg-transparent text-center p-1 h-100">
                <!-- Image -->
                <img src="${pageContext.request.contextPath}/resources/images/category/hotel/nearby/01.jpg" class="rounded-circle" alt="">

                <div class="card-body p-0 pt-3">
                    <h5 class="card-title"><a href="#" class="stretched-link">서울</a></h5>
                </div>
            </div>
        </div>
        <!-- Card item END -->

        <!-- Card item START -->
        <div class="col-6 col-sm-4 col-lg-3 col-xl-2">
            <div class="card bg-transparent text-center p-1 h-100">
                <!-- Image -->
                <img src="${pageContext.request.contextPath}/resources/images/category/hotel/nearby/02.jpg" class="rounded-circle" alt="">

                <div class="card-body p-0 pt-3">
                    <h5 class="card-title"><a href="#" class="stretched-link">경기</a></h5>
                </div>
            </div>
        </div>
        <!-- Card item END -->

        <!-- Card item START -->
        <div class="col-6 col-sm-4 col-lg-3 col-xl-2">
            <div class="card bg-transparent text-center p-1 h-100">
                <!-- Image -->
                <img src="${pageContext.request.contextPath}/resources/images/category/hotel/nearby/03.jpg" class="rounded-circle" alt="">

                <div class="card-body p-0 pt-3">
                    <h5 class="card-title"><a href="#" class="stretched-link">인천</a></h5>
                </div>
            </div>
        </div>
        <!-- Card item END -->

        <!-- Card item START -->
        <div class="col-6 col-sm-4 col-lg-3 col-xl-2">
            <div class="card bg-transparent text-center p-1 h-100">
                <!-- Image -->
                <img src="${pageContext.request.contextPath}/resources/images/category/hotel/nearby/04.jpg" class="rounded-circle" alt="">

                <div class="card-body p-0 pt-3">
                    <h5 class="card-title"><a href="#" class="stretched-link">대전</a></h5>
                </div>
            </div>
        </div>
        <!-- Card item END -->

        <!-- Card item START -->
        <div class="col-6 col-sm-4 col-lg-3 col-xl-2">
            <div class="card bg-transparent text-center p-1 h-100">
                <!-- Image -->
                <img src="${pageContext.request.contextPath}/resources/images/category/hotel/nearby/05.jpg" class="rounded-circle" alt="">

                <div class="card-body p-0 pt-3">
                    <h5 class="card-title"><a href="#" class="stretched-link">대구</a></h5>
                </div>
            </div>
        </div>
        <!-- Card item END -->

        <!-- Card item START -->
        <div class="col-6 col-sm-4 col-lg-3 col-xl-2">
            <div class="card bg-transparent text-center p-1 h-100">
                <!-- Image -->
                <img src="${pageContext.request.contextPath}/resources/images/category/hotel/nearby/06.jpg" class="rounded-circle" alt="">

                <div class="card-body p-0 pt-3">
                    <h5 class="card-title"><a href="#" class="stretched-link">전북</a></h5>
                </div>
            </div>
        </div>
        <!-- Card item END -->

        <!-- Card item START -->
        <div class="col-6 col-sm-4 col-lg-3 col-xl-2">
            <div class="card bg-transparent text-center p-1 h-100">
                <!-- Image -->
                <img src="${pageContext.request.contextPath}/resources/images/category/hotel/nearby/07.jpg" class="rounded-circle" alt="">

                <div class="card-body p-0 pt-3">
                    <h5 class="card-title"><a href="#" class="stretched-link">경북</a></h5>
                </div>
            </div>
        </div>
        <!-- Card item END -->

        <!-- Card item START -->
        <div class="col-6 col-sm-4 col-lg-3 col-xl-2">
            <div class="card bg-transparent text-center p-1 h-100">
                <!-- Image -->
                <img src="${pageContext.request.contextPath}/resources/images/category/hotel/nearby/08.jpg" class="rounded-circle" alt="">

                <div class="card-body p-0 pt-3">
                    <h5 class="card-title"><a href="#" class="stretched-link">충북</a></h5>
                </div>
            </div>
        </div>
        <!-- Card item END -->

        <!-- Card item START -->
        <div class="col-6 col-sm-4 col-lg-3 col-xl-2">
            <div class="card bg-transparent text-center p-1 h-100">
                <!-- Image -->
                <img src="${pageContext.request.contextPath}/resources/images/category/hotel/nearby/09.jpg" class="rounded-circle" alt="">

                <div class="card-body p-0 pt-3">
                    <h5 class="card-title"><a href="#" class="stretched-link">전남</a></h5>
                </div>
            </div>
        </div>
        <!-- Card item END -->

        <!-- Card item START -->
        <div class="col-6 col-sm-4 col-lg-3 col-xl-2">
            <div class="card bg-transparent text-center p-1 h-100">
                <!-- Image -->
                <img src="${pageContext.request.contextPath}/resources/images/category/hotel/nearby/10.jpg" class="rounded-circle" alt="">

                <div class="card-body p-0 pt-3">
                    <h5 class="card-title"><a href="#" class="stretched-link">경남</a></h5>
                </div>
            </div>
        </div>
        <!-- Card item END -->

        <!-- Card item START -->
        <div class="col-6 col-sm-4 col-lg-3 col-xl-2">
            <div class="card bg-transparent text-center p-1 h-100">
                <!-- Image -->
                <img src="${pageContext.request.contextPath}/resources/images/category/hotel/nearby/11.jpg" class="rounded-circle" alt="">

                <div class="card-body p-0 pt-3">
                    <h5 class="card-title"><a href="#" class="stretched-link">충남</a></h5>
                </div>
            </div>
        </div>
        <!-- Card item END -->

        <!-- Card item START -->
        <div class="col-6 col-sm-4 col-lg-3 col-xl-2">
            <div class="card bg-transparent text-center p-1 h-100">
                <!-- Image -->
                <img src="${pageContext.request.contextPath}/resources/images/category/hotel/nearby/01.jpg" class="rounded-circle" alt="">

                <div class="card-body p-0 pt-3">
                    <h5 class="card-title"><a href="#" class="stretched-link">울산</a></h5>
                </div>
            </div>
        </div>
        <!-- Card item END -->

        <!-- Card item START -->
        <div class="col-6 col-sm-4 col-lg-3 col-xl-2">
            <div class="card bg-transparent text-center p-1 h-100">
                <!-- Image -->
                <img src="${pageContext.request.contextPath}/resources/images/category/hotel/nearby/01.jpg" class="rounded-circle" alt="">

                <div class="card-body p-0 pt-3">
                    <h5 class="card-title"><a href="#" class="stretched-link">부산</a></h5>
                </div>
            </div>
        </div>
        <!-- Card item END -->

        <!-- Card item START -->
        <div class="col-6 col-sm-4 col-lg-3 col-xl-2">
            <div class="card bg-transparent text-center p-1 h-100">
                <!-- Image -->
                <img src="${pageContext.request.contextPath}/resources/images/category/hotel/nearby/01.jpg" class="rounded-circle" alt="">

                <div class="card-body p-0 pt-3">
                    <h5 class="card-title"><a href="#" class="stretched-link">제주</a></h5>
                </div>
            </div>
        </div>
        <!-- Card item END -->

        <!-- Card item START -->
        <div class="col-6 col-sm-4 col-lg-3 col-xl-2">
            <div class="card bg-transparent text-center p-1 h-100">
                <!-- Image -->
                <img src="${pageContext.request.contextPath}/resources/images/category/hotel/nearby/01.jpg" class="rounded-circle" alt="">

                <div class="card-body p-0 pt-3">
                    <h5 class="card-title"><a href="#" class="stretched-link">강원</a></h5>
                </div>
            </div>
        </div>
        <!-- Card item END -->
        <!-- 기능 구현 안되면  체크 박스로 대신 누르면 지역 이름 기반으로 최신 공연 가져오기-->
    </div> <!-- Row END -->


</div>
</section>
<!-- =======================
Near by END -->

<!-- =======================
Services START -->
<section class="pt-0 pt-lg-5">
<div class="container">
    <div class="row g-4 align-items-top">
        <div class="col-lg-6">
            <br><br><br><br>
            <!-- Title -->
            <h2>동네 근처 행사</h2>
            <p>근처에서 열리는 행사에 관한 정보를 누구보다 빠르게 확인하고 어서 참여하세요!</p>
            <!-- Services -->
                <div>
                    <ul class="list-group list-group-borderless mt-2 mb-0">
                        <li class="list-group-item">
                            <h6 class="fw-normal mb-0" style="font-size: 25px;"><i class="fa-solid fa-arrow-right fa-fw text-primary me-2"></i>공연 이름 : 가을, 명동으로</h6>
                        </li>

                        <li class="list-group-item">
                            <h6 class="fw-normal mb-0" style="font-size: 25px;"><i class="fa-solid fa-map fa-fw text-primary me-2"></i>행사 장소 : 명동역 상상광장 ,재미랑3호 김청기 기념관 동심</h6>
                        </li>

                        <li class="list-group-item">
                            <h6 class="fw-normal mb-0" style="font-size: 25px;"><i class="fa-solid fa-stopwatch fa-fw text-primary me-2"></i>열리는 시간 : 12:20~16:55</h6>
                        </li>

                        <li class="list-group-item">
                            <h6 class="fw-normal mb-0" style="font-size: 25px;"><i class="fa-solid fa-calendar fa-fw text-primary me-2"></i>행사 날짜 : 20231021 ~ 20231022</h6>
                        </li>

                        <li class="list-group-item">
                            <h6 class="fw-normal mb-0" style="font-size: 25px;"><i class="fa-solid fa-money-bill fa-fw text-primary me-2"></i>요금 : 무료</h6>
                        </li>

                        <li class="list-group-item">
                            <h6 class="fw-normal mb-0" style="font-size: 25px;"><i class="fa-solid fa-building fa-fw text-primary me-2"></i>주관사 : 남산골 상인회 , 서울 중구청</h6>
                        </li>

                        <li class="list-group-item">
                            <h6 class="fw-normal mb-0" style="font-size: 25px;"><i class="fa-solid fa-phone fa-fw text-primary me-2"></i>전화번호 : 02-6084-7079</h6>
                        </li>
                    </ul>
                </div>
        </div>

        <div class="col-lg-6">
            <div class="card">
                <img src="https://tong.visitkorea.or.kr/cms/resource/07/3021807_image2_1.jpg" class="card-img" alt="">
                <!-- Card body -->
                <div class="position-absolute top-100 start-50 translate-middle w-100">
                    <div class="card-body text-center bg-mode shadow rounded mx-4 p-3">
                        <h6 class="card-title mb-1"><a href="#">가을 , 명동으로</a></h6>
                        <small>20231021</small>
                        <div class="mt-2"><a href="#" class="btn btn-sm btn-dark mb-0">자세히</a></div>
                    </div>
                </div>
            </div>
        </div>

    </div> <!-- Row END -->
</div>
</section>
<!-- =======================
Services END -->


<!-- =======================
Gallery START -->
<section>
<div class="container-fluid">
    <!-- Title -->
    <div class="row mb-md-4">
        <div class="col-12 mx-auto text-center mb-4">
            <h2 class="mb-0">리뷰 사진 미리보기</h2>
        </div>
    </div>

        <!-- Slider START -->
        <div class="tiny-slider arrow-round arrow-blur arrow-hover rounded-3 overflow-hidden">
            <div class="tiny-slider-inner d-flex align-items-center" data-autoplay="true" data-edge="2" data-arrow="true" data-dots="false" data-items="6" data-items-lg="4" data-items-sm="2">
                <!-- Slider item -->
                <div>
                    <a data-glightbox="" data-gallery="gallery" href="${pageContext.request.contextPath}/resources/images/category/hotel/gallery/01.jpg">
                        <div class="card card-element-hover card-overlay-hover overflow-hidden">
                            <!-- Image -->
                            <img src="${pageContext.request.contextPath}/resources/images/category/culture-theme/festival.jpg" class="rounded-3" alt="">
                            <!-- Full screen button -->
                            <div class="hover-element w-100 h-100">
                                <i class="bi bi-fullscreen fs-6 text-white position-absolute top-50 start-50 translate-middle bg-dark rounded-1 p-2 lh-1"></i>
                            </div>
                        </div>
                    </a>
                </div>
                
                <!-- Slider item -->
                <div>
                    <a data-glightbox="" data-gallery="gallery" href="${pageContext.request.contextPath}/resources/images/category/hotel/gallery/01.jpg">
                        <div class="card card-element-hover card-overlay-hover overflow-hidden">
                            <!-- Image -->
                            <img src="${pageContext.request.contextPath}/resources/images/category/culture-theme/festival2.jpg" class="rounded-3" alt="">
                            <!-- Full screen button -->
                            <div class="hover-element w-100 h-100">
                                <i class="bi bi-fullscreen fs-6 text-white position-absolute top-50 start-50 translate-middle bg-dark rounded-1 p-2 lh-1"></i>
                            </div>
                        </div>
                    </a>
                </div>

                <!-- Slider item -->
                <div>
                    <a data-glightbox="" data-gallery="gallery" href="${pageContext.request.contextPath}/resources/images/category/hotel/gallery/01.jpg">
                        <div class="card card-element-hover card-overlay-hover overflow-hidden">
                            <!-- Image -->
                            <img src="${pageContext.request.contextPath}/resources/images/category/culture-theme/festival3.jpg" class="rounded-3" alt="">
                            <!-- Full screen button -->
                            <div class="hover-element w-100 h-100">
                                <i class="bi bi-fullscreen fs-6 text-white position-absolute top-50 start-50 translate-middle bg-dark rounded-1 p-2 lh-1"></i>
                            </div>
                        </div>
                    </a>
                </div>

                <!-- Slider item -->
                <div>
                    <a data-glightbox="" data-gallery="gallery" href="${pageContext.request.contextPath}/resources/images/category/hotel/gallery/01.jpg">
                        <div class="card card-element-hover card-overlay-hover overflow-hidden">
                            <!-- Image -->
                            <img src="${pageContext.request.contextPath}/resources/images/category/culture-theme/show1.jpg" class="rounded-3" alt="">
                            <!-- Full screen button -->
                            <div class="hover-element w-100 h-100">
                                <i class="bi bi-fullscreen fs-6 text-white position-absolute top-50 start-50 translate-middle bg-dark rounded-1 p-2 lh-1"></i>
                            </div>
                        </div>
                    </a>
                </div>

                <!-- Slider item -->
                <div>
                    <a data-glightbox="" data-gallery="gallery" href="${pageContext.request.contextPath}/resources/images/category/hotel/gallery/01.jpg">
                        <div class="card card-element-hover card-overlay-hover overflow-hidden">
                            <!-- Image -->
                            <img src="${pageContext.request.contextPath}/resources/images/category/culture-theme/show2.jpg" class="rounded-3" alt="">
                            <!-- Full screen button -->
                            <div class="hover-element w-100 h-100">
                                <i class="bi bi-fullscreen fs-6 text-white position-absolute top-50 start-50 translate-middle bg-dark rounded-1 p-2 lh-1"></i>
                            </div>
                        </div>
                    </a>
                </div>

                <!-- Slider item -->
                <div>
                    <a data-glightbox="" data-gallery="gallery" href="${pageContext.request.contextPath}/resources/images/category/hotel/gallery/01.jpg">
                        <div class="card card-element-hover card-overlay-hover overflow-hidden">
                            <!-- Image -->
                            <img src="${pageContext.request.contextPath}/resources/images/category/culture-theme/show3.jpg" class="rounded-3" alt="">
                            <!-- Full screen button -->
                            <div class="hover-element w-100 h-100">
                                <i class="bi bi-fullscreen fs-6 text-white position-absolute top-50 start-50 translate-middle bg-dark rounded-1 p-2 lh-1"></i>
                            </div>
                        </div>
                    </a>
                </div>

                <!-- Slider item -->
                <div>
                    <a data-glightbox="" data-gallery="gallery" href="${pageContext.request.contextPath}/resources/images/category/hotel/gallery/01.jpg">
                        <div class="card card-element-hover card-overlay-hover overflow-hidden">
                            <!-- Image -->
                            <img src="${pageContext.request.contextPath}/resources/images/category/culture-theme/festival.jpg" class="rounded-3" alt="">
                            <!-- Full screen button -->
                            <div class="hover-element w-100 h-100">
                                <i class="bi bi-fullscreen fs-6 text-white position-absolute top-50 start-50 translate-middle bg-dark rounded-1 p-2 lh-1"></i>
                            </div>
                        </div>
                    </a>
                </div>
                
                <!-- Slider item -->
                <div>
                    <a data-glightbox="" data-gallery="gallery" href="${pageContext.request.contextPath}/resources/images/category/hotel/gallery/01.jpg">
                        <div class="card card-element-hover card-overlay-hover overflow-hidden">
                            <!-- Image -->
                            <img src="${pageContext.request.contextPath}/resources/images/category/culture-theme/festival2.jpg" class="rounded-3" alt="">
                            <!-- Full screen button -->
                            <div class="hover-element w-100 h-100">
                                <i class="bi bi-fullscreen fs-6 text-white position-absolute top-50 start-50 translate-middle bg-dark rounded-1 p-2 lh-1"></i>
                            </div>
                        </div>
                    </a>
                </div>

                <!-- Slider item -->
                <div>
                    <a data-glightbox="" data-gallery="gallery" href="${pageContext.request.contextPath}/resources/images/category/hotel/gallery/01.jpg">
                        <div class="card card-element-hover card-overlay-hover overflow-hidden">
                            <!-- Image -->
                            <img src="${pageContext.request.contextPath}/resources/images/category/culture-theme/festival3.jpg" class="rounded-3" alt="">
                            <!-- Full screen button -->
                            <div class="hover-element w-100 h-100">
                                <i class="bi bi-fullscreen fs-6 text-white position-absolute top-50 start-50 translate-middle bg-dark rounded-1 p-2 lh-1"></i>
                            </div>
                        </div>
                    </a>
                </div>

                <!-- Slider item -->
                <div>
                    <a data-glightbox="" data-gallery="gallery" href="${pageContext.request.contextPath}/resources/images/category/hotel/gallery/01.jpg">
                        <div class="card card-element-hover card-overlay-hover overflow-hidden">
                            <!-- Image -->
                            <img src="${pageContext.request.contextPath}/resources/images/category/culture-theme/show1.jpg" class="rounded-3" alt="">
                            <!-- Full screen button -->
                            <div class="hover-element w-100 h-100">
                                <i class="bi bi-fullscreen fs-6 text-white position-absolute top-50 start-50 translate-middle bg-dark rounded-1 p-2 lh-1"></i>
                            </div>
                        </div>
                    </a>
                </div>

                <!-- Slider item -->
                <div>
                    <a data-glightbox="" data-gallery="gallery" href="${pageContext.request.contextPath}/resources/images/category/hotel/gallery/01.jpg">
                        <div class="card card-element-hover card-overlay-hover overflow-hidden">
                            <!-- Image -->
                            <img src="${pageContext.request.contextPath}/resources/images/category/culture-theme/show2.jpg" class="rounded-3" alt="">
                            <!-- Full screen button -->
                            <div class="hover-element w-100 h-100">
                                <i class="bi bi-fullscreen fs-6 text-white position-absolute top-50 start-50 translate-middle bg-dark rounded-1 p-2 lh-1"></i>
                            </div>
                        </div>
                    </a>
                </div>

                <!-- Slider item -->
                <div>
                    <a data-glightbox="" data-gallery="gallery" href="${pageContext.request.contextPath}/resources/images/category/hotel/gallery/01.jpg">
                        <div class="card card-element-hover card-overlay-hover overflow-hidden">
                            <!-- Image -->
                            <img src="${pageContext.request.contextPath}/resources/images/category/culture-theme/show3.jpg" class="rounded-3" alt="">
                            <!-- Full screen button -->
                            <div class="hover-element w-100 h-100">
                                <i class="bi bi-fullscreen fs-6 text-white position-absolute top-50 start-50 translate-middle bg-dark rounded-1 p-2 lh-1"></i>
                            </div>
                        </div>
                    </a>
                </div>
                
            </div>
        </div>			
    <!-- Slider END	 -->
</div>
</section>
<!-- =======================
Gallery END -->

</main>
<!-- **************** MAIN CONTENT END **************** -->

<jsp:include page="/WEB-INF/views/common/footer.jsp"/>