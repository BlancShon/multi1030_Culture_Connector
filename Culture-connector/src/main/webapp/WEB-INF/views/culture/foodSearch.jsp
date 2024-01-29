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
		<div id="hero-carousel" class="carousel slide" data-bs-ride="carousel">
			<div class="carousel-inner">
				<div class="carousel-item active c-item">
					<img src="https://www.adobe.com/kr/creativecloud/photography/hub/guides/media_1672836e8a1d0e0fe500d33e553a8242f95be9631.jpeg?width=750&format=jpeg&optimize=medium.jpg"
						class="d-block w-100 c-img" alt="Slide 1">
					<div class="carousel-caption top-0 mt-4 left-align">

						<p class="text-uppercase fs-2 mt-8"><span style="color: rgb(253, 253, 253);"><b>전국 팔도의 맛집</span><br>
							<span style="color: rgba(243, 198, 198, 0.941);">그리고</span>
							<br><span style="color: rgba(148, 244, 209, 0.923);">여유로운 커피 한잔</span></p></b>
						<!-- <a href="#" class="btn btn-link text-light text-decoration-none fs-6 mt-5 d-block" style="border-bottom: 1px solid transparent; transition: border-bottom 0.3sease; text-align: left;">자세히 보기</a> -->
					</div>
				</div>
			</div>

			<div div class="container mt-5">
				<div class="row height d-flex justify-content-center align-items-center">
					<div class="col-md-10 ">
			
						<div class="row height d-flex justify-content-center align-items-center">
							<div class="col-md-12">
								<h5 class="fw-normal mb-0">
									<i class="fa-solid fa-person-shelter fa-fw text-primary me-2"></i>
									<i class="fa-solid fa-utensils fa-fw text-primary me-2"></i>
									<i class="fa-solid fa-store fa-fw text-primary me-2"></i>
									<i class="fa-solid bi bi-cup-straw text-primary me-2"></i>
									<i class="fa-solid bi bi-cup-hot-fill text-primary me-2" ></i>
									 </h5>
										<h4 class="text-primary mt-2"><span style="color: rgb(5, 5, 5);">다양한 맛집을 검색할 수 있어요!</span></h4><br>
									<form name="foodSearch" action="${pageContext.request.contextPath}/foodSearch" method="get">
										<input type="hidden" name="page" value="1">
										<div class="search mt-0">
											<i class="fa fa-search"></i>
												<input type="text" id="searchName" name="searchValue" class="form-control" style="font-size: large" placeholder="맛집 이름을 검색하세요." value="${param.searchValue}">
													<button class="btn btn-primary" style="font-size: x-large;">검색</button>
										</div>
											<br>
								<div class="container mt-2">
									<div class="filter-block">
										<h5 class="mb-3"><i class="fa-solid bi bi-geo-alt-fill text-primary me-2"></i>지역 카테고리</h5>
										<ul class="list-inline mb-0">
											<li class="list-inline-item">
												<div class="form-check">
