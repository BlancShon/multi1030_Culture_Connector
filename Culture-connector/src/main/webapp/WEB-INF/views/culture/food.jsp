<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%-- <jsp:include page="/WEB-INF/views/common/culutreheader.jsp"> --%>
<%-- <jsp:param value="Culture Connector" name="title"/> --%>
<%-- </jsp:include> --%>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet"
	integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
<script defer src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8"
	crossorigin="anonymous"></script>
<meta name="author" content="Webestica.com" />
<meta name="description" content="Booking - Multipurpose Online Booking Theme" />


<!-- **************** MAIN CONTENT START **************** -->
<main>
<!-- =======================
Main Banner START -->
<div id="hero-carousel" class="carousel slide" data-bs-ride="carousel">
    <div class="carousel-inner">
      <div class="carousel-item active c-item">
        <img src="https://www.adobe.com/kr/creativecloud/photography/hub/guides/media_1672836e8a1d0e0fe500d33e553a8242f95be9631.jpeg?width=750&format=jpeg&optimize=medium.jpg" class="d-block w-100 c-img" alt="Slide 1">
        <div class="carousel-caption top-0 mt-4 left-align">
        
          <p class="text-uppercase fs-2 mt-7"><span style="color: lemonchiffon;">전국 팔도의 맛집</span><br>그리고 <br><span style="color: burlywood;">여유로운 커피 한잔</span></p>

          <h4 ><a href="#" class="text-white" style="text-align: left" >자세히 보기</a></h4>
          
          <!-- <a href="#" class="btn btn-link text-light text-decoration-none fs-6 mt-5 d-block" style="border-bottom: 1px solid transparent; transition: border-bottom 0.3sease; text-align: left;">자세히 보기</a> -->

        </div>
      </div>
    </div>
<!-- =======================
Main Banner END -->

