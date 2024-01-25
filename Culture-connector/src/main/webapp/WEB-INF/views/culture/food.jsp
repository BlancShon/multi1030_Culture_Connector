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




<!-- **************** MAIN CONTENT START **************** -->
<main>
<!-- =======================
Main Banner START -->
<section class="d-flex align-items-start dark-overlay bg-cover" style="background-image: url(https://a.cdn-hotels.com/gdcs/production50/d1916/51d76cc9-cbe8-4572-a671-545f882f1847.jpg?impolicy=fcrop&w=1600&h=1066&q=medium); background-size: cover; background-position: center; padding-top: 100px; padding-bottom: 100px;">
    <div class="container py-6 py-lg-7 text-white overlay-content text-left ml-lg-0 ml-md-0 ml-0">
        <div class="row">
            <div class="top-0 mt-4 left-align">
                <h1 class="text-uppercase fs-1 mt-7 mb-3" style="color: rgb(255, 255, 255); font-family: sans-serif; font-weight: bold; font-size: 3.5rem;">음식투어</h1>
                <h4 class="text-muted mb-0" style="font-family:  sans-serif; font-size: 1.8rem;">전국 맛집과 카페를 한눈에</h4>
                
            </div>
        </div>
    </div>
</section>



	<form name="foodSearch" action="${pageContext.request.contextPath}/foodSearch" method="get">

			
			<!--서치바-->
			<div div class="container mt-5">
				<div class="row height d-flex justify-content-center align-items-center">
					<div class="col-md-10 ">
						<h5 class="fw-normal mb-">
							<i class="fa-solid fa-person-shelter fa-fw text-primary me-2"></i>
							<i class="fa-solid fa-utensils fa-fw text-primary me-2"></i>
							<i class="fa-solid fa-store fa-fw text-primary me-2"></i>
							<i class="fa-solid bi bi-cup-straw text-primary me-2"></i>
							<i class="fa-solid bi bi-cup-hot-fill text-primary me-2" ></i>
						  </h5>
						<h4 class="text-primary mt-2"><span style="color: rgb(5, 5, 5);">가보고 싶은 맛집을 검색하세요!</span></h4>
						<div class="search">
							<i class="fa fa-search"></i>
						
							<input type="hidden" name="page" value="1">
							<input type="text" class="form-control" style="font-size: large" name="searchValue" placeholder="맛집 이름을 검색하세요." value="${param.searchValue}">
							<button class="btn btn-primary" style="font-size: x-large;">검색</button>
						</div>
					</div>
				</div>
			</div>
			<!--서치바 끝-->



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
						<div class="tiny-slider-inner mb-8" data-autoplay="true" data-arrow="true" data-edge="2"
							data-dots="false" data-items-xl="3" data-items-lg="3" data-items-md="2" data-items-sm="1">


								<!-- Offer card START -->
								<div>
<%-- 									<c:forEach var="item" items="${list}"> --%>
										<div class="card">
											<img src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&id=95edda88-107b-4809-b969-ad3029828e17" class="card-img" alt="">
											<!-- Card body -->
											<div class="position-absolute top-100 start-50 translate-middle w-100">
												<div class="card-body text-center bg-mode shadow rounded mx-4 p-3">
												
													<h6 class="card-title mb-1"><a href="${path}/food/detail?cfno=9999" style="text-align: left;">신당동 떡볶이</a><br>
											
												
													</h6>
													<medium style="color: black;">인기메뉴</medium><br>
														<small>모둠 떡볶이</small><br>
															<div class="mt-2"><a href="${path}/food/detail?cfno=9999" class="btn btn-sm btn-dark mb-0">메뉴 보기</a>
															</div>
<%-- 													</c:forEach>) --%>
												</div>
											</div>
										</div>