<%-- 													<input class="form-check-input" type="checkbox" id="amenities_0" name="localtypes"  value="서울" ${fn:contains(localtypeList, '﻿서﻿울') ? '﻿checked':'' } > --%>
													<input class="form-check-input" type="checkbox" id="amenities_0" name="localtypes"  value="서울" ${fn:contains(localtypeList, '서울') ? 'checked' : ''}>
													<label class="form-check-label" for="amenities_0" >서울 </label>
												</div>
											</li>
											<li class="list-inline-item">
												<div class="form-check">
													<input class="form-check-input" type="checkbox" id="amenities_1" name="localtypes"  value="경기" ${fn:contains(localtypeList, '경기') ? 'checked' : ''}>
													<label class="form-check-label" for="amenities_1">경기 </label>
												</div>
											</li>
											<li class="list-inline-item">
												<div class="form-check">
													<input class="form-check-input" type="checkbox" id="amenities_2" name="localtypes"  value="인천" ${fn:contains(localtypeList, '인천') ? 'checked' : ''}>
													<label class="form-check-label" for="amenities_2">인천 </label>
												</div>
											</li>
											<li class="list-inline-item">
												<div class="form-check">
													<input class="form-check-input" type="checkbox" id="amenities_3" name="localtypes"  value="대전" ${fn:contains(localtypeList, '대전') ? 'checked' : ''}>
													<label class="form-check-label" for="amenities_3">대전 </label>
												</div>
											</li>
											<li class="list-inline-item">
												<div class="form-check">
													<input class="form-check-input" type="checkbox" id="amenities_4" name="localtypes"  value="대구" ${fn:contains(localtypeList, '대구') ? 'checked' : ''}>
													<label class="form-check-label" for="amenities_4">대구 </label>
												</div>
											</li>
											<li class="list-inline-item">
												<div class="form-check">
													<input class="form-check-input" type="checkbox" id="amenities_6" name="localtypes"  value="전라북도" ${fn:contains(localtypeList, '전라북도') ? 'checked' : ''}>
													<label class="form-check-label" for="amenities_6" `>전라북도 </label>
												</div>
											</li>
											<li class="list-inline-item">
												<div class="form-check">
													<input class="form-check-input" type="checkbox" id="amenities_7" name="localtypes"  value="경상북도" ${fn:contains(localtypeList, '경상북도') ? 'checked' : ''}>
													<label class="form-check-label" for="amenities_7" `>경상북도 </label>
												</div>
											</li>
											<li class="list-inline-item">
												<div class="form-check">
													<input class="form-check-input" type="checkbox" id="amenities_8" name="localtypes"  value="충청북도" ${fn:contains(localtypeList, '충청북도') ? 'checked' : ''}>
													<label class="form-check-label" for="amenities_8" `>충청북도 </label>
												</div>
											</li>
											<br><br>
											<li class="list-inline-item">
												<div class="form-check">
													<input class="form-check-input" type="checkbox" id="amenities_9" name="localtypes"  value="전라남도" ${fn:contains(localtypeList, '전라남도') ? 'checked' : ''}>
													<label class="form-check-label" for="amenities_9" `>전라남도 </label>
												</div>
											</li>
											<li class="list-inline-item">
												<div class="form-check">
													<input class="form-check-input" type="checkbox" id="amenities_10" name="localtypes"  value="경상남도" ${fn:contains(localtypeList, '경상남도') ? 'checked' : ''}>
													<label class="form-check-label" for="amenities_10" `>경상남도 </label>
												</div>
											</li>
											<li class="list-inline-item">
												<div class="form-check">
													<input class="form-check-input" type="checkbox" id="amenities_11" name="localtypes"  value="충청남도" ${fn:contains(localtypeList, '충청남도') ? 'checked' : ''}>
													<label class="form-check-label" for="amenities_11" `>충청남도 </label>
												</div>
											</li>
											<li class="list-inline-item">
												<div class="form-check">
													<input class="form-check-input" type="checkbox" id="amenities_12" name="localtypes"  value="강원" ${fn:contains(localtypeList, '강원') ? 'checked' : ''}>
													<label class="form-check-label" for="amenities_12" `>강원 </label>
												</div>
											</li>
											<li class="list-inline-item">
												<div class="form-check">
													<input class="form-check-input" type="checkbox" id="amenities_13" name="localtypes"  value="울산" ${fn:contains(localtypeList, '울산') ? 'checked' : ''}>
													<label class="form-check-label" for="amenities_13" `>울산 </label>
												</div>
											</li>
											<li class="list-inline-item">
												<div class="form-check">
													<input class="form-check-input" type="checkbox" id="amenities_14" name="localtypes"  value="부산" ${fn:contains(localtypeList, '부산') ? 'checked' : ''}>
													<label class="form-check-label" for="amenities_14" `>부산 </label>
												</div>
											</li>
											<li class="list-inline-item">
												<div class="form-check">
													<input class="form-check-input" type="checkbox" id="amenities_15" name="localtypes"  value="제주" ${fn:contains(localtypeList, '제주') ? 'checked' : ''}>
													<label class="form-check-label" for="amenities_15" `>제주 </label>
												</div>
											</li>
			
										</ul>
									</div>
									<br>
									<div class="filter-block">
										<h5 class="mb-3"><i class="fa-solid fa-utensils fa-fw text-primary me-2"></i>음식 카테고리</h5>
										<ul class="list-inline mb-0">
											<li class="list-inline-item">
												<div class="form-check">
