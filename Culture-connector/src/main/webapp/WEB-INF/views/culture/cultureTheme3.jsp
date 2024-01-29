<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>


<jsp:include page="/WEB-INF/views/common/cultureheader.jsp">
	<jsp:param value="Culture Connector" name="title"/>
</jsp:include>

<c:set var="path" value="${pageContext.request.contextPath}"/>

<section class="d-flex align-items-center dark-overlay bg-cover" style="background-image: url(https://d2k5miyk6y5zf0.cloudfront.net/article/MYH/20221219/MYH20221219019300641.jpg); background-size: cover; background-position: center;">
	<div class="container py-6 py-lg-7 text-white overlay-content text-left ml-lg-0 ml-md-0 ml-0"> <!-- Updated text alignment and added margin-left classes -->
		<div class="row">
			<div class="col-xl-10 mx-auto">
				<h2 class="text-uppercase fs-1 mt-7"><span style="color: rgb(236, 236, 236);">지역 문화축제</span> <br> </h2>
				<h6 class="text-white">재미와 즐거움이 가득한 문화 축제!</h6>
			</div>
		</div>
	</div>
</section>



<div class="container">

  <!-- Search START -->
<div class="row mt-n7">
<div class="col-11 mx-auto">
	<!-- Booking from START -->
	<form class="bg-mode shadow rounded-3 p-4" name="cultureTheme3Search" action="${pageContext.request.contextPath}/cultureTheme3Search" method="get">
<%-- 	<form name="cultureTheme3Search" action="${pageContext.request.contextPath}/cultureTheme3Search" method="get"> --%>
		<input type="hidden" name="page" value="1">
		<div class="row g-4 align-items-center">
			<!-- 셀렉트 + 검색창-->
			<div class="col-xl-10">
				<div class="row g-4">
					<!-- Location -->
					<div class="col-md-6 col-lg-6">
						<label class="h6 fw-normal mb-0"><i class="bi bi-geo-alt text-primary me-1"></i>여행 지역</label>
						<div class="form-border-bottom form-control-transparent form-fs-lg mt-2">
							<!-- Input field -->
							<select class="form-select js-choice" data-search-enabled="true" name="localtypes">
								<option value="">지역을 선택해주세요</option>
								<option value="서울">서울</option>
								<option value="경기">경기</option>
								<option value="인천">인천</option>
								<option value="대전">대전</option>
								<option value="대구">대구</option>
								<option value="전라북도">전라북도</option>
								<option value="경상북도">경상북도</option>
								<option value="충청북도">충청북도</option>
								<option value="전라남도">전라남도</option>
								<option value="경상남도">경상남도</option>
								<option value="충청남도">충청남도</option>
								<option value="강원">강원</option>
								<option value="울산">울산</option>
								<option value="부산">부산</option>
								<option value="제주">제주</option>
								<!-- Add more options as needed -->
							</select>
						</div>
					</div>

					<!-- Check in -->
					<div class="col-md-6 col-lg-6">
						<label class="h6 fw-normal mb-0"><i class="bi bi-calendar text-primary me-1"></i>여행 날짜</label>
						<!-- Input field -->
						<div class="form-border-bottom form-control-transparent form-fs-lg mt-2">
							<input type="text" class="form-control flatpickr py-2 flatpickr-input"
								data-date-format="YYYY-MM-DD" placeholder="날짜를 선택해주세요" readonly="readonly" name="searchDate" >
								<script>
								document.addEventListener('DOMContentLoaded', function() {
								    // Flatpickr 초기화
								    flatpickr('.flatpickr', {
								        dateFormat: 'Y-m-d'
								    });
								});
								</script>
						</div>
					</div>
					<!-- Guest -->

					<!-- Ongoing Festivals Checkbox -->
					<div class="col-md-6 col-lg-6">
						<div class="form-check mt-3">
							<input class="form-check-input" type="checkbox" name="festivaltypes" value="진행" id="Checkbox" >
							<label class="form-check-label" for="ongoingCheckbox"> 진행중인 축제 </label>
						   
						</div>
					</div>

					<!-- Finished Festivals Checkbox -->
					<div class="col-md-6 col-lg-6">
						<div class="form-check mt-3">
							<input class="form-check-input" type="checkbox" name="festivaltypes" value="종료" id="Checkbox" >
							<label class="form-check-label" for="finishedCheckbox"> 종료된 축제 </label>
						</div>
					</div>

				</div>
			</div>

			<!-- Button -->
			<div class="col-xl-2">
				<div class="d-grid">