<%-- 									</c:forEach>	 --%>
								</div>
									
									<!-- Offer card END -->
								
									<!-- Offer card START -->
									<div>
										<div class="card">
											<img src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&id=b6ba00f5-5906-4a53-a255-a93e5ffa8c8d" class="card-img" alt="">
											<!-- Card body -->
											<div class="position-absolute top-100 start-50 translate-middle w-100">
												<div class="card-body text-center bg-mode shadow rounded mx-4 p-3">
													<h6 class="card-title mb-1"><a href="#"
															style="text-align: left;">뱀부 15-8</a><br>
												
													</h6>
													<medium style="color: black;">인기메뉴</medium><br>
													<small>판다 티라미수</small><br>
		
													<div class="mt-2"><a href="${path}/food/detail?cfno=8888" class="btn btn-sm btn-dark mb-0">메뉴 보기</a>
													</div>
												</div>
											</div>
										</div>
									</div>
		
									
									<div>
										<div class="card">
											<img src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&id=6a83f4cd-f102-4caf-b8fc-1e030a47a1ec" class="card-img" alt="">
											<!-- Card body -->
											<div class="position-absolute top-100 start-50 translate-middle w-100">
												<div class="card-body text-center bg-mode shadow rounded mx-4 p-3">
													<h6 class="card-title mb-1"><a href="#"
															style="text-align: center;">생선회</a><br>
														
													</h6>
													<medium style="color: black;">인기 메뉴</medium><br>
													<small> 매운탕, 회</small><br>
		
													<div class="mt-2"><a href="#" class="btn btn-sm btn-dark mb-0">메뉴 보기</a>
													</div>
												</div>
											</div>
										</div>
									</div>
									<!-- Offer card END -->
									<div>
										<div class="card">
											<img src="${pageContext.request.contextPath}/resources/images/스시마츠모토.png" class="card-img" alt="">
											<!-- Card body -->
											<div class="position-absolute top-100 start-50 translate-middle w-100">
												<div class="card-body text-center bg-mode shadow rounded mx-4 p-3">
													<h6 class="card-title mb-1"><a href="#"
															style="text-align: center;">스시마츠모토</a><br>
														
													</h6>
													<medium style="color: black;">인기 메뉴</medium><br>
													<small>런치 오마카세</small><br>
		
													<div class="mt-2"><a href="#" class="btn btn-sm btn-dark mb-0">메뉴 보기</a>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</section>
				</form>
						<!-- Slider END -->
			<!-- =======================추천 맛집  END -->

			<!-- =======================Near by START -->
			<section>
				<div class="container">
					<!-- Title -->
					<div class="row mb-4">
							<h2 class="mb-0" style="color: rgba(2, 2, 2, 0.632);">전국 지역별 보기</h2>
						<div class="col-12 text-center">



						</div>
					</div>

					<div class="row g-4 g-md-5">
						<!-- Card item START -->
						<div class="col-6 col-sm-4 col-lg-3 col-xl-2">
								<div class="card bg-transparent text-center p-1 h-100" >
									<!-- Image -->
									<img src="${pageContext.request.contextPath}/resources/images/category/main/11.jpg" class="rounded-circle" alt="">

									<div class="card-body p-0 pt-3">
										<h5 class="card-title">
										
											<a id="localtypes" data-value="서울" href="${pageContext.request.contextPath}/foodSearch?&localtypes=서울" class="stretched-link">서울</a>
										</h5>
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
									<h5 class="card-title">
										<a id="localtypes" data-value="경기" href="${pageContext.request.contextPath}/foodSearch?&localtypes=경기" class="stretched-link">경기</a>
										</h5>
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
									<h5 class="card-title"><a href="${pageContext.request.contextPath}/foodSearch?&localtypes=인천" class="stretched-link">인천</a></h5>
								</div>
							</div>
						</div>
						<!-- Card item END -->

						<!-- Card item START -->
						<div class="col-6 col-sm-4 col-lg-3 col-xl-2">
							<div class="card bg-transparent text-center p-1 h-100">
								<!-- Image -->
								<img src="${pageContext.request.contextPath}/resources/images/category/locationIMG/daejeon.jpeg" class="rounded-circle"
									alt="">

								<div class="card-body p-0 pt-3">
									<h5 class="card-title"><a href="${pageContext.request.contextPath}/foodSearch?&localtypes=대전" class="stretched-link">대전</a></h5>
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
									<h5 class="card-title"><a href="${pageContext.request.contextPath}/foodSearch?&localtypes=대구" class="stretched-link">대구</a></h5>
								</div>
							</div>
						</div>
						<!-- Card item END -->

						<!-- Card item START -->
						<div class="col-6 col-sm-4 col-lg-3 col-xl-2">
							<div class="card bg-transparent text-center p-1 h-100">
								<!-- Image -->
								<img src="${pageContext.request.contextPath}/resources/images/category/main/12.jpg" class="rounded-circle" alt="" />

								<div class="card-body p-0 pt-3">
									<h5 class="card-title"><a href="${pageContext.request.contextPath}/foodSearch?&localtypes=전라북도" class="stretched-link">전북</a>
									</h5>
								</div>
							</div>
						</div>
						<!-- Card item END -->

						<!-- Card item START -->
						<div class="col-6 col-sm-4 col-lg-3 col-xl-2">
							<div class="card bg-transparent text-center p-1 h-100">
								<!-- Image -->
								<img src="${pageContext.request.contextPath}/resources/images/category/locationIMG/gyungbuk.jpeg" class="rounded-circle"
									alt="">

								<div class="card-body p-0 pt-3">
									<h5 class="card-title"><a href="${pageContext.request.contextPath}/foodSearch?&localtypes=경상북도" class="stretched-link">경북</a></h5>
								</div>
							</div>
						</div>
						<!-- Card item END -->

						<!-- Card item START -->
						<div class="col-6 col-sm-4 col-lg-3 col-xl-2">
							<div class="card bg-transparent text-center p-1 h-100">
								<!-- Image -->
								<img src="${pageContext.request.contextPath}/resources/images/category/locationIMG/chungbuk.jpeg" class="rounded-circle"
									alt="">

								<div class="card-body p-0 pt-3">
								<h5 class="card-title"><a href="${pageContext.request.contextPath}/foodSearch?&localtypes=충청북도" class="stretched-link">충북</a></h5>
								</div>
							</div>
						</div>
						<!-- Card item END -->

						<!-- Card item START -->
						<div class="col-6 col-sm-4 col-lg-3 col-xl-2">
							<div class="card bg-transparent text-center p-1 h-100">
								<!-- Image -->
								<img src="${pageContext.request.contextPath}/resources/images/category/locationIMG/jeonnam.jpeg" class="rounded-circle"
									alt="">

								<div class="card-body p-0 pt-3">
									<h5 class="card-title"><a href="${pageContext.request.contextPath}/foodSearch?&localtypes=전라남도" class="stretched-link">전남</a></h5>
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
									<h5 class="card-title"><a href="${pageContext.request.contextPath}/foodSearch?&localtypes=경상남도" class="stretched-link">경남</a></h5>
								</div>
							</div>
						</div>
						<!-- Card item END -->

						<!-- Card item START -->
						<div class="col-6 col-sm-4 col-lg-3 col-xl-2">
							<div class="card bg-transparent text-center p-1 h-100">
								<!-- Image -->
								<img src="${pageContext.request.contextPath}/resources/images/category/locationIMG/chungnam.jpg" class="rounded-circle"
									alt="">

								<div class="card-body p-0 pt-3">
									<h5 class="card-title"><a href="${pageContext.request.contextPath}/foodSearch?&localtypes=충청남도" class="stretched-link">충남</a></h5>
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
									<h5 class="card-title"><a href="${pageContext.request.contextPath}/foodSearch?&localtypes=강원" class="stretched-link">강원</a></h5>
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
									<h5 class="card-title"><a href="${pageContext.request.contextPath}/foodSearch?&localtypes=울산" class="stretched-link">울산</a></h5>
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
									<h5 class="card-title"><a href="${pageContext.request.contextPath}/foodSearch?&localtypes=부산" class="stretched-link">부산</a></h5>
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
									<h5 class="card-title"><a href="${pageContext.request.contextPath}/foodSearch?&localtypes=제주" class="stretched-link">제주</a></h5>
								</div>
							</div>
						</div>
						<br><br>

						<div class="row g-4 g-md-5">
							<!-- Card item START -->
							<div class="col-12 text-center">
								<h2 class="mb-0" style="color: rgba(2, 2, 2, 0.632); text-align: left;">음식별 보기</h2>
							</div>
							<div class="col-6 col-sm-4 col-lg-3 col-xl-2">
								<div class="card bg-transparent text-center p-1 h-100">
									<!-- Image -->
									<img src="${pageContext.request.contextPath}/resources/images/category/locationIMG/korean.jpeg" class="rounded-circle"
										alt="">

									<div class="card-body p-0 pt-3">
										<h5 class="card-title"><a href="${pageContext.request.contextPath}/foodSearch?&foodtypes=A05020100" class="stretched-link">한식</a></h5>
									</div>
								</div>
							</div>

							<!-- Card item START -->
							<div class="col-6 col-sm-4 col-lg-3 col-xl-2">
								<div class="card bg-transparent text-center p-1 h-100">
									<!-- Image -->
									<img src="${pageContext.request.contextPath}/resources/images/category/locationIMG/chinese.jpg" class="rounded-circle"
										alt="">

									<div class="card-body p-0 pt-3">
										<h5 class="card-title"><a href="${pageContext.request.contextPath}/foodSearch?&foodtypes=A05020400" class="stretched-link">중식</a></h5>
									</div>
								</div>
							</div>

							<!-- Card item START -->
							<div class="col-6 col-sm-4 col-lg-3 col-xl-2">
								<div class="card bg-transparent text-center p-1 h-100">
									<!-- Image -->
									<img src="${pageContext.request.contextPath}/resources/images/category/locationIMG/japanese.jpeg" class="rounded-circle"
										alt="">

									<div class="card-body p-0 pt-3">
										<h5 class="card-title"><a href="${pageContext.request.contextPath}/foodSearch?&foodtypes=A05020300" class="stretched-link">일식</a></h5>
									</div>
								</div>
							</div>

							<!-- Card item START -->
							<div class="col-6 col-sm-4 col-lg-3 col-xl-2">
								<div class="card bg-transparent text-center p-1 h-100">
									<!-- Image -->
									<img src="${pageContext.request.contextPath}/resources/images/category/locationIMG/america.jpg" class="rounded-circle"
										alt="">

									<div class="card-body p-0 pt-3">
										<h5 class="card-title"><a href="${pageContext.request.contextPath}/foodSearch?&foodtypes=A05020200" class="stretched-link">양식</a></h5>
									</div>
								</div>
							</div>

							<!-- Card item START -->
							<div class="col-6 col-sm-4 col-lg-3 col-xl-2">
								<div class="card bg-transparent text-center p-1 h-100">
									<!-- Image -->
									<img src="${pageContext.request.contextPath}/resources/images/category/locationIMG/coffee.jpeg" class="rounded-circle"
										alt="">

									<div class="card-body p-0 pt-3">
										<h5 class="card-title"><a href="${pageContext.request.contextPath}/foodSearch?&foodtypes=A05020900" class="stretched-link">커피</a></h5>
									</div>
								</div>
							</div>
							<!-- Card item END -->
						</div> <!-- Row END -->
					</div>
				</div>
			</section>
		</form>
			<!-- =======================
