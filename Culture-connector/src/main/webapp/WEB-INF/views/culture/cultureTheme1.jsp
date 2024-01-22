<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<jsp:include page="/WEB-INF/views/common/cultureheader.jsp">
	<jsp:param value="Culture Connector" name="title"/>
</jsp:include>

<div id="hero-carousel" class="carousel slide" data-bs-ride="carousel">
    <div class="carousel-inner">
        <div class="carousel-item active c-item">
            <img src="https://english.visitkorea.or.kr/static/front/images/subMain/subMain_visual_travelBasics.png"
                class="d-block w-100 c-img">
            <div class="carousel-caption top-0 mt-4 left-align">
                <h2 class="text-uppercase fs-1 mt-7"><span style="color: black(202, 238, 168);">문화관광지</span> <br> </h2>
                <h4 class="text-white"></h4>
                <br><br><br><br><br>
            </div>
        </div>
    </div>
    </div>

</br>
</br>

    <!--서치바-->
    <div class="container ">
        <h4 class="mx-4 text-primary">떠나고 싶은 지역을 검색하세요!</h4>
        <form action="" method="GET">
            <div class="mx-auto mt-3 search-bar input-group mb-3 z-index-1 px-4" style="font-family: 'SUIT-Medium'"
                id="search">
                <input onkeyup="filter()" id="serchinput" type="text" name="query" value=""
                    class="form-control rounded-pill" placeholder="여행지를 입력하세요. ex)서울, 부산 등">
                <button class="btn btn-primary rounded-pill h-100 px-5  z-index-9" type="submit"
                    style="margin-left: -80px;">Search</button>
            </div>
            <div class="container mx-4 mt-n1">
                <div class="filter-block">
                    <h6 class="mb-3">지역</h6>
                    <ul class="list-inline mb-0">
                        <li class="list-inline-item">
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" id="amenities_0" name="amenities[]">
                                <label class="form-check-label" for="amenities_0">서울 </label>
                            </div>
                        </li>
                        <li class="list-inline-item">
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" id="amenities_1" name="amenities[]">
                                <label class="form-check-label" for="amenities_1">경기 </label>
                            </div>
                        </li>
                        <li class="list-inline-item">
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" id="amenities_2" name="amenities[]">
                                <label class="form-check-label" for="amenities_2">충남 </label>
                            </div>
                        </li>
                        <li class="list-inline-item">
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" id="amenities_3" name="amenities[]">
                                <label class="form-check-label" for="amenities_3">충북 </label>
                            </div>
                        </li>
                        <li class="list-inline-item">
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" id="amenities_4" name="amenities[]">
                                <label class="form-check-label" for="amenities_4"> 강원 </label>
                            </div>
                        </li>
                        <li class="list-inline-item">
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" id="amenities_5" name="amenities[]">
                                <label class="form-check-label" for="amenities_5">전북 </label>
                            </div>
                        </li>

                        <li class="list-inline-item">
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" id="amenities_5" name="amenities[]">
                                <label class="form-check-label" for="amenities_5">전남 </label>
                            </div>
                        </li>

                        <li class="list-inline-item">
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" id="amenities_5" name="amenities[]">
                                <label class="form-check-label" for="amenities_5">제주 </label>
                            </div>
                        </li>
                    </ul>
                </div>
                <br>
                <div class="filter-block">
                    <h6 class="mb-3">Facilities</h6>
                    <ul class="list-inline mb-0">
                        <li class="list-inline-item">
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" id="facilities_0"
                                    name="facilities[]">
                                <label class="form-check-label" for="facilities_0">Free parking on premises </label>
                            </div>
                        </li>
                        <li class="list-inline-item">
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" id="facilities_1"
                                    name="facilities[]">
                                <label class="form-check-label" for="facilities_1">Gym </label>
                            </div>
                        </li>
                        <li class="list-inline-item">
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" id="facilities_2"
                                    name="facilities[]">
                                <label class="form-check-label" for="facilities_2">Hot tub </label>
                            </div>
                        </li>
                        <li class="list-inline-item">
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" id="facilities_3"
                                    name="facilities[]">
                                <label class="form-check-label" for="facilities_3">Pool </label>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </form>
    </div>
    <!--서치바 끝-->


    <main class="container-sm mt-5">
        <section class="pt-0 container">
            <div class="" data-sticky-container>
                <div class="row">
                    <div>
                        <hr>
                        <div class="count" style="float: left;">
                            총 <span class="count text-primary" style=" text-align: left;">40,725</span>
                        </div>
                        <div class="sort" style="float: right;">

                            <input id="sortBtn1" class="btn btn-primary rounded-pill" type="button"
                                name='Ftags' value='최신순&nbsp&#124;'>
                            <input id="sortBtn2" class="btn btn-primary rounded-pill" type="button"
                                name='Ftags' value='거리순&nbsp&#124;'>
                            <input id="sortBtn3" class="btn btn-primary rounded-pill" type="button"
                                name='Ftags' value='인기순'>
                        </div>
                    </div>
                    <!-- Main content START -->
                    <div class="row mt-5">
                         <!-- Card item START -->
                         <div class="col-6  ">
                            <div class="card">
                                <div class="card-body pt-2">
                                    <div class="row g-2 g-sm-4 ">
                                        <!-- Card image -->
                                        <div class="col-md-6 col-xl-6">
                                            <div>
                                                <img src="${pageContext.request.contextPath}/resources/images/library.jpg" class="rounded" alt=""
                                                    style="width: 100%; height: 100%;">
                                            </div>
                                        </div>

                                        <!-- Card title and rating -->
                                        <div class="col-sm-6 col-md-4 col-xl-6">
                                            <h5 class="card-title mb-2"><a href="culture_detail.html">구립구산동도서관마을</a>
                                            </h5>
                                            <!-- Nav divider -->
                                            <ul class="nav nav-divider h6 fw-normal mb-2">
                                                <li>서울 은평구&nbsp</li>
                                                <li>#문화시설</li>

                                            </ul>

                                            <!-- Rating Star -->
                                            <ul class="list-inline mb-0">
                                                <li class="list-inline-item h6 fw-normal me-1 mb-0">4.5</li>
                                                <li class="list-inline-item me-0"><i
                                                        class="fa-solid fa-star text-warning"></i></li>
                                                <li class="list-inline-item me-0"><i
                                                        class="fa-solid fa-star text-warning"></i></li>
                                                <li class="list-inline-item me-0"><i
                                                        class="fa-solid fa-star text-warning"></i></li>
                                                <li class="list-inline-item me-0"><i
                                                        class="fa-solid fa-star text-warning"></i></li>
                                                <li class="list-inline-item"><i
                                                        class="fa-solid fa-star-half-alt text-warning"></i></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Card item END -->
                         <!-- Card item START -->
                         <div class="col-6  ">
                            <div class="card">
                                <div class="card-body pt-2">
                                    <div class="row g-2 g-sm-4 ">
                                        <!-- Card image -->
                                        <div class="col-md-6 col-xl-6">
                                            <div>
                                                <img src="${pageContext.request.contextPath}/resources/images/library.jpg" class="rounded" alt=""
                                                    style="width: 100%; height: 100%;">
                                            </div>
                                        </div>

                                        <!-- Card title and rating -->
                                        <div class="col-sm-6 col-md-4 col-xl-6">
                                            <h5 class="card-title mb-2"><a href="culture_detail.html">구립구산동도서관마을</a>
                                            </h5>
                                            <!-- Nav divider -->
                                            <ul class="nav nav-divider h6 fw-normal mb-2">
                                                <li>서울 은평구&nbsp</li>
                                                <li>#문화시설</li>

                                            </ul>

                                            <!-- Rating Star -->
                                            <ul class="list-inline mb-0">
                                                <li class="list-inline-item h6 fw-normal me-1 mb-0">4.5</li>
                                                <li class="list-inline-item me-0"><i
                                                        class="fa-solid fa-star text-warning"></i></li>
                                                <li class="list-inline-item me-0"><i
                                                        class="fa-solid fa-star text-warning"></i></li>
                                                <li class="list-inline-item me-0"><i
                                                        class="fa-solid fa-star text-warning"></i></li>
                                                <li class="list-inline-item me-0"><i
                                                        class="fa-solid fa-star text-warning"></i></li>
                                                <li class="list-inline-item"><i
                                                        class="fa-solid fa-star-half-alt text-warning"></i></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Card item END -->
                         <!-- Card item START -->
                         <div class="col-6  ">
                            <div class="card">
                                <div class="card-body pt-2">
                                    <div class="row g-2 g-sm-4 ">
                                        <!-- Card image -->
                                        <div class="col-md-6 col-xl-6">
                                            <div>
                                                <img src="${pageContext.request.contextPath}/resources/images/library.jpg" class="rounded" alt=""
                                                    style="width: 100%; height: 100%;">
                                            </div>
                                        </div>

                                        <!-- Card title and rating -->
                                        <div class="col-sm-6 col-md-4 col-xl-6">
                                            <h5 class="card-title mb-2"><a href="culture_detail.html">구립구산동도서관마을</a>
                                            </h5>
                                            <!-- Nav divider -->
                                            <ul class="nav nav-divider h6 fw-normal mb-2">
                                                <li>서울 은평구&nbsp</li>
                                                <li>#문화시설</li>

                                            </ul>

                                            <!-- Rating Star -->
                                            <ul class="list-inline mb-0">
                                                <li class="list-inline-item h6 fw-normal me-1 mb-0">4.5</li>
                                                <li class="list-inline-item me-0"><i
                                                        class="fa-solid fa-star text-warning"></i></li>
                                                <li class="list-inline-item me-0"><i
                                                        class="fa-solid fa-star text-warning"></i></li>
                                                <li class="list-inline-item me-0"><i
                                                        class="fa-solid fa-star text-warning"></i></li>
                                                <li class="list-inline-item me-0"><i
                                                        class="fa-solid fa-star text-warning"></i></li>
                                                <li class="list-inline-item"><i
                                                        class="fa-solid fa-star-half-alt text-warning"></i></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Card item END -->
                         <!-- Card item START -->
                         <div class="col-6  ">
                            <div class="card">
                                <div class="card-body pt-2">
                                    <div class="row g-2 g-sm-4 ">
                                        <!-- Card image -->
                                        <div class="col-md-6 col-xl-6">
                                            <div>
                                                <img src="${pageContext.request.contextPath}/resources/images/library.jpg" class="rounded" alt=""
                                                    style="width: 100%; height: 100%;">
                                            </div>
                                        </div>

                                        <!-- Card title and rating -->
                                        <div class="col-sm-6 col-md-4 col-xl-6">
                                            <h5 class="card-title mb-2"><a href="culture_detail.html">구립구산동도서관마을</a>
                                            </h5>
                                            <!-- Nav divider -->
                                            <ul class="nav nav-divider h6 fw-normal mb-2">
                                                <li>서울 은평구&nbsp</li>
                                                <li>#문화시설</li>

                                            </ul>

                                            <!-- Rating Star -->
                                            <ul class="list-inline mb-0">
                                                <li class="list-inline-item h6 fw-normal me-1 mb-0">4.5</li>
                                                <li class="list-inline-item me-0"><i
                                                        class="fa-solid fa-star text-warning"></i></li>
                                                <li class="list-inline-item me-0"><i
                                                        class="fa-solid fa-star text-warning"></i></li>
                                                <li class="list-inline-item me-0"><i
                                                        class="fa-solid fa-star text-warning"></i></li>
                                                <li class="list-inline-item me-0"><i
                                                        class="fa-solid fa-star text-warning"></i></li>
                                                <li class="list-inline-item"><i
                                                        class="fa-solid fa-star-half-alt text-warning"></i></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Card item END -->
                         <!-- Card item START -->
                         <div class="col-6  ">
                            <div class="card">
                                <div class="card-body pt-2">
                                    <div class="row g-2 g-sm-4 ">
                                        <!-- Card image -->
                                        <div class="col-md-6 col-xl-6">
                                            <div>
                                                <img src="${pageContext.request.contextPath}/resources/images/library.jpg" class="rounded" alt=""
                                                    style="width: 100%; height: 100%;">
                                            </div>
                                        </div>

                                        <!-- Card title and rating -->
                                        <div class="col-sm-6 col-md-4 col-xl-6">
                                            <h5 class="card-title mb-2"><a href="culture_detail.html">구립구산동도서관마을</a>
                                            </h5>
                                            <!-- Nav divider -->
                                            <ul class="nav nav-divider h6 fw-normal mb-2">
                                                <li>서울 은평구&nbsp</li>
                                                <li>#문화시설</li>

                                            </ul>

                                            <!-- Rating Star -->
                                            <ul class="list-inline mb-0">
                                                <li class="list-inline-item h6 fw-normal me-1 mb-0">4.5</li>
                                                <li class="list-inline-item me-0"><i
                                                        class="fa-solid fa-star text-warning"></i></li>
                                                <li class="list-inline-item me-0"><i
                                                        class="fa-solid fa-star text-warning"></i></li>
                                                <li class="list-inline-item me-0"><i
                                                        class="fa-solid fa-star text-warning"></i></li>
                                                <li class="list-inline-item me-0"><i
                                                        class="fa-solid fa-star text-warning"></i></li>
                                                <li class="list-inline-item"><i
                                                        class="fa-solid fa-star-half-alt text-warning"></i></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Card item END -->
                         <!-- Card item START -->
                         <div class="col-6  ">
                            <div class="card">
                                <div class="card-body pt-2">
                                    <div class="row g-2 g-sm-4 ">
                                        <!-- Card image -->
                                        <div class="col-md-6 col-xl-6">
                                            <div>
                                                <img src="${pageContext.request.contextPath}/resources/images/library.jpg" class="rounded" alt=""
                                                    style="width: 100%; height: 100%;">
                                            </div>
                                        </div>

                                        <!-- Card title and rating -->
                                        <div class="col-sm-6 col-md-4 col-xl-6">
                                            <h5 class="card-title mb-2"><a href="culture_detail.html">구립구산동도서관마을</a>
                                            </h5>
                                            <!-- Nav divider -->
                                            <ul class="nav nav-divider h6 fw-normal mb-2">
                                                <li>서울 은평구&nbsp</li>
                                                <li>#문화시설</li>

                                            </ul>

                                            <!-- Rating Star -->
                                            <ul class="list-inline mb-0">
                                                <li class="list-inline-item h6 fw-normal me-1 mb-0">4.5</li>
                                                <li class="list-inline-item me-0"><i
                                                        class="fa-solid fa-star text-warning"></i></li>
                                                <li class="list-inline-item me-0"><i
                                                        class="fa-solid fa-star text-warning"></i></li>
                                                <li class="list-inline-item me-0"><i
                                                        class="fa-solid fa-star text-warning"></i></li>
                                                <li class="list-inline-item me-0"><i
                                                        class="fa-solid fa-star text-warning"></i></li>
                                                <li class="list-inline-item"><i
                                                        class="fa-solid fa-star-half-alt text-warning"></i></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Card item END -->
                         <!-- Card item START -->
                         <div class="col-6  ">
                            <div class="card">
                                <div class="card-body pt-2">
                                    <div class="row g-2 g-sm-4 ">
                                        <!-- Card image -->
                                        <div class="col-md-6 col-xl-6">
                                            <div>
                                                <img src="${pageContext.request.contextPath}/resources/images/library.jpg" class="rounded" alt=""
                                                    style="width: 100%; height: 100%;">
                                            </div>
                                        </div>

                                        <!-- Card title and rating -->
                                        <div class="col-sm-6 col-md-4 col-xl-6">
                                            <h5 class="card-title mb-2"><a href="culture_detail.html">구립구산동도서관마을</a>
                                            </h5>
                                            <!-- Nav divider -->
                                            <ul class="nav nav-divider h6 fw-normal mb-2">
                                                <li>서울 은평구&nbsp</li>
                                                <li>#문화시설</li>

                                            </ul>

                                            <!-- Rating Star -->
                                            <ul class="list-inline mb-0">
                                                <li class="list-inline-item h6 fw-normal me-1 mb-0">4.5</li>
                                                <li class="list-inline-item me-0"><i
                                                        class="fa-solid fa-star text-warning"></i></li>
                                                <li class="list-inline-item me-0"><i
                                                        class="fa-solid fa-star text-warning"></i></li>
                                                <li class="list-inline-item me-0"><i
                                                        class="fa-solid fa-star text-warning"></i></li>
                                                <li class="list-inline-item me-0"><i
                                                        class="fa-solid fa-star text-warning"></i></li>
                                                <li class="list-inline-item"><i
                                                        class="fa-solid fa-star-half-alt text-warning"></i></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Card item END -->
                         <!-- Card item START -->
                         <div class="col-6  ">
                            <div class="card">
                                <div class="card-body pt-2">
                                    <div class="row g-2 g-sm-4 ">
                                        <!-- Card image -->
                                        <div class="col-md-6 col-xl-6">
                                            <div>
                                                <img src="${pageContext.request.contextPath}/resources/images/library.jpg" class="rounded" alt=""
                                                    style="width: 100%; height: 100%;">
                                            </div>
                                        </div>

                                        <!-- Card title and rating -->
                                        <div class="col-sm-6 col-md-4 col-xl-6">
                                            <h5 class="card-title mb-2"><a href="culture_detail.html">구립구산동도서관마을</a>
                                            </h5>
                                            <!-- Nav divider -->
                                            <ul class="nav nav-divider h6 fw-normal mb-2">
                                                <li>서울 은평구&nbsp</li>
                                                <li>#문화시설</li>

                                            </ul>

                                            <!-- Rating Star -->
                                            <ul class="list-inline mb-0">
                                                <li class="list-inline-item h6 fw-normal me-1 mb-0">4.5</li>
                                                <li class="list-inline-item me-0"><i
                                                        class="fa-solid fa-star text-warning"></i></li>
                                                <li class="list-inline-item me-0"><i
                                                        class="fa-solid fa-star text-warning"></i></li>
                                                <li class="list-inline-item me-0"><i
                                                        class="fa-solid fa-star text-warning"></i></li>
                                                <li class="list-inline-item me-0"><i
                                                        class="fa-solid fa-star text-warning"></i></li>
                                                <li class="list-inline-item"><i
                                                        class="fa-solid fa-star-half-alt text-warning"></i></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Card item END -->
                         <!-- Card item START -->
                         <div class="col-6  ">
                            <div class="card">
                                <div class="card-body pt-2">
                                    <div class="row g-2 g-sm-4 ">
                                        <!-- Card image -->
                                        <div class="col-md-6 col-xl-6">
                                            <div>
                                                <img src="${pageContext.request.contextPath}/resources/images/library.jpg" class="rounded" alt=""
                                                    style="width: 100%; height: 100%;">
                                            </div>
                                        </div>

                                        <!-- Card title and rating -->
                                        <div class="col-sm-6 col-md-4 col-xl-6">
                                            <h5 class="card-title mb-2"><a href="culture_detail.html">구립구산동도서관마을</a>
                                            </h5>
                                            <!-- Nav divider -->
                                            <ul class="nav nav-divider h6 fw-normal mb-2">
                                                <li>서울 은평구&nbsp</li>
                                                <li>#문화시설</li>

                                            </ul>

                                            <!-- Rating Star -->
                                            <ul class="list-inline mb-0">
                                                <li class="list-inline-item h6 fw-normal me-1 mb-0">4.5</li>
                                                <li class="list-inline-item me-0"><i
                                                        class="fa-solid fa-star text-warning"></i></li>
                                                <li class="list-inline-item me-0"><i
                                                        class="fa-solid fa-star text-warning"></i></li>
                                                <li class="list-inline-item me-0"><i
                                                        class="fa-solid fa-star text-warning"></i></li>
                                                <li class="list-inline-item me-0"><i
                                                        class="fa-solid fa-star text-warning"></i></li>
                                                <li class="list-inline-item"><i
                                                        class="fa-solid fa-star-half-alt text-warning"></i></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Card item END -->

                         <!-- Card item START -->
                         <div class="col-6  ">
                            <div class="card">
                                <div class="card-body pt-2">
                                    <div class="row g-2 g-sm-4 ">
                                        <!-- Card image -->
                                        <div class="col-md-6 col-xl-6">
                                            <div>
                                                <img src="${pageContext.request.contextPath}/resources/images/library.jpg" class="rounded" alt=""
                                                    style="width: 100%; height: 100%;">
                                            </div>
                                        </div>

                                        <!-- Card title and rating -->
                                        <div class="col-sm-6 col-md-4 col-xl-6">
                                            <h5 class="card-title mb-2"><a href="culture_detail.html">구립구산동도서관마을</a>
                                            </h5>
                                            <!-- Nav divider -->
                                            <ul class="nav nav-divider h6 fw-normal mb-2">
                                                <li>서울 은평구&nbsp</li>
                                                <li>#문화시설</li>
                                            </ul>
                                            <!-- Rating Star -->
                                            <ul class="list-inline mb-0">
                                                <li class="list-inline-item h6 fw-normal me-1 mb-0">4.5</li>
                                                <li class="list-inline-item me-0"><i
                                                        class="fa-solid fa-star text-warning"></i></li>
                                                <li class="list-inline-item me-0"><i
                                                        class="fa-solid fa-star text-warning"></i></li>
                                                <li class="list-inline-item me-0"><i
                                                        class="fa-solid fa-star text-warning"></i></li>
                                                <li class="list-inline-item me-0"><i
                                                        class="fa-solid fa-star text-warning"></i></li>
                                                <li class="list-inline-item"><i
                                                        class="fa-solid fa-star-half-alt text-warning"></i></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Card item END -->
                    </div>
                </div>
                <!-- Main content END -->
                <!-- Pagination -->
                <nav class="d-flex justify-content-center mt-3" aria-label="navigation">
                    <ul class="pagination pagination-primary-soft d-inline-block d-md-flex rounded mb-0">
                        <li class="page-item mb-0"><a class="page-link" href="#" tabindex="-1"><i
                                    class="fa-solid fa-angle-left"></i></a></li>
                        <li class="page-item mb-0"><a class="page-link" href="#">1</a></li>
                        <li class="page-item mb-0 active"><a class="page-link" href="#">2</a></li>
                        <li class="page-item mb-0"><a class="page-link" href="#">..</a></li>
                        <li class="page-item mb-0"><a class="page-link" href="#">6</a></li>
                        <li class="page-item mb-0"><a class="page-link" href="#"><i
                                    class="fa-solid fa-angle-right"></i></a></li>
                    </ul>
                </nav>
                
            </div> <!-- Row END -->

</div>


</section>

</main>


<jsp:include page="/WEB-INF/views/common/footer.jsp"/>