<%-- 					<a href="${path}/festivalSearch" class="btn btn-lg btn-dark mb-0">검색</a> --%>

					<button class="btn btn-lg btn-dark mb-0" style="font-size: x-large;">검색</button>
				</div>
			</div>
		</div>
	</form>
	<!-- Booking from END -->
</div>
</div>
<!-- Search END -->

</div>



<!-- =======================
Featured Hotels START -->
<section>
<div class="container">

	<!-- Title -->
							<div class="row mb-4">
								<div class="col-12 text-center">
									<h3 class="mb-0 fs-4">현재 인기 있는 축제는?</h3>
						
								</div>
							</div>
					<div class="row g-4">
					<c:if test="${not empty Randlist}">
						</c:if>
						<c:forEach var="item" items="${Randlist}" begin="0" end="3">

						<!-- Hotel item -->
						<div class="col-sm-6 col-xl-3">
							<!-- Card START -->
							<div class="card card-img-scale overflow-hidden bg-transparent">
								<!-- Image and overlay -->
								<div class="card-img-scale-wrapper rounded-3">
									<!-- Image -->
									<img src="${item.firstimage}" class="card-img" alt="hotel image" style="height:200px">
									<!-- Badge -->
				<!-- 					<div class="position-absolute bottom-0 start-0 p-3"> -->
				<!-- 						<div class="badge text-bg-dark fs-6 rounded-pill stretched-link"><i class="bi bi-geo-alt me-2"></i>강원도</div> -->
				<!-- 					</div> -->
								</div>
				
								<!-- Card body -->
								<div class="card-body px-2">
									<!-- Title -->
									<h5 class="card-title"><a href="${path}/cultureTheme3/detail?contentid=${item.contentid}" class="stretched-link">${item.title}</a></h5>
									<!-- 기간 -->
									<div class="d-flex justify-content-between align-items-center">
										<h6 class="text-success mb-0">${item.eventstartdate}<span> ~ ${item.eventenddate}</span></h6>  
									</div>
								</div>
							</div>
							<!-- Card END -->
						</div>
				</c:forEach>
				</div> <!-- Row END -->
		<!-- Hotel item -->
<!-- 		<div class="col-sm-6 col-xl-3"> -->
<!-- 			<!-- Card START --> 
<!-- 			<div class="card card-img-scale overflow-hidden bg-transparent"> -->
<!-- 				Image and overlay -->
<!-- 				<div class="card-img-scale-wrapper rounded-3"> -->
<!-- 					Image -->
<!-- 					<img src="http://tong.visitkorea.or.kr/cms/resource/57/3062257_image2_1.jpg" class="card-img" alt="hotel image"> -->
<!-- 					Badge -->
<!-- 					<div class="position-absolute bottom-0 start-0 p-3"> -->
<!-- 						<div class="badge text-bg-dark fs-6 rounded-pill stretched-link"><i class="bi bi-geo-alt me-2"></i>인천</div> -->
<!-- 					</div> -->
<!-- 				</div> -->

<!-- 				Card body -->
<!-- 				<div class="card-body px-2"> -->
<!-- 					Title -->
<!-- 					<h5 class="card-title"><a href="culture-theme2-detail.html" class="stretched-link">만수천 빛의 거리</a></h5> -->
<!-- 					기간 -->
<!-- 					<div class="d-flex justify-content-between align-items-center"> -->
<!-- 						<h6 class="text-success mb-0">2023.12.08~2024.01.31</h6>   -->
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 			</div> -->
<!-- 			<!-- Card END --> 
<!-- 		</div> -->