Near by END -->

			<!-- =======================
Services START -->
			<section class="pt-0 pt-lg-5">
				<div class="container">
					<div class="row g-6 align-items-center">
						<div class="col-lg-10">
							<!-- Title -->
							<h2 style="color: rgba(2, 2, 2, 0.632);;">음식 투어 리스트</h2><br>

							<h5 style="color: rgb(13, 10, 7);" style="font-size: medium;"><i class="fa-solid bi bi-list-check text-primary me-2"></i><b>많은 고객들이 찾아간 맛집 목록입니다.</b></h5>

						</div> <!-- Row END -->
					</div>
			</section>
			<!-- =======================
 =======================
Title and Tabs END -->

			<!-- =======================
			
			<!-- 검색 결과 -->
		<section class="pt-0">
			<div class="container">
				<hr>
					<div class="count">
						총 <span class="count text-primary" style="text-align: left;">${size}</span>
					</div>
					<br>
					
					<div class="row g-5">
						<!-- Card item START -->
						<c:if test="${empty list}">
							﻿결과가 없습니다.
						</c:if>
						<c:forEach var="item" items="${list}">
							<div class="col-md-6 col-xl-4">
								<div class="card shadow p-2 pb-0 h-100">

									<!-- Image item -->
									<div>
									<img src="${item.firstImage}" class="rounded" alt="${item.firstImage2}" 
										style="width: 400px; height: 200px;">
									</div>
									<c:if test="${item.firstImage == null}">
										<img src="${pageContext.request.contextPath}/resources/images/noImages.jpeg" alt="Card image">
									</c:if>

									<!-- Card body START -->
									<div class="card-body px-3 pb-0">

										<!-- 음식 조회 결과 화면의 텍스트 수정 -  상세페이지 이동 링크 수정 필요 -->
										<h5 class="card-title">
											<a href="${path}/food/detail?cfno=${item.cfno}">
												<c:out value="${item.title}" />
											</a>
											<a href="#" class="h6 mb-0 z-index-2">
												<i class="bi fa-fw bi-bookmark" style="align-items: last baseline;"></i>
											</a>
										</h5>

										<!-- List -->
										<ul>
											<li class="nav-item">${item.addr1}</li>
											<li class="nav-item">${item.title}</li>
											<li class="nav-item">${item.firstMenu}</li>
										</ul>
									</div>
									<!-- Card body END -->

									<!-- Card footer START-->
									<div class="card-footer pt-0">
										<!-- Price and Button -->
										<div
											class="d-sm-flex justify-content-sm-between align-items-center">
											<!-- Button -->
											<div class="mt-2 mt-sm-0 z-index-2">
												<a href="${path}/food/detail?cfno=${item.cfno}"
													class="btn btn-sm btn-primary-soft mb-0 w-100">자세히 보기<i
													class="bi bi-arrow-right ms-2"></i></a>
											</div>
										</div>
									</div>
								</div>
							</div>
						</c:forEach>
					</div>
			</div>
			