<!-- 													<input class="form-check-input" type="checkbox" id="facilities_0" name="foodtypes" value="A05020100"> -->
													<input class="form-check-input" type="checkbox" id="facilities_0" name="foodtypes"  value="A05020100" ${fn:contains(foodtypeList, 'A05020100') ? 'checked' : ''}>
													<label class="form-check-label" for="facilities_0">한식	</label>
												</div>
											</li>
											<li class="list-inline-item">
												<div class="form-check">
													<input class="form-check-input" type="checkbox" id="facilities_1" name="foodtypes"  value="A05020400" ${fn:contains(foodtypeList, 'A05020400') ? 'checked' : '' }>
													<label class="form-check-label" for="facilities_1">중식 </label>
												</div>
											</li>
											<li class="list-inline-item">
												<div class="form-check">
													<input class="form-check-input" type="checkbox" id="facilities_2" name="foodtypes"  value="A05020300" ${fn:contains(foodtypeList, 'A05020300') ? 'checked' : ''}>
													<label class="form-check-label" for="facilities_2">일식 </label>
												</div>
											</li>
											<li class="list-inline-item">
												<div class="form-check">
													<input class="form-check-input" type="checkbox" id="facilities_3" name="foodtypes"  value="A05020200" ${fn:contains(foodtypeList, 'A05020200') ? 'checked' : ''}>
													<label class="form-check-label" for="facilities_3">양식 </label>
												</div>
											</li>
											<li class="list-inline-item">
												<div class="form-check">
													<input class="form-check-input" type="checkbox" id="facilities_4" name="foodtypes"  value="A05020900" ${fn:contains(foodtypeList, 'A05020900') ? 'checked' : ''}>
													<label class="form-check-label" for="facilities_4">커피 </label>
												</div>
											</li>
										</ul>
									</div>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>

			<!--서치바-->
			<div div class="container mt-6">
			</div>
			<!--서치바 끝-->


<!-- 검색 결과 -->
		<section class="pt-0">
			<div class="container">
				<hr>
					<div class="count">
						총 <span class="count text-primary" style="text-align: left;">${foodCount}</span>
					</div>
					<br>
					
					<div class="row g-4">
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
											<a href="${path}/food/detail?cfno=${item.cfno}"><c:out value="${item.title}" /></a>
											<a href="#" class="h6 mb-0 z-index-2"><i
												class="bi fa-fw bi-bookmark"
												style="align-items: last baseline;"></i></a>
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




<!-- 		<!-- Card item END --> 

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

					</div> <!-- Row END -->

					<!-- Pagination -->
					<nav class="d-flex justify-content-center mt-3" aria-label="navigation">
                        <ul class="pagination pagination-primary-soft d-inline-block d-md-flex rounded mb-0">
                            <li class="page-item mb-0"><a class="page-link" href="#" tabindex="-1">
                                    <button style="border: none; background: none;" onclick="movePage(${pageInfo.prevPage});"><img src="${pageContext.request.contextPath}/resources/images/arrow-prev-svgrepo-com.svg" style="width: 25px"></button>
                                    </a>
                                    <!-- 여기까지 이전페이지 버튼 -->
                            </li>
                             <c:forEach begin="${pageInfo.startPage}" end="${pageInfo.endPage}" varStatus="status" step="1" >
                             <c:if test="${status.current == pageInfo.currentPage}">
								<li class="page-item active"><a class="page-link" href=""><button style="border: none; background: none;">${status.current}</button></a></li>
						    </c:if> 
						    <c:if test="${status.current != pageInfo.currentPage}">
							<li class="page-item " aria-current="page"> <a class="page-link" href="#"><button style="border: none; background: none;" onclick="movePage(${status.current});"> ${status.current}</button></a></li>
							</c:if>
                            </c:forEach>
                            <!-- 여기는 이후 페이지 버튼 -->
                             <li class="page-item mb-0"><a class="page-link" href="#" tabindex="-1">
                           		 <button style="border: none; background: none;" onclick="movePage(${pageInfo.nextPage});"><img src="${pageContext.request.contextPath}/resources/images/arrow-next.svg" style="width: 25px"></button>
                             	</a>
                           	</li>
                                        
                      
                        </ul>
                    </nav>
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
<script type="text/javascript">
	function movePage(page){
		foodSearch.page.value = page;
		foodSearch.submit();
	}
</script>