<!-- =======================
Special offer START -->
<section class="pb-0">
	<div class="container">
		<!-- Title -->
		<div class="row mb-4">
			<div class="col-12 text-center">
				<span class="mb-0">
                    <h2>당신을 위한 맛집 추천 <span style="color: lightcoral;">BEST</span></h2> 
                </span>
			</div>
		</div>
        <br><br>


		<!-- Slider START -->
		<div class="tiny-slider arrow-round arrow-blur arrow-hover">
			<div class="tiny-slider-inner mb-8" data-autoplay="true" data-arrow="true" data-edge="2" data-dots="false" data-items-xl="3" data-items-lg="3" data-items-md="2" data-items-sm="1">
				
				<!-- Offer card START -->
				<div>
					<div class="card">
						<img src="${pageContext.request.contextPath}/resources/images/R고기.png" class="card-img" alt="">
						<!-- Card body -->
						<div class="position-absolute top-100 start-50 translate-middle w-100">
							<div class="card-body text-center bg-mode shadow rounded mx-4 p-3">
								<h6 class="card-title mb-1"><a href="#" style="text-align: center;">R고기</a><br>
                                    <li class="list-inline-item me-0"><i class="fa-solid fa-star text-warning"></i></li>
                                    <li class="list-inline-item me-0"><i class="fa-solid fa-star text-warning"></i></li>
                                    <li class="list-inline-item me-0"><i class="fa-solid fa-star text-warning"></i></li>
                                    <li class="list-inline-item me-0"><i class="fa-solid fa-star text-warning"></i></li></h6>
								<medium style="color: black;">강남구 청담동</medium><br>
								<small>인기 메뉴 : 등심(100g), 안심(100g)</small><br>
                                
								<div class="mt-2"><a href="#" class="btn btn-sm btn-dark mb-0">메뉴 보기</a></div>
							</div>
						</div>
					</div>
				</div>
				<!-- Offer card END -->

				<!-- Offer card START -->
                
				<div>
					<div class="card">
						<img src="${pageContext.request.contextPath}/resources/images/보르트메종.png" class="card-img" alt="">
						<!-- Card body -->
						<div class="position-absolute top-100 start-50 translate-middle w-100">
							<div class="card-body text-center bg-mode shadow rounded mx-4 p-3">
								<h6 class="card-title mb-1"><a href="#" style="text-align: center;">보르트메종</a><br>
                                    <li class="list-inline-item me-0"><i class="fa-solid fa-star text-warning"></i></li>
                                    <li class="list-inline-item me-0"><i class="fa-solid fa-star text-warning"></i></li>
                                    <li class="list-inline-item me-0"><i class="fa-solid fa-star text-warning"></i></li>
                                    <li class="list-inline-item me-0"><i class="fa-solid fa-star text-warning"></i></li>
                                    <li class="list-inline-item me-0"><i class="fa-solid fa-star text-warning"></i></li></h6>
								<medium style="color: black;">대구 동구</medium><br>
								<small>인기 메뉴 : 런치 시그니처 코스</small><br>
                                
								<div class="mt-2"><a href="#" class="btn btn-sm btn-dark mb-0">메뉴 보기</a></div>
							</div>
						</div>
					</div>
				</div>

                <div>
					<div class="card">
						<img src="${pageContext.request.contextPath}/resources/images/스시마츠모토.png" class="card-img" alt="">
						<!-- Card body -->
						<div class="position-absolute top-100 start-50 translate-middle w-100">
							<div class="card-body text-center bg-mode shadow rounded mx-4 p-3">
								<h6 class="card-title mb-1"><a href="#" style="text-align: center;">스시마츠모토</a><br>
                                    <li class="list-inline-item me-0"><i class="fa-solid fa-star text-warning"></i></li>
                                    <li class="list-inline-item me-0"><i class="fa-solid fa-star text-warning"></i></li>
                                    <li class="list-inline-item me-0"><i class="fa-solid fa-star text-warning"></i></li>
                                    <li class="list-inline-item me-0"><i class="fa-solid fa-star text-warning"></i></li></h6>
								<medium style="color: black;">인천 중구</medium><br>
								<small>인기 메뉴 : 런치 오마카세</small><br>
                                
								<div class="mt-2"><a href="#" class="btn btn-sm btn-dark mb-0">메뉴 보기</a></div>
							</div>
						</div>
					</div>
				</div>
				<!-- Offer card END -->
                <div>
					<div class="card">
						<img src="${pageContext.request.contextPath}/resources/images/세야스시.png" class="card-img" alt="">
						<!-- Card body -->
						<div class="position-absolute top-100 start-50 translate-middle w-100">
							<div class="card-body text-center bg-mode shadow rounded mx-4 p-3">
								<h6 class="card-title mb-1"><a href="#" style="text-align: center;">세야스시</a><br>
                                    <li class="list-inline-item me-0"><i class="fa-solid fa-star text-warning"></i></li>
                                    <li class="list-inline-item me-0"><i class="fa-solid fa-star text-warning"></i></li>
                                    <li class="list-inline-item me-0"><i class="fa-solid fa-star text-warning"></i></li>
                                    <li class="list-inline-item me-0"><i class="fa-solid fa-star text-warning"></i></li></h6>
								<medium style="color: black;">송파구 석촌동</medium><br>
								<small>인기 메뉴 : 런치 시그니처 코스</small><br>
                                
								<div class="mt-2"><a href="#" class="btn btn-sm btn-dark mb-0">메뉴 보기</a></div>
							</div>
						</div>
					</div>
				</div>

			</div>	
		</div>
		<!-- Slider END -->
	</div>
</section>
<!-- =======================추천 맛집  END -->

<!--서치바-->
<div  div class="container">

    <div class="row height d-flex justify-content-center align-items-center">
  
      <div class="col-md-8">
  
        <div class="search">
          <i class="fa fa-search"></i>
          <input type="text" class="form-control" style="font-size: large" " placeholder="가보고 싶은 맛집을 검색해보세요">
          <button class="btn btn-primary" style="font-size: x-large;">검색</button>
        </div>
        
      </div>
      
    </div>
  </div>
  <!--서치바 끝-->