<!-- 		<!-- Hotel item --> 
<!-- 		<div class="col-sm-6 col-xl-3"> -->
<!-- 			<!-- Card START --> 
<!-- 			<div class="card card-img-scale overflow-hidden bg-transparent"> -->
<!-- 				Image and overlay -->
<!-- 				<div class="card-img-scale-wrapper rounded-3"> -->
<!-- 					Image -->
<!-- 					<img src="http://tong.visitkorea.or.kr/cms/resource/86/3054486_image2_1.png" class="card-img" alt="hotel image"> -->
<!-- 					Badge -->
<!-- 					<div class="position-absolute bottom-0 start-0 p-3"> -->
<!-- 						<div class="badge text-bg-dark fs-6 rounded-pill stretched-link"><i class="bi bi-geo-alt me-2"></i>영동</div> -->
<!-- 					</div> -->
<!-- 				</div> -->

<!-- 				Card body -->
<!-- 				<div class="card-body px-2"> -->
<!-- 					Title -->
<!-- 					<h5 class="card-title"><a href="culture-theme2-detail.html" class="stretched-link">영동 곶감 축제</a></h5> -->
<!-- 					기간 -->
<!-- 					<div class="d-flex justify-content-between align-items-center"> -->
<%-- 						<h6 class="text-success mb-0">${item.eventstartdate}<span> ~ ${item.eventenddate}</span></h6>   --%>
						
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 			</div> -->
<!-- 			<!-- Card END --> 
<!-- 		</div> -->

<!-- 		<!-- Hotel item --> 
<!-- 		<div class="col-sm-6 col-xl-3"> -->
<!-- 			<!-- Card START --> 
<!-- 			<div class="card card-img-scale overflow-hidden bg-transparent"> -->
<!-- 				Image and overlay -->
<!-- 				<div class="card-img-scale-wrapper rounded-3"> -->
<!-- 					Image -->
<!-- 					<img src="http://tong.visitkorea.or.kr/cms/resource/23/3047123_image2_1.jpg" class="card-img" alt="hotel image"> -->
<!-- 					Badge -->
<!-- 					<div class="position-absolute bottom-0 start-0 p-3"> -->
<!-- 						<div class="badge text-bg-dark fs-6 rounded-pill stretched-link"><i class="bi bi-geo-alt me-2"></i>경상남도</div> -->
<!-- 					</div> -->
<!-- 				</div> -->

<!-- 				Card body -->
<!-- 				<div class="card-body px-2"> -->
<!-- 					Title -->
<!-- 					<h5 class="card-title"><a href="culture-theme2-detail.html" class="stretched-link">씨파크 스노우 페스티벌</a></h5> -->
<!-- 					기간 -->
<!-- 					<div class="d-flex justify-content-between align-items-center"> -->
<!-- 						<h6 class="text-success mb-0">2023.12.23~2024.02.28</h6>   -->
						
<!-- 					</div> -->
				
<!-- 				</div> -->
<!-- 			</div> -->
<!-- 			<!-- Card END --> 
<!-- 		</div> -->

</div>
</section>
<!-- =======================
Featured Hotels END -->



<!-- =======================
Tour grid START -->
<section class="pt-0">
		<div class="container">
				<!-- Content -->
				<div class="col-12 col-xl-6 order-xl-1 mg-2">
					<h5 class="mb-0 text-primary"><span class="text-info">${festivalCount}</span>개의 축제가 검색되었습니다.</h5>
				</div>

				<!-- Filter and content START -->
			<div class="row g-4 align-items-center justify-content-between mb-4">