<!-- Hotel grid START --> 
<!-- 			<section class="pt-0"> -->
<!-- 				<div class="container"> -->
<!-- 					<div class="row g-4"> -->

<!-- 						Card item START -->
<!-- 						<div class="col-md-6 col-xl-4"> -->
<!-- 							<div class="card shadow p-2 pb-0 h-100"> -->
<!-- 								Overlay item -->
<!-- 								<div class="position-absolute top-0 start-0 z-index-1 m-4"> -->
<!-- 									<div class="badge bg-danger text-white">30% Off</div> -->
<!-- 								</div> -->

<!-- 								음식점 검색 결과 화면 (슬라이더 기능) -->
<!-- 								<div class="tiny-slider arrow-round arrow-xs arrow-dark rounded-2 overflow-hidden"> -->
<!-- 									<div class="tiny-slider-inner" data-autoplay="false" data-arrow="true" -->
<!-- 										data-dots="false" data-items="1"> -->
<!-- 										Image item -->
<%-- 										<div><img src="${pageContext.request.contextPath}/resources/images/category/foodShop/rest1.jpeg" alt="Card image"> --%>
<!-- 										</div> -->

<!-- 									</div> -->
<!-- 								</div> -->
<!-- 								Slider END -->

<!-- 								Card body START -->
<!-- 								<div class="card-body px-3 pb-0"> -->

<!-- 									음식 조회 결과 화면의 텍스트 수정 -  상세페이지 이동 링크 수정 필요 -->
<!-- 									<h5 class="card-title"><a href="hotel-detail.html">울산 농수산물 도매시장</a> -->
<!-- 										<a href="#" class="h6 mb-0 z-index-2"><i class="bi fa-fw bi-bookmark" -->
<!-- 												style="align-items: last baseline;"></i></a> -->
<!-- 									</h5> -->


<!-- 									List -->
<!-- 									<ul class="nav nav-divider mb-2 mb-sm-3"> -->
<!-- 										<li class="nav-item">울산 남구</li> -->
<!-- 										<li class="nav-item">농수산 도매 시장</li> -->
<!-- 										<li class="nav-item">13452.3km</li> -->
<!-- 									</ul> -->
<!-- 								</div> -->
<!-- 								Card body END -->