<!-- =======================

    
Near by START -->
<section>
	<div class="container">
		<!-- Title -->
		<div class="row mb-4">
			<div class="col-12 text-center">
				<h2 class="mb-0" style="text-align: left;">전국 지역별 보기</h2>
                

			</div>
		</div>

		<div class="row g-4 g-md-5">
			<!-- Card item START -->
			<div class="col-6 col-sm-4 col-lg-3 col-xl-2">
				<div class="card bg-transparent text-center p-1 h-100">
					<!-- Image -->
					<img src="${pageContext.request.contextPath}/resources/images/category/main/11.jpg" class="rounded-circle" alt="">

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
					<img src="${pageContext.request.contextPath}/resources/images/category/locationIMG/gyunggi.jpg" class="rounded-circle" alt="">

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
					<img src="${pageContext.request.contextPath}/resources/images/category/main/14.jpg" class="rounded-circle" alt="">

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
					<img src="${pageContext.request.contextPath}/resources/images/category/locationIMG/daejeon.jpeg" class="rounded-circle" alt="">

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
					<img src="${pageContext.request.contextPath}/resources/images/category/main/15.jpg" class="rounded-circle" alt="">

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
                  <img src="${pageContext.request.contextPath}/resources/images/category/main/12.jpg" class="rounded-circle" alt=""  />
        
                  <div class="card-body p-0 pt-3">
                    <h5 class="card-title">
                      <a href="#" class="stretched-link">전북</a>
                    </h5>
                  </div>
                </div>
              </div>
			<!-- Card item END -->

			<!-- Card item START -->
			<div class="col-6 col-sm-4 col-lg-3 col-xl-2">
				<div class="card bg-transparent text-center p-1 h-100">
					<!-- Image -->
					<img src="${pageContext.request.contextPath}/resources/images/category/locationIMG/gyungbuk.jpeg" class="rounded-circle" alt="">

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
					<img src="${pageContext.request.contextPath}/resources/images/category/locationIMG/chungbuk.jpeg" class="rounded-circle" alt="">

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
					<img src="${pageContext.request.contextPath}/resources/images/category/locationIMG/jeonnam.jpeg" class="rounded-circle" alt="">

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
					<img src="${pageContext.request.contextPath}/resources/images/category/main/16.jpg" class="rounded-circle" alt="">

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
					<img src="${pageContext.request.contextPath}/resources/images/category/locationIMG/chungnam.jpg" class="rounded-circle" alt="">

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
					<img src="${pageContext.request.contextPath}/resources/images/category/locationIMG/gangwon.jpg" class="rounded-circle" alt="">

					<div class="card-body p-0 pt-3">
						<h5 class="card-title"><a href="#" class="stretched-link">강원</a></h5>
					</div>
				</div>
			</div>
			<!-- Card item END -->
			<!-- Card item START -->
			<div class="col-6 col-sm-4 col-lg-3 col-xl-2">
				<div class="card bg-transparent text-center p-1 h-100">
					<!-- Image -->
					<img src="${pageContext.request.contextPath}/resources/images/category/locationIMG/ulsan.png" class="rounded-circle" alt="">

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
					<img src="${pageContext.request.contextPath}/resources/images/category/locationIMG/busan.jpeg" class="rounded-circle" alt="">

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
					<img src="${pageContext.request.contextPath}/resources/images/category/main/13.jpg" class="rounded-circle" alt="">

					<div class="card-body p-0 pt-3">
						<h5 class="card-title"><a href="#" class="stretched-link">제주</a></h5>
					</div>
				</div>
			</div>
            <br><br>

            <div class="row g-4 g-md-5">
                <!-- Card item START -->
                    <div class="col-12 text-center">
                        <h2 class="mb-0" style="text-align: left;">음식별 보기</h2>
                    </div>
                <div class="col-6 col-sm-4 col-lg-3 col-xl-2">
                    <div class="card bg-transparent text-center p-1 h-100">
                        <!-- Image -->
                        <img src="${pageContext.request.contextPath}/resources/images/category/locationIMG/korean.jpeg" class="rounded-circle" alt="">
    
                        <div class="card-body p-0 pt-3">
                            <h5 class="card-title"><a href="#" class="stretched-link">한식</a></h5>
                        </div>
                    </div>
                </div>

                <!-- Card item START -->
                <div class="col-6 col-sm-4 col-lg-3 col-xl-2">
                    <div class="card bg-transparent text-center p-1 h-100">
                        <!-- Image -->
                        <img src="${pageContext.request.contextPath}/resources/images/category/locationIMG/chinese.jpg" class="rounded-circle" alt="">
    
                        <div class="card-body p-0 pt-3">
                            <h5 class="card-title"><a href="#" class="stretched-link">중식</a></h5>
                        </div>
                    </div>
                </div>

                <!-- Card item START -->
                <div class="col-6 col-sm-4 col-lg-3 col-xl-2">
                    <div class="card bg-transparent text-center p-1 h-100">
                        <!-- Image -->
                        <img src="${pageContext.request.contextPath}/resources/images/category/locationIMG/japanese.jpeg" class="rounded-circle" alt="">
    
                        <div class="card-body p-0 pt-3">
                            <h5 class="card-title"><a href="#" class="stretched-link">일식</a></h5>
                        </div>
                    </div>
                </div>

                <!-- Card item START -->
                <div class="col-6 col-sm-4 col-lg-3 col-xl-2">
                    <div class="card bg-transparent text-center p-1 h-100">
                        <!-- Image -->
                        <img src="${pageContext.request.contextPath}/resources/images/category/locationIMG/america.jpg" class="rounded-circle" alt="">
    
                        <div class="card-body p-0 pt-3">
                            <h5 class="card-title"><a href="#" class="stretched-link">양식</a></h5>
                        </div>
                    </div>
                </div>

                <!-- Card item START -->
                <div class="col-6 col-sm-4 col-lg-3 col-xl-2">
                    <div class="card bg-transparent text-center p-1 h-100">
                        <!-- Image -->
                        <img src="${pageContext.request.contextPath}/resources/images/category/locationIMG/coffee.jpeg" class="rounded-circle" alt="">
    
                        <div class="card-body p-0 pt-3">
                            <h5 class="card-title"><a href="#" class="stretched-link">커피</a></h5>
                        </div>
                    </div>
                </div>
			<!-- Card item END -->
		</div> <!-- Row END -->
	</div>