<!-- Select option -->
<!-- <div class="col-12 col-xl-2 order-xl-2 mt-3 mt-xl-0 "> -->
<%-- 	<form class="form-control-bg-light" action="${path}/festival/searchTestList" method="get"> --%>
<!-- 		 <select id="upToDate" name="upToDate"> -->
<!--             <option value="asc">최신순</option> -->
<!--             <option value="desc">오래된순</option> -->
<!--         </select> -->
<!-- 	</form> -->
<!-- </div> -->
		

	<!-- Filter and content END -->

				<div class="row g-4">
						<!-- Card item START -->
						<c:if test="${empty list}">
							﻿결과가 없습니다.
						</c:if>
						<c:forEach var="item" items="${list}">
					<div class="col-md-6 col-xl-4">
						<div class="card card-hover-shadow pb-0 h-100">
								<!-- Overlay item -->
								<div class="position-relative">
									<!-- Image -->
									<img src="${item.firstimage}" class="card-img-top" alt="Card image" style="height:200px">
									<!-- Overlay -->
									<div class="card-img-overlay d-flex flex-column p-4 z-index-1">
										<!-- Card overlay top -->
										<div>
											
											<span class="badge text-bg-dark">개최중</span>
										</div>
										<!-- Card overlay bottom -->
										
									</div>
								</div>
								
								<!-- Image -->
						
								<!-- Card body START -->
								<div class="card-body px-3">
									<!-- Title -->
									<h5 class="card-title mb-0"><a href="${path}/cultureTheme3/detail?contentid=${item.contentid}" class="stretched-link">${item.title}</a></h5>
									<span class="small"><i class="far fa-calendar-alt me-2"></i>${item.eventstartdate}</span><span> ~ ${item.eventenddate}</span><br>
										<span class="small"><i class="fa-solid bi bi-geo-alt-fill me-2"></i>${item.addr1}</span></span>
								</div>
								<!-- Card body END -->
	
								<!-- Card footer START-->
								<div class="card-footer pt-0">
									<!-- Price and Button -->
									<div class="d-sm-flex justify-content-sm-between align-items-center flex-wrap">
										<!-- Price -->
										<div class="hstack gap-2">
<%-- 											<h7 class="mb-0 fs-5">${item.addr1}</h7> --%>
										</div>
										
										<!-- Button -->
										<div class="mt-2 mt-sm-0">
											<a href="${path}/cultureTheme3/detail?contentid=${item.contentid}" class="btn btn-sm btn-dark mb-0">더보기</a>
										</div>
									</div>
								</div>
							</div>
						</div>
				</c:forEach>

						<!-- Card item END -->

		
						<!-- Card item START -->
				<!-- 		<div class="col-md-6 col-xl-4"> -->
				<!-- 			<div class="card card-hover-shadow pb-0 h-100"> -->
				<!-- 				Overlay item -->
				<!-- 				<div class="position-relative"> -->
				<!-- 					Image -->
				<!-- 					<img src="http://tong.visitkorea.or.kr/cms/resource/27/2868127_image2_1.jpg" class="card-img-top" alt="Card image"> -->
				<!-- 					Overlay -->
				<!-- 					<div class="card-img-overlay d-flex flex-column p-4 z-index-1"> -->
				<!-- 						Card overlay top -->
				<!-- 						<div> -->
											
				<!-- 							<span class="badge text-bg-dark">개최중</span> -->
				<!-- 						</div> -->
				<!-- 						Card overlay bottom -->
										
				<!-- 					</div> -->
				<!-- 				</div> -->
				<!-- 				Image -->

<!-- 				Card body START -->
<!-- 				<div class="card-body px-3"> -->
<!-- 					Title -->
<!-- 					<h5 class="card-title mb-0"><a href="" class="stretched-link">휴애리 동백축제</a></h5> -->
<!-- 					<span class="small"><i class="far fa-calendar-alt me-2"></i>2023.11.14~2024.01.31</span> -->

					
<!-- 				</div> -->
<!-- 				Card body END -->

<!-- 				Card footer START -->
<!-- 				<div class="card-footer pt-0"> -->
<!-- 					Price and Button -->
<!-- 					<div class="d-sm-flex justify-content-sm-between align-items-center flex-wrap"> -->
<!-- 						Price -->
<!-- 						<div class="hstack gap-2"> -->
<!-- 							<h6 class="mb-0 fs-5">제주</h6> -->
<!-- 						</div> -->
						
<!-- 						Button -->
<!-- 						<div class="mt-2 mt-sm-0"> -->
<!-- 							<a href="#" class="btn btn-sm btn-dark mb-0">더보기</a> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 				</div> -->