<!-- 								Card footer START -->
<!-- 								<div class="card-footer pt-0"> -->
<!-- 									Price and Button -->
<!-- 									<div class="d-sm-flex justify-content-sm-between align-items-center"> -->
<!-- 										Price -->
<!-- 										<div class="d-flex align-items-center">
<!-- 								<h5 class="fw-normal text-success mb-0 me-1">$750</h5> -->
<!-- 								<span class="mb-0 me-2">/day</span> -->
<!-- 								<span class="text-decoration-line-through">$1000</span> -->
<!-- 							</div> --> 
<!-- 										Button -->
<!-- 										<div class="mt-2 mt-sm-0 z-index-2"> -->
<!-- 											<a href="hotel-detail.html" -->
<!-- 												class="btn btn-sm btn-primary-soft mb-0 w-100">자세히 보기<i -->
<!-- 													class="bi bi-arrow-right ms-2"></i></a> -->
<!-- 										</div> -->
<!-- 									</div> -->
<!-- 								</div> -->
<!-- 							</div> -->
<!-- 						</div> -->
<!-- 						Card item END -->

<!-- 						Card item START -->
<!-- 						<div class="col-md-6 col-xl-4"> -->
<!-- 							<div class="card shadow p-2 pb-0 h-100"> -->
<!-- 								Image -->
<%-- 								<img src="${pageContext.request.contextPath}/resources/images/category/foodShop/rest2.jpeg" class="rounded-2" --%>
<!-- 									alt="Card image"> -->

<!-- 								Card body START -->
<!-- 								<div class="card-body px-3 pb-0"> -->

<!-- 									Title -->
<!-- 									<h5 class="card-title"><a href="hotel-detail.html">대구 생수정 식당 </a> -->
<!-- 										<a href="#" class="h6 mb-0 z-index-2"><i class="bi fa-fw bi-bookmark" -->
<!-- 												style="align-items: last baseline;"></i></a> -->
<!-- 									</h5> -->


<!-- 									List -->
<!-- 									<ul class="nav nav-divider mb-2 mb-sm-3"> -->
<!-- 										<li class="nav-item">대구 달성군</li> -->
<!-- 										<li class="nav-item">닭 숯불구이 전문</li> -->
<!-- 										<li class="nav-item">13565.32km</li> -->
<!-- 									</ul> -->
<!-- 								</div> -->
<!-- 								Card body END -->

<!-- 								Card footer START -->
<!-- 								<div class="card-footer pt-0"> -->
<!-- 									Price and Button -->
<!-- 									<div class="d-sm-flex justify-content-sm-between align-items-center"> -->
<!-- 										Price -->
<!-- 										<div class="d-flex align-items-center">
<!-- 								<h5 class="fw-normal text-success mb-0 me-1">$1200</h5> -->
<!-- 								<span class="mb-0 me-2">/day</span> -->
<!-- 							</div> --> 
<!-- 										Button -->
<!-- 										<div class="mt-2 mt-sm-0 z-index-2"> -->
<!-- 											<a href="hotel-detail.html" -->
<!-- 												class="btn btn-sm btn-primary-soft mb-0 w-100">자세히 보기<i -->
<!-- 													class="bi bi-arrow-right ms-2"></i></a> -->
<!-- 										</div> -->
<!-- 									</div> -->
<!-- 								</div> -->
<!-- 							</div> -->
<!-- 						</div> -->
<!-- 						Card item END -->

<!-- 						Card item START -->
<!-- 						<div class="col-md-6 col-xl-4"> -->
<!-- 							<div class="card shadow p-2 pb-0 h-100"> -->
<!-- 								Image -->
<%-- 								<img src="${pageContext.request.contextPath}/resources/images/category/foodShop/rest3.jpeg" class="rounded-2" --%>
<!-- 									alt="Card image"> -->

<!-- 								Card body START -->
<!-- 								<div class="card-body px-3 pb-0"> -->


<!-- 									Title -->
<!-- 									<h5 class="card-title"><a href="hotel-detail.html">대구 팔공 산맥</a> -->
<!-- 										<a href="#" class="h6 mb-0 z-index-2"><i -->
<!-- 												class="bi fa-fw bi-bookmark-fill text-danger" -->
<!-- 												style="align-items: last baseline;"></i></a> -->
<!-- 									</h5> -->

<!-- 									List -->
<!-- 									<ul class="nav nav-divider mb-2 mb-sm-3"> -->
<!-- 										<li class="nav-item">대구 북구</li> -->
<!-- 										<li class="nav-item">양념 돼지 갈비</li> -->
<!-- 										<li class="nav-item">13369.0km</li> -->
<!-- 									</ul> -->
<!-- 								</div> -->
<!-- 								Card body END -->