</section>
<!-- =======================
Near by END -->

<!-- =======================
Services START -->
<section class="pt-0 pt-lg-5">
	<div class="container">
		<div class="row g-6 align-items-center">
			<div class="col-lg-10">
				<!-- Title -->
				<h2>'대구', '커피' 맛집 안내</h2><br>

				<p style="color: rgb(13, 10, 7);" style="font-size: medium;"><b>'대구', '커피'를 검색한 결과 목록입니다.</b></p>

		</div> <!-- Row END -->
	</div>
</section>
<!-- =======================
<!-- =======================
Title and Tabs END -->

<!-- =======================
Hotel grid START -->
<section class="pt-0">
	<div class="container">
		<div class="row g-4">

			<!-- Card item START -->
			<div class="col-md-6 col-xl-4">
				<div class="card shadow p-2 pb-0 h-100">
					<!-- Overlay item -->
					<div class="position-absolute top-0 start-0 z-index-1 m-4">
						<!-- <div class="badge bg-danger text-white">30% Off</div> -->
					</div>

					<!-- 음식점 검색 결과 화면 (슬라이더 기능) -->
					<div class="tiny-slider arrow-round arrow-xs arrow-dark rounded-2 overflow-hidden">
						<div class="tiny-slider-inner" data-autoplay="false" data-arrow="true" data-dots="false" data-items="1">
							<!-- Image item -->
							<div><img src="${pageContext.request.contextPath}/resources/images/category/foodShop/rest1.jpeg" alt="Card image"></div>

						</div>
					</div>
					<!-- Slider END -->

					<!-- Card body START -->
					<div class="card-body px-3 pb-0">
                        
						<!-- 음식 조회 결과 화면의 텍스트 수정 -  상세페이지 이동 링크 수정 필요 -->
						<h5 class="card-title"><a href="hotel-detail.html">울산 농수산물 도매시장</a>
                        <a href="#" class="h6 mb-0 z-index-2"><i class="bi fa-fw bi-bookmark" style="align-items: last baseline;"></i></a></h5>
                        

						<!-- List -->
						<ul class="nav nav-divider mb-2 mb-sm-3">
							<li class="nav-item">울산 남구</li>
                            <li class="nav-item">농수산 도매 시장</li>
							<li class="nav-item">13452.3km</li>
						</ul>
					</div>
					<!-- Card body END -->

					<!-- Card footer START-->
					<div class="card-footer pt-0">
						<!-- Price and Button -->
						<div class="d-sm-flex justify-content-sm-between align-items-center">
							<!-- Price -->
							<!-- <div class="d-flex align-items-center">
								<h5 class="fw-normal text-success mb-0 me-1">$750</h5>
								<span class="mb-0 me-2">/day</span>
								<span class="text-decoration-line-through">$1000</span>
							</div> -->
							<!-- Button -->
							<div class="mt-2 mt-sm-0 z-index-2">
								<a href="hotel-detail.html" class="btn btn-sm btn-primary-soft mb-0 w-100" >자세히 보기<i class="bi bi-arrow-right ms-2"></i></a>    
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- Card item END -->

			<!-- Card item START -->
			<div class="col-md-6 col-xl-4">
				<div class="card shadow p-2 pb-0 h-100">
					<!-- Image -->
					<img src="${pageContext.request.contextPath}/resources/images/category/foodShop/rest2.jpeg" class="rounded-2" alt="Card image">

					<!-- Card body START -->
					<div class="card-body px-3 pb-0">
                        
						<!-- Title -->
						<h5 class="card-title"><a href="hotel-detail.html">대구 생수정 식당 </a>
                            <a href="#" class="h6 mb-0 z-index-2"><i class="bi fa-fw bi-bookmark" style="align-items: last baseline;"></i></a></h5>
                        

						<!-- List -->
						<ul class="nav nav-divider mb-2 mb-sm-3">
							<li class="nav-item">대구 달성군</li>
							<li class="nav-item">닭 숯불구이 전문</li>
							<li class="nav-item">13565.32km</li>
						</ul>
					</div>
					<!-- Card body END -->

					<!-- Card footer START-->
					<div class="card-footer pt-0">
						<!-- Price and Button -->
						<div class="d-sm-flex justify-content-sm-between align-items-center">
							<!-- Price -->
							<!-- <div class="d-flex align-items-center">
								<h5 class="fw-normal text-success mb-0 me-1">$1200</h5>
								<span class="mb-0 me-2">/day</span>
							</div> -->
							<!-- Button -->
							<div class="mt-2 mt-sm-0 z-index-2">
								<a href="hotel-detail.html" class="btn btn-sm btn-primary-soft mb-0 w-100">자세히 보기<i class="bi bi-arrow-right ms-2"></i></a>    
							</div>                  
						</div>
					</div>
				</div>
			</div>
			<!-- Card item END -->

			<!-- Card item START -->
			<div class="col-md-6 col-xl-4">
				<div class="card shadow p-2 pb-0 h-100">
					<!-- Image -->
					<img src="${pageContext.request.contextPath}/resources/images/category/foodShop/rest3.jpeg" class="rounded-2" alt="Card image">

					<!-- Card body START -->
					<div class="card-body px-3 pb-0">
                        

						<!-- Title -->
						<h5 class="card-title"><a href="hotel-detail.html">대구 팔공 산맥</a>
                            <a href="#" class="h6 mb-0 z-index-2"><i class="bi fa-fw bi-bookmark-fill text-danger" style="align-items: last baseline;"></i></a></h5>

						<!-- List -->
						<ul class="nav nav-divider mb-2 mb-sm-3">
							<li class="nav-item">대구 북구</li>
							<li class="nav-item">양념 돼지 갈비</li>
							<li class="nav-item">13369.0km</li>
						</ul>
					</div>
					<!-- Card body END -->

					<!-- Card footer START-->
					<div class="card-footer pt-0">
						<!-- Price and Button -->
						<div class="d-sm-flex justify-content-sm-between align-items-center">
							<!-- Price -->
							<!-- <div class="d-flex align-items-center">
								<h5 class="fw-normal text-success mb-0 me-1">$980</h5>
								<span class="mb-0 me-2">/day</span>
							</div> -->
							<!-- Button -->
							<div class="mt-2 mt-sm-0 z-index-2">
								<a href="hotel-detail.html" class="btn btn-sm btn-primary-soft mb-0 w-100"> 자세히 보기<i class="bi bi-arrow-right ms-2"></i></a>    
							</div>                  
						</div>
					</div>
				</div>
			</div>
			<!-- Card item END -->

			<!-- Card item START -->
			<div class="col-md-6 col-xl-4">
				<div class="card shadow p-2 pb-0 h-100">
					<!-- Image -->
					<img src="${pageContext.request.contextPath}/resources/images/category/foodShop/rest4.jpeg" class="rounded-2" alt="Card image">

					<!-- Card body START -->
					<div class="card-body px-3 pb-0">
						<!-- Rating and cart -->

						<!-- Title -->
						<h5 class="card-title"><a href="hotel-detail.html">오늘 잡은 소 대구 칠곡점</a>
                            <a href="#" class="h6 mb-0 z-index-2"><i class="bi fa-fw bi-bookmark-fill text-danger" ></i></a></h5>

						<!-- List -->
						<ul class="nav nav-divider mb-2 mb-sm-3">
							<li class="nav-item">대구 북구</li>
							<li class="nav-item">한우 맛집</li>
							<li class="nav-item">13370.2km</li>
						</ul>
					</div>
					<!-- Card body END -->

					<!-- Card footer START-->
					<div class="card-footer pt-0">
						<!-- Price and Button -->
						<div class="d-sm-flex justify-content-sm-between align-items-center">
							<!-- Price -->
							<!-- <div class="d-flex align-items-center">
								<h5 class="fw-normal text-success mb-0 me-1">$1400</h5>
								<span class="mb-0 me-2">/day</span>
							</div> -->
							<!-- Button -->
							<div class="mt-2 mt-sm-0">
								<a href="hotel-detail.html" class="btn btn-sm btn-primary-soft mb-0 w-100">자세히 보기<i class="bi bi-arrow-right ms-2"></i></a>    
							</div>                  
						</div>
					</div>
				</div>
			</div>
			<!-- Card item END -->

			<!-- Card item START -->
			<div class="col-md-6 col-xl-4">
				<div class="card shadow p-2 pb-0 h-100">
					<!-- Image -->
					<img src="${pageContext.request.contextPath}/resources/images/category/foodShop/rest5.jpeg" class="rounded-2" alt="Card image">

					<!-- Card body START -->
					<div class="card-body px-3 pb-0">

						<!-- Title -->
						<h5 class="card-title"><a href="hotel-detail.html">칠성동 할매 콩국수 </a>
                            <a href="#" class="h6 mb-0 z-index-2"><i class="bi fa-fw bi-bookmark"></i></a></h5>

						<!-- List -->
						<ul class="nav nav-divider mb-2 mb-sm-3">
							<li class="nav-item">대전 북구</li>
							<li class="nav-item">고소한 콩국수</li>
							<li class="nav-item">13373.5km</li>
						</ul>
					</div>
					<!-- Card body END -->

					<!-- Card footer START-->
					<div class="card-footer pt-0">
						<!-- Price and Button -->
						<div class="d-sm-flex justify-content-sm-between align-items-center">
							<!-- Price -->
							<!-- <div class="d-flex align-items-center">
								<h5 class="fw-normal text-success mb-0 me-1">$680</h5>
								<span class="mb-0 me-2">/day</span>
							</div> -->
							<!-- Button -->
							<div class="mt-2 mt-sm-0">
								<a href="hotel-detail.html" class="btn btn-sm btn-primary-soft mb-0 w-100">자세히 보기<i class="bi bi-arrow-right ms-2"></i></a>    
							</div>                  
						</div>
					</div>
				</div>
			</div>
			<!-- Card item END -->

			<!-- Card item START -->
			<div class="col-md-6 col-xl-4">
				<div class="card shadow p-2 pb-0 h-100">
					<!-- Image -->
					<img src="${pageContext.request.contextPath}/resources/images/category/foodShop/rest6.jpeg" class="rounded-2" alt="Card image">

					<!-- Card body START -->
					<div class="card-body px-3 pb-0">

						<!-- Title -->
						<h5 class="card-title"><a href="hotel-detail.html">중앙 떡볶이</a>
                            <a href="#" class="h6 mb-0 z-index-2"><i class="bi fa-fw bi-bookmark"></i></a></h5>

						<!-- List -->
						<ul class="nav nav-divider mb-2 mb-sm-3">
							<li class="nav-item">대구 중구</li>
							<li class="nav-item">동서로 떡볶이 맛집</li>
							<li class="nav-item">13375.7km</li>
						</ul>
					</div>
					<!-- Card body END -->

					<!-- Card footer START-->
					<div class="card-footer pt-0">
						<!-- Price and Button -->
						<div class="d-sm-flex justify-content-sm-between align-items-center">
							<!-- Price -->
							<!-- <div class="d-flex align-items-center">
								<h5 class="fw-normal text-success mb-0 me-1">$740</h5>
								<span class="mb-0 me-2">/day</span>
							</div> -->
							<!-- Button -->
							<div class="mt-2 mt-sm-0">
								<a href="hotel-detail.html" class="btn btn-sm btn-primary-soft mb-0 w-100">자세히 보기<i class="bi bi-arrow-right ms-2"></i></a>    
							</div>                  
						</div>
					</div>

				</div>
			</div>
			<!-- Card item END -->

			<!-- Card item START -->
			<div class="col-md-6 col-xl-4">
				<div class="card shadow p-2 pb-0 h-100">
					<!-- Image -->
					<img src="${pageContext.request.contextPath}/resources/images/category/foodShop/cafe1.jpeg" class="rounded-2" alt="Card image">

					<!-- Card body START -->
					<div class="card-body px-3 pb-0">

						<!-- Title -->
						<h5 class="card-title"><a href="hotel-detail.html">곳 카페</a>
                            <a href="#" class="h6 mb-0 z-index-2"><i class="bi fa-fw bi-bookmark"></i></a></h5>

						<!-- List -->
						<ul class="nav nav-divider mb-2 mb-sm-3">
							<li class="nav-item">대구 동구</li>
							<li class="nav-item">프라이빗한 카페</li>
							<li class="nav-item">13376.2km</li>
						</ul>
					</div>
					<!-- Card body END -->

					<!-- Card footer START-->
					<div class="card-footer pt-0">
						<!-- Price and Button -->
						<div class="d-sm-flex justify-content-sm-between align-items-center">
							<!-- Price -->
							<!-- <div class="d-flex align-items-center">
								<h5 class="fw-normal text-success mb-0 me-1">$570</h5>
								<span class="mb-0 me-2">/day</span>
							</div> -->
							<!-- Button -->
							<div class="mt- mt-sm-0">
								<a href="hotel-detail.html" class="btn btn-sm btn-primary-soft mb-0 w-100">자세히 보기<i class="bi bi-arrow-right ms-2"></i></a>    
							</div>                  
						</div>
					</div>
				</div>
			</div>
			<!-- Card item END -->

			<!-- Card item START -->
			<div class="col-md-6 col-xl-4">
				<div class="card shadow p-2 pb-0 h-100">
					<!-- Image -->
					<img src="${pageContext.request.contextPath}/resources/images/category/foodShop/rest7.jpeg" class="rounded-2" alt="Card image">

					<!-- Card body START -->
					<div class="card-body px-3 pb-0">

						<!-- Title -->
						<h5 class="card-title"><a href="hotel-detail.html">후꾸스시</a>
                            <a href="#" class="h6 mb-0 z-index-2"><i class="bi fa-fw bi-bookmark-fill text-danger"></i></a></h5>

						<!-- List -->
						<ul class="nav nav-divider mb-2 mb-sm-3">
							<li class="nav-item">대구 수성구</li>
							<li class="nav-item">한적한 골목, 스시</li>
							<li class="nav-item">13379.8km</li>
						</ul>
					</div>
					<!-- Card body END -->

					<!-- Card footer START-->
					<div class="card-footer pt-0">
						<!-- Price and Button -->
						<div class="d-sm-flex justify-content-sm-between align-items-center">
							<!-- Price -->
							<!-- <div class="d-flex align-items-center">
								<h5 class="fw-normal text-success mb-0 me-1">$896</h5>
								<span class="mb-0 me-2">/day</span>
							</div> -->
							<!-- Button -->
							<div class="mt-2 mt-sm-0">
								<a href="hotel-detail.html" class="btn btn-sm btn-primary-soft mb-0 w-100">자세히 보기<i class="bi bi-arrow-right ms-2"></i></a>    
							</div>                  
						</div>
					</div>
				</div>
			</div>
			<!-- Card item END -->

			<!-- Card item START -->
			<div class="col-md-6 col-xl-4">
				<div class="card shadow p-2 pb-0 h-100">
					<!-- Image -->
					<img src="${pageContext.request.contextPath}/resources/images/category/foodShop/cafe2.jpeg" class="rounded-2" alt="Card image">

					<!-- Card body START -->
					<div class="card-body px-3 pb-0">

						<!-- Title -->
						<h5 class="card-title"><a href="hotel-detail.html">팜테이블 수성못점</a>
                            <a href="#" class="h6 mb-0 z-index-2"><i class="bi fa-fw bi-bookmark"></i></a></h5>

						<!-- List -->
						<ul class="nav nav-divider mb-2 mb-sm-3">
							<li class="nav-item">대구 수성구</li>
							<li class="nav-item">팬케이크 맛집</li>
							<li class="nav-item">13379.9km</li>
						</ul>
					</div>
					<!-- Card body END -->

					<!-- Card footer START-->
					<div class="card-footer pt-0">
						<!-- Price and Button -->
						<div class="d-sm-flex justify-content-sm-between align-items-center">
							<!-- Price -->
							<!-- <div class="d-flex align-items-center">
								<h5 class="fw-normal text-success mb-0 me-1">$475</h5>
								<span class="mb-0 me-2">/day</span>
							</div> -->
							<!-- Button -->
							<div class="mt-2 mt-sm-0">
								<a href="hotel-detail.html" class="btn btn-sm btn-primary-soft mb-0 w-100">자세히 보기<i class="bi bi-arrow-right ms-2"></i></a>    
							</div>                  
						</div>
					</div>
				</div>
			</div>
			<!-- Card item END -->

		</div> <!-- Row END -->

		<!-- Pagination -->
		<div class="row">
			<div class="col-12">
				<nav class="mt-4 d-flex justify-content-center" aria-label="navigation">
					<ul class="pagination pagination-primary-soft d-inline-block d-md-flex rounded mb-0">
						<li class="page-item mb-0"><a class="page-link" href="#" tabindex="-1"><i class="fa-solid fa-angle-left"></i></a></li>
						<li class="page-item mb-0"><a class="page-link" href="#">1</a></li>
						<li class="page-item mb-0 active"><a class="page-link" href="#">2</a></li>
						<li class="page-item mb-0"><a class="page-link" href="#">..</a></li>
						<li class="page-item mb-0"><a class="page-link" href="#">6</a></li>
						<li class="page-item mb-0"><a class="page-link" href="#"><i class="fa-solid fa-angle-right"></i></a></li>
					</ul>
				</nav>
			</div>
		</div>
	</div>