<!-- 			</div> -->
<!-- 		</div> -->
<!-- 		<!-- Card item END --> 
<!-- 			<!-- Card item START --> 
<!-- 			<div class="col-md-6 col-xl-4"> -->
<!-- 			<div class="card card-hover-shadow pb-0 h-100"> -->
<!-- 				Overlay item -->
<!-- 				<div class="position-relative"> -->
<!-- 					Image -->
<!-- 					<img src="https://cdn.visitkorea.or.kr/kfes/upload/contents/db/300_62bbfc61-0c83-4108-be6b-304cc3d471bc_1.jpg" class="card-img-top" alt="Card image"> -->
<!-- 					Overlay -->
<!-- 					<div class="card-img-overlay d-flex flex-column p-4 z-index-1"> -->
<!-- 						Card overlay top -->
<!-- 						<div> -->
							
<!-- 							<span class="badge text-bg-dark">개최중</span> -->
<!-- 						</div> -->
<!-- 						Card overlay bottom -->
						
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 				Image -->
			
<!-- 				Card body START -->
<!-- 				<div class="card-body px-3"> -->
<!-- 					Title -->
<!-- 					<h5 class="card-title mb-0"><a href="" class="stretched-link">별빛이 흐르는 정원</a></h5> -->
<!-- 					<span class="small"><i class="far fa-calendar-alt me-2"></i>2024.01.01~2024.12.31</span> -->
			
					
<!-- 				</div> -->
<!-- 				Card body END -->
			
<!-- 				Card footer START -->
<!-- 				<div class="card-footer pt-0"> -->
<!-- 					Price and Button -->
<!-- 					<div class="d-sm-flex justify-content-sm-between align-items-center flex-wrap"> -->
<!-- 						Price -->
<!-- 						<div class="hstack gap-2"> -->
<!-- 							<h6 class="mb-0 fs-5">경기도 파주</h6> -->
<!-- 						</div> -->
						
<!-- 						Button -->
<!-- 						<div class="mt-2 mt-sm-0"> -->
<!-- 							<a href="#" class="btn btn-sm btn-dark mb-0">더보기</a> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 				</div> -->
			
<!-- 			</div> -->
<!-- 			</div> -->
<!-- 			<!-- Card item END --> 
<!-- 			<!-- Card item START -->
<!-- 			<div class="col-md-6 col-xl-4"> -->
<!-- 			<div class="card card-hover-shadow pb-0 h-100"> -->
<!-- 				Overlay item -->
<!-- 				<div class="position-relative"> -->
<!-- 					Image -->
<!-- 					<img src="http://tong.visitkorea.or.kr/cms/resource/97/3035597_image2_1.jpg" class="card-img-top" alt="Card image"> -->
<!-- 					Overlay -->
<!-- 					<div class="card-img-overlay d-flex flex-column p-4 z-index-1"> -->
<!-- 						Card overlay top -->
<!-- 						<div> -->
							
<!-- 							<span class="badge text-bg-dark">개최중</span> -->
<!-- 						</div> -->
<!-- 						Card overlay bottom -->
						
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 				Image -->
			
<!-- 				Card body START -->
<!-- 				<div class="card-body px-3"> -->
<!-- 					Title -->
<!-- 					<h5 class="card-title mb-0"><a href="" class="stretched-link">광화문 광장마켓</a></h5> -->
<!-- 					<span class="small"><i class="far fa-calendar-alt me-2"></i>2023.12.15~2024.01.21</span> -->
			
					
<!-- 				</div> -->
<!-- 				Card body END -->
			
<!-- 				Card footer START -->
<!-- 				<div class="card-footer pt-0"> -->
<!-- 					Price and Button -->
<!-- 					<div class="d-sm-flex justify-content-sm-between align-items-center flex-wrap"> -->
<!-- 						Price -->
<!-- 						<div class="hstack gap-2"> -->
<!-- 							<h6 class="mb-0 fs-5">서울 종로</h6> -->
<!-- 						</div> -->
						
<!-- 						Button -->
<!-- 						<div class="mt-2 mt-sm-0"> -->
<!-- 							<a href="#" class="btn btn-sm btn-dark mb-0">더보기</a> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 				</div> -->
			