<!-- 								Card footer START -->
<!-- 								<div class="card-footer pt-0"> -->
<!-- 									Price and Button -->
<!-- 									<div class="d-sm-flex justify-content-sm-between align-items-center"> -->
<!-- 										Price -->
<!-- 										<div class="d-flex align-items-center">
<!-- 								<h5 class="fw-normal text-success mb-0 me-1">$980</h5> -->
<!-- 								<span class="mb-0 me-2">/day</span> -->
<!-- 							</div> --> 
<!-- 										Button -->
<!-- 										<div class="mt-2 mt-sm-0 z-index-2"> -->
<!-- 											<a href="hotel-detail.html" class="btn btn-sm btn-primary-soft mb-0 w-100"> -->
<!-- 												자세히 보기<i class="bi bi-arrow-right ms-2"></i></a> -->
<!-- 										</div> -->
<!-- 									</div> -->
<!-- 								</div> -->
<!-- 							</div> -->
<!-- 						</div> -->
<!-- 						Card item END -->

<!-- 						Card item START -->
<!-- 						<div class="col-md-6 col-xl-4"> -->
<!-- 							<div class="card shadow p-2 pb-0 h-100"> -->
<!-- 								Image -->
<%-- 								<img src="${pageContext.request.contextPath}/resources/images/category/foodShop/rest4.jpeg" class="rounded-2" --%>
<!-- 									alt="Card image"> -->

<!-- 								Card body START -->
<!-- 								<div class="card-body px-3 pb-0"> -->
<!-- 									Rating and cart -->

<!-- 									Title -->
<!-- 									<h5 class="card-title"><a href="hotel-detail.html">오늘 잡은 소 대구 칠곡점</a> -->
<!-- 										<a href="#" class="h6 mb-0 z-index-2"><i -->
<!-- 												class="bi fa-fw bi-bookmark-fill text-danger"></i></a> -->
<!-- 									</h5> -->

<!-- 									List -->
<!-- 									<ul class="nav nav-divider mb-2 mb-sm-3"> -->
<!-- 										<li class="nav-item">대구 북구</li> -->
<!-- 										<li class="nav-item">한우 맛집</li> -->
<!-- 										<li class="nav-item">13370.2km</li> -->
<!-- 									</ul> -->
<!-- 								</div> -->
<!-- 								Card body END -->

<!-- 								Card footer START -->
<!-- 								<div class="card-footer pt-0"> -->
<!-- 									Price and Button -->
<!-- 									<div class="d-sm-flex justify-content-sm-between align-items-center"> -->
<!-- 										Price -->
<!-- 										<div class="d-flex align-items-center">
<!-- 								<h5 class="fw-normal text-success mb-0 me-1">$1400</h5> -->
<!-- 								<span class="mb-0 me-2">/day</span> -->
<!-- 							</div> --> 
<!-- 										Button -->
<!-- 										<div class="mt-2 mt-sm-0"> -->
<!-- 											<a href="hotel-detail.html" -->
<!-- 												class="btn btn-sm btn-primary-soft mb-0 w-100">자세히 보기<i -->
<!-- 													class="bi bi-arrow-right ms-2"></i></a> -->
<!-- 										</div> -->
<!-- 									</div> -->
<!-- 								</div> -->
<!-- 							</div> -->
<!-- 						</div> -->
<!-- 						Card item END -->

<!-- 						Card item START -->
<!-- 						<div class="col-md-6 col-xl-4"> -->
<!-- 							<div class="card shadow p-2 pb-0 h-100"> -->
<!-- 								Image -->
<%-- 								<img src="${pageContext.request.contextPath}/resources/images/category/foodShop/rest5.jpeg" class="rounded-2" --%>
<!-- 									alt="Card image"> -->

<!-- 								Card body START -->
<!-- 								<div class="card-body px-3 pb-0"> -->

<!-- 									Title -->
<!-- 									<h5 class="card-title"><a href="hotel-detail.html">칠성동 할매 콩국수 </a> -->
<!-- 										<a href="#" class="h6 mb-0 z-index-2"><i class="bi fa-fw bi-bookmark"></i></a> -->
<!-- 									</h5> -->

<!-- 									List -->
<!-- 									<ul class="nav nav-divider mb-2 mb-sm-3"> -->
<!-- 										<li class="nav-item">대전 북구</li> -->
<!-- 										<li class="nav-item">고소한 콩국수</li> -->
<!-- 										<li class="nav-item">13373.5km</li> -->
<!-- 									</ul> -->
<!-- 								</div> -->
<!-- 								Card body END -->

<!-- 								Card footer START -->
<!-- 								<div class="card-footer pt-0"> -->
<!-- 									Price and Button -->
<!-- 									<div class="d-sm-flex justify-content-sm-between align-items-center"> -->
<!-- 										Price -->
<!-- 										<div class="d-flex align-items-center">
<!-- 								<h5 class="fw-normal text-success mb-0 me-1">$680</h5> -->
<!-- 								<span class="mb-0 me-2">/day</span> -->
<!-- 							</div> --> 
<!-- 										Button -->
<!-- 										<div class="mt-2 mt-sm-0"> -->
<!-- 											<a href="hotel-detail.html" -->
<!-- 												class="btn btn-sm btn-primary-soft mb-0 w-100">자세히 보기<i -->
<!-- 													class="bi bi-arrow-right ms-2"></i></a> -->
<!-- 										</div> -->
<!-- 									</div> -->
<!-- 								</div> -->
<!-- 							</div> -->
<!-- 						</div> -->
<!-- 						Card item END -->