</section>
<!-- =======================
Hotel grid END -->

</main>
<!-- **************** MAIN CONTENT END **************** -->

<!-- =======================
Footer START -->
<!-- Footer START 헤더 부분 가져오고 맨 밑에 붙이면 될것 같습니다!-->
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>

  <!-- =======================
  Footer END -->

<!-- Modal START -->
<div class="modal fade" id="map360" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<!-- Title -->
			<div class="modal-header">
				<h5 class="modal-title" id="map360label">Hotel 360 View</h5>
				<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
			</div>
			<!-- Body -->
			<div class="modal-body p-3">
				<iframe src="https://www.google.com/maps/embed?pb=!4v1664190302197!6m8!1m7!1sgWjBbRwH2wMmQTbvyZwkGw!2m2!1d51.49712857925994!2d-0.1593322776188391!3f348.1837813715552!4f17.07463868756892!5f0.8485845663286693" width="100%" height="400" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
			</div>
		</div>
	</div>
</div>
<!-- Modal END -->

<!-- Back to top -->
<div class="back-top"></div>

<!-- Bootstrap JS -->
<script src="${pageContext.request.contextPath}/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>

<!-- Vendors -->
<script src="${pageContext.request.contextPath}/vendor/tiny-slider/tiny-slider.js"></script>
<script src="${pageContext.request.contextPath}/vendor/purecounterjs/dist/purecounter_vanilla.js"></script>
<script src="${pageContext.request.contextPath}/vendor/glightbox/js/glightbox.js"></script>
<script src="${pageContext.request.contextPath}/vendor/flatpickr/js/flatpickr.min.js"></script>
<script src="${pageContext.request.contextPath}/vendor/choices/js/choices.min.js"></script>
<script src="${pageContext.request.contextPath}/vendor/jarallax/jarallax.min.js"></script>
	<script src="${pageContext.request.contextPath}/vendor/jarallax/jarallax-video.min.js"></script>

<!-- ThemeFunctions -->
<script src="${pageContext.request.contextPath}/js/functions.js"></script>

</body>
</html>