<!-- 			</div> -->
<!-- 			</div> -->
<!-- 			<!-- Card item END --> 
<!-- 			<!-- Card item START -->
<!-- 			<div class="col-md-6 col-xl-4"> -->
<!-- 			<div class="card card-hover-shadow pb-0 h-100"> -->
<!-- 				Overlay item -->
<!-- 				<div class="position-relative"> -->
<!-- 					Image -->
<!-- 					<img src="https://cdn.visitkorea.or.kr/kfes/upload/contents/db/300_83e1c0ed-fc26-49df-9364-6bc7729d14b6_1.png" class="card-img-top" alt="Card image"> -->
<!-- 					Overlay -->
<!-- 					<div class="card-img-overlay d-flex flex-column p-4 z-index-1"> -->
<!-- 						Card overlay top -->
<!-- 						<div> -->
							
<!-- 							<span class="badge text-bg-dark">개최중</span> -->
<!-- 						</div> -->
<!-- 						Card overlay bottom -->
						
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 				Image -->
			
<!-- 				Card body START -->
<!-- 				<div class="card-body px-3"> -->
<!-- 					Title -->
<!-- 					<h5 class="card-title mb-0"><a href="" class="stretched-link">한국의 집 고호재</a></h5> -->
<!-- 					<span class="small"><i class="far fa-calendar-alt me-2"></i>2023.12.12~2024.02.29</span> -->
			
					
<!-- 				</div> -->
<!-- 				Card body END -->
			
<!-- 				Card footer START -->
<!-- 				<div class="card-footer pt-0"> -->
<!-- 					Price and Button -->
<!-- 					<div class="d-sm-flex justify-content-sm-between align-items-center flex-wrap"> -->
<!-- 						Price -->
<!-- 						<div class="hstack gap-2"> -->
<!-- 							<h6 class="mb-0 fs-5">서울 중구</h6> -->
<!-- 						</div> -->
						
<!-- 						Button -->
<!-- 						<div class="mt-2 mt-sm-0"> -->
<!-- 							<a href="#" class="btn btn-sm btn-dark mb-0">더보기</a> -->
			
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 				</div> -->
			
<!-- 			</div> -->
<!-- 			</div> -->
<!-- 			<!-- Card item END --> 
<!-- 			<!-- Card item START --> 
<!-- 			<div class="col-md-6 col-xl-4"> -->
<!-- 			<div class="card card-hover-shadow pb-0 h-100"> -->
<!-- 				Overlay item -->
<!-- 				<div class="position-relative"> -->
<!-- 					Image -->
<!-- 					<img src="https://cdn.visitkorea.or.kr/kfes/upload/contents/db/300_499a3c99-ddc1-4514-a709-c2be0c6f26bd_1.jpg" class="card-img-top" alt="Card image"> -->
<!-- 					Overlay -->
<!-- 					<div class="card-img-overlay d-flex flex-column p-4 z-index-1"> -->
<!-- 						Card overlay top -->
<!-- 						<div> -->
							
<!-- 							<span class="badge text-bg-dark">개최중</span> -->
<!-- 						</div> -->
<!-- 						Card overlay bottom -->
						
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 				Image -->
			
<!-- 				Card body START -->
<!-- 				<div class="card-body px-3"> -->
<!-- 					Title -->
<!-- 					<h5 class="card-title mb-0"><a href="" class="stretched-link">피노키오&어린왕자 별빛축제</a></h5> -->
<!-- 					<span class="small"><i class="far fa-calendar-alt me-2"></i>2023.12.01~2024.02.29</span> -->
			
					
<!-- 				</div> -->
<!-- 				Card body END -->
			
<!-- 				Card footer START -->
<!-- 				<div class="card-footer pt-0"> -->
<!-- 					Price and Button -->
<!-- 					<div class="d-sm-flex justify-content-sm-between align-items-center flex-wrap"> -->
<!-- 						Price -->
<!-- 						<div class="hstack gap-2"> -->
<!-- 							<h6 class="mb-0 fs-5">경기도 가평군</h6> -->
<!-- 						</div> -->
						
<!-- 						Button -->
<!-- 						<div class="mt-2 mt-sm-0"> -->
<!-- 							<a href="#" class="btn btn-sm btn-dark mb-0">더보기</a> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 				</div> -->

</div>

<!-- Card item END -->



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
Tour grid END -->




<jsp:include page="/WEB-INF/views/common/footer.jsp"/>

<script type="text/javascript">
	function movePage(page){
		cultureTheme3Search.page.value = page;
		cultureTheme3Search.submit();
	}
</script>