<!-- 						Card item START -->
<!-- 						<div class="col-md-6 col-xl-4"> -->
<!-- 							<div class="card shadow p-2 pb-0 h-100"> -->
<!-- 								Image -->
<%-- 								<img src="${pageContext.request.contextPath}/resources/images/category/foodShop/rest6.jpeg" class="rounded-2" --%>
<!-- 									alt="Card image"> -->

<!-- 								Card body START -->
<!-- 								<div class="card-body px-3 pb-0"> -->

<!-- 									Title -->
<!-- 									<h5 class="card-title"><a href="hotel-detail.html">중앙 떡볶이</a> -->
<!-- 										<a href="#" class="h6 mb-0 z-index-2"><i class="bi fa-fw bi-bookmark"></i></a> -->
<!-- 									</h5> -->

<!-- 									List -->
<!-- 									<ul class="nav nav-divider mb-2 mb-sm-3"> -->
<!-- 										<li class="nav-item">대구 중구</li> -->
<!-- 										<li class="nav-item">동서로 떡볶이 맛집</li> -->
<!-- 										<li class="nav-item">13375.7km</li> -->
<!-- 									</ul> -->
<!-- 								</div> -->
<!-- 								Card body END -->

<!-- 								Card footer START -->
<!-- 								<div class="card-footer pt-0"> -->
<!-- 									Price and Button -->
<!-- 									<div class="d-sm-flex justify-content-sm-between align-items-center"> -->
<!-- 										Price -->
<!-- 										<div class="d-flex align-items-center">
<!-- 								<h5 class="fw-normal text-success mb-0 me-1">$740</h5> -->
<!-- 								<span class="mb-0 me-2">/day</span> -->
<!-- 							</div> --> 
<!-- 										Button -->
<!-- 										<div class="mt-2 mt-sm-0"> -->
<!-- 											<a href="hotel-detail.html" -->
<!-- 												class="btn btn-sm btn-primary-soft mb-0 w-100">자세히 보기<i -->
<!-- 													class="bi bi-arrow-right ms-2"></i></a> -->
<!-- 										</div> -->
<!-- 									</div> -->
<!-- 								</div> -->

<!-- 							</div> -->
<!-- 						</div> -->
<!-- 						Card item END -->

<!-- 						Card item START -->
<!-- 						<div class="col-md-6 col-xl-4"> -->
<!-- 							<div class="card shadow p-2 pb-0 h-100"> -->
<!-- 								Image -->
<%-- 								<img src="${pageContext.request.contextPath}/resources/images/category/foodShop/cafe1.jpeg" class="rounded-2" --%>
<!-- 									alt="Card image"> -->

<!-- 								Card body START -->
<!-- 								<div class="card-body px-3 pb-0"> -->

<!-- 									Title -->
<!-- 									<h5 class="card-title"><a href="hotel-detail.html">곳 카페</a> -->
<!-- 										<a href="#" class="h6 mb-0 z-index-2"><i class="bi fa-fw bi-bookmark"></i></a> -->
<!-- 									</h5> -->

<!-- 									List -->
<!-- 									<ul class="nav nav-divider mb-2 mb-sm-3"> -->
<!-- 										<li class="nav-item">대구 동구</li> -->
<!-- 										<li class="nav-item">프라이빗한 카페</li> -->
<!-- 										<li class="nav-item">13376.2km</li> -->
<!-- 									</ul> -->
<!-- 								</div> -->
<!-- 								Card body END -->

<!-- 								Card footer START -->
<!-- 								<div class="card-footer pt-0"> -->
<!-- 									Price and Button -->
<!-- 									<div class="d-sm-flex justify-content-sm-between align-items-center"> -->
<!-- 										Price -->
<!-- 										<div class="d-flex align-items-center">
<!-- 								<h5 class="fw-normal text-success mb-0 me-1">$570</h5> -->
<!-- 								<span class="mb-0 me-2">/day</span> -->
<!-- 							</div> --> 
<!-- 										Button -->
<!-- 										<div class="mt- mt-sm-0"> -->
<!-- 											<a href="hotel-detail.html" -->
<!-- 												class="btn btn-sm btn-primary-soft mb-0 w-100">자세히 보기<i -->
<!-- 													class="bi bi-arrow-right ms-2"></i></a> -->
<!-- 										</div> -->
<!-- 									</div> -->
<!-- 								</div> -->
<!-- 							</div> -->
<!-- 						</div> -->
<!-- 						Card item END -->

<!-- 						Card item START -->
<!-- 						<div class="col-md-6 col-xl-4"> -->
<!-- 							<div class="card shadow p-2 pb-0 h-100"> -->
<!-- 								Image -->
<%-- 								<img src="${pageContext.request.contextPath}/resources/images/category/foodShop/rest7.jpeg" class="rounded-2" --%>
<!-- 									alt="Card image"> -->

<!-- 								Card body START -->
<!-- 								<div class="card-body px-3 pb-0"> -->

<!-- 									Title -->
<!-- 									<h5 class="card-title"><a href="hotel-detail.html">후꾸스시</a> -->
<!-- 										<a href="#" class="h6 mb-0 z-index-2"><i -->
<!-- 												class="bi fa-fw bi-bookmark-fill text-danger"></i></a> -->
<!-- 									</h5> -->

<!-- 									List -->
<!-- 									<ul class="nav nav-divider mb-2 mb-sm-3"> -->
<!-- 										<li class="nav-item">대구 수성구</li> -->
<!-- 										<li class="nav-item">한적한 골목, 스시</li> -->
<!-- 										<li class="nav-item">13379.8km</li> -->
<!-- 									</ul> -->
<!-- 								</div> -->
<!-- 								Card body END -->

<!-- 								Card footer START -->
<!-- 								<div class="card-footer pt-0"> -->
<!-- 									Price and Button -->
<!-- 									<div class="d-sm-flex justify-content-sm-between align-items-center"> -->
<!-- 										Price -->
<!-- 										<div class="d-flex align-items-center">
<!-- 								<h5 class="fw-normal text-success mb-0 me-1">$896</h5> -->
<!-- 								<span class="mb-0 me-2">/day</span> -->
<!-- 							</div> --> 
<!-- 										Button -->
<!-- 										<div class="mt-2 mt-sm-0"> -->
<!-- 											<a href="hotel-detail.html" -->
<!-- 												class="btn btn-sm btn-primary-soft mb-0 w-100">자세히 보기<i -->
<!-- 													class="bi bi-arrow-right ms-2"></i></a> -->
<!-- 										</div> -->
<!-- 									</div> -->
<!-- 								</div> -->
<!-- 							</div> -->
<!-- 						</div> -->
<!-- 						Card item END -->

<!-- 						Card item START -->
<!-- 						<div class="col-md-6 col-xl-4"> -->
<!-- 							<div class="card shadow p-2 pb-0 h-100"> -->
<!-- 								Image -->
<%-- 								<img src="${pageContext.request.contextPath}/resources/images/category/foodShop/cafe2.jpeg" class="rounded-2" --%>
<!-- 									alt="Card image"> -->

<!-- 								Card body START -->
<!-- 								<div class="card-body px-3 pb-0"> -->

<!-- 									Title -->
<!-- 									<h5 class="card-title"><a href="hotel-detail.html">팜테이블 수성못점</a> -->
<!-- 										<a href="#" class="h6 mb-0 z-index-2"><i class="bi fa-fw bi-bookmark"></i></a> -->
<!-- 									</h5> -->

<!-- 									List -->
<!-- 									<ul class="nav nav-divider mb-2 mb-sm-3"> -->
<!-- 										<li class="nav-item">대구 수성구</li> -->
<!-- 										<li class="nav-item">팬케이크 맛집</li> -->
<!-- 										<li class="nav-item">13379.9km</li> -->
<!-- 									</ul> -->
<!-- 								</div> -->
<!-- 								Card body END -->

<!-- 								Card footer START -->
<!-- 								<div class="card-footer pt-0"> -->
<!-- 									Price and Button -->
<!-- 									<div class="d-sm-flex justify-content-sm-between align-items-center"> -->
<!-- 										Price -->
<!-- 										<div class="d-flex align-items-center">
<!-- 								<h5 class="fw-normal text-success mb-0 me-1">$475</h5> -->
<!-- 								<span class="mb-0 me-2">/day</span> -->
<!-- 							</div> --> 
<!-- 										Button -->
<!-- 										<div class="mt-2 mt-sm-0"> -->
<!-- 											<a href="hotel-detail.html" -->
<!-- 												class="btn btn-sm btn-primary-soft mb-0 w-100">자세히 보기<i -->
<!-- 													class="bi bi-arrow-right ms-2"></i></a> -->
<!-- 										</div> -->
<!-- 									</div> -->
<!-- 								</div> -->
<!-- 							</div> -->
<!-- 						</div> -->
<!-- 						Card item END -->

<!-- 					</div> Row END -->

<!-- 					Pagination -->
<!-- 					<div class="row"> -->
<!-- 						<div class="col-12"> -->
<!-- 							<nav class="mt-4 d-flex justify-content-center" aria-label="navigation"> -->
<!-- 								<ul class="pagination pagination-primary-soft d-inline-block d-md-flex rounded mb-0"> -->
<!-- 									<li class="page-item mb-0"><a class="page-link" href="#" tabindex="-1"><i -->
<!-- 												class="fa-solid fa-angle-left"></i></a></li> -->
<!-- 									<li class="page-item mb-0"><a class="page-link" href="#">1</a></li> -->
<!-- 									<li class="page-item mb-0 active"><a class="page-link" href="#">2</a></li> -->
<!-- 									<li class="page-item mb-0"><a class="page-link" href="#">..</a></li> -->
<!-- 									<li class="page-item mb-0"><a class="page-link" href="#">6</a></li> -->
<!-- 									<li class="page-item mb-0"><a class="page-link" href="#"><i -->
<!-- 												class="fa-solid fa-angle-right"></i></a></li> -->
<!-- 								</ul> -->
<!-- 							</nav> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 				</div> -->
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
