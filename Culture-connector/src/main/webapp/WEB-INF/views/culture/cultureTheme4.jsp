<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<jsp:include page="/WEB-INF/views/common/cultureheader.jsp">
	<jsp:param value="Culture Connector" name="title"/>
</jsp:include>


<section class="d-flex align-items-center dark-overlay bg-cover" style="background-image: url(https://img.olympics.com/images/image/private/t_social_share_thumb/f_auto/primary/ecuirhxonzxcavchxpla); background-size: cover; background-position: center;">
	<div class="container py-6 py-lg-7 text-white overlay-content text-left ml-lg-0 ml-md-0 ml-0"> 
		<div class="row">
			<div class="col-xl-10 mx-auto">
				<h2 class="text-uppercase fs-1 mt-8" style="color: rgb(7, 41, 194); position: relative; top: -50px;"><span>액티비티 / 원데이 클래스</span> <br> </h2>
				<h5 class="text-white" style="position: relative; top: -30px;">친구와 가족들과 함께 즐기는 활동</h5>
			</div>
		</div>
	</div>
</section>




<div class="container">

  <!-- Search START -->
<!-- Booking from START -->
<form class="bg-mode shadow rounded-3 p-4">
<div class="row g-4 align-items-center">
	<!-- 셀렉트 + 검색창-->
	<div class="col-xl-10">
		<div class="row g-4">
			<!-- Location -->
			<!-- ... (이전 내용 유지) ... -->

			<!-- Search Bar -->
			<div class="col-md-12 col-lg-12">
				<label class="h6 fw-normal mb-0"><i class="bi bi-search text-primary me-1"></i>액티비티/원데이클래스</label>
				<div class="form-border-bottom form-control-transparent form-fs-lg mt-2">
					<!-- Input field -->
					<input type="text" class="form-control" placeholder="활동명을 입력해보세요 ex)스키,도자기">
				</div>
			</div>

  

		</div>
	</div>

	<!-- Button -->
	<div class="col-xl-2">
		<div class="d-grid">
			<a href="#" class="btn btn-lg btn-dark mb-0">검색</a>
		</div>
	</div>
</div>

<div class="container mx-4 mt-n1">
<div class="filter-block">
	<h6 class="mb-3"></h6>
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
</form>





</div>

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
			<h3 class="mb-0 fs-4">문화커넥터 <span style="color: rgb(67, 67, 185);">PICK</span>!</h3>


		</div>
	</div>

	<div class="row g-4">
		<!-- Hotel item -->
		<div class="col-sm-6 col-xl-3">
			<!-- Card START -->
			<div class="card card-img-scale overflow-hidden bg-transparent">
				<!-- Image and overlay -->
				<div class="card-img-scale-wrapper rounded-3">
					<!-- Image -->
					<img src="http://tong.visitkorea.or.kr/cms/resource/19/2987119_image2_1.jpg" class="card-img" alt="hotel image">
					<!-- Badge -->
					<div class="position-absolute bottom-0 start-0 p-3">
						<div class="badge text-bg-dark fs-6 rounded-pill stretched-link"><i class="bi bi-geo-alt me-2"></i>강원도</div>
					</div>
				</div>

				<!-- Card body -->
				<div class="card-body px-2">
					<!-- Title -->
					<h5 class="card-title"><a href="culture-theme2-detail.html" class="stretched-link">강원 동계청소년 올림픽 대회</a></h5>
					<!-- 기간 -->
					<div class="d-flex justify-content-between align-items-center">
						<h6 class="text-success mb-0">2024.01.19~02.01</h6>  
					</div>
				</div>
			</div>
			<!-- Card END -->
		</div>

		<!-- Hotel item -->
		<div class="col-sm-6 col-xl-3">
			<!-- Card START -->
			<div class="card card-img-scale overflow-hidden bg-transparent">
				<!-- Image and overlay -->
				<div class="card-img-scale-wrapper rounded-3">
					<!-- Image -->
					<img src="http://tong.visitkorea.or.kr/cms/resource/57/3062257_image2_1.jpg" class="card-img" alt="hotel image">
					<!-- Badge -->
					<div class="position-absolute bottom-0 start-0 p-3">
						<div class="badge text-bg-dark fs-6 rounded-pill stretched-link"><i class="bi bi-geo-alt me-2"></i>인천</div>
					</div>
				</div>

				<!-- Card body -->
				<div class="card-body px-2">
					<!-- Title -->
					<h5 class="card-title"><a href="culture-theme2-detail.html" class="stretched-link">만수천 빛의 거리</a></h5>
					<!-- 기간 -->
					<div class="d-flex justify-content-between align-items-center">
						<h6 class="text-success mb-0">2023.12.08~2024.01.31</h6>  
					</div>
				</div>
			</div>
			<!-- Card END -->
		</div>

		<!-- Hotel item -->
		<div class="col-sm-6 col-xl-3">
			<!-- Card START -->
			<div class="card card-img-scale overflow-hidden bg-transparent">
				<!-- Image and overlay -->
				<div class="card-img-scale-wrapper rounded-3">
					<!-- Image -->
					<img src="http://tong.visitkorea.or.kr/cms/resource/86/3054486_image2_1.png" class="card-img" alt="hotel image">
					<!-- Badge -->
					<div class="position-absolute bottom-0 start-0 p-3">
						<div class="badge text-bg-dark fs-6 rounded-pill stretched-link"><i class="bi bi-geo-alt me-2"></i>영동</div>
					</div>
				</div>

				<!-- Card body -->
				<div class="card-body px-2">
					<!-- Title -->
					<h5 class="card-title"><a href="culture-theme2-detail.html" class="stretched-link">영동 곶감 축제</a></h5>
					<!-- 기간 -->
					<div class="d-flex justify-content-between align-items-center">
						<h6 class="text-success mb-0">2024.1.19~1.21</h6>  
						
					</div>
				</div>
			</div>
			<!-- Card END -->
		</div>

		<!-- Hotel item -->
		<div class="col-sm-6 col-xl-3">
			<!-- Card START -->
			<div class="card card-img-scale overflow-hidden bg-transparent">
				<!-- Image and overlay -->
				<div class="card-img-scale-wrapper rounded-3">
					<!-- Image -->
					<img src="http://tong.visitkorea.or.kr/cms/resource/23/3047123_image2_1.jpg" class="card-img" alt="hotel image">
					<!-- Badge -->
					<div class="position-absolute bottom-0 start-0 p-3">
						<div class="badge text-bg-dark fs-6 rounded-pill stretched-link"><i class="bi bi-geo-alt me-2"></i>경상남도</div>
					</div>
				</div>

				<!-- Card body -->
				<div class="card-body px-2">
					<!-- Title -->
					<h5 class="card-title"><a href="culture-theme2-detail.html" class="stretched-link">씨파크 스노우 페스티벌</a></h5>
					<!-- 기간 -->
					<div class="d-flex justify-content-between align-items-center">
						<h6 class="text-success mb-0">2023.12.23~2024.02.28</h6>  
						
					</div>
				
				</div>
			</div>
			<!-- Card END -->
		</div>
	</div> <!-- Row END -->
</div>
</section>
<!-- =======================
Featured Hotels END -->



<!-- =======================
Tour grid START -->
<section class="pt-0">
<div class="container">

<!-- Filter and content START -->
<div class="row g-4 align-items-center justify-content-between mb-4">
<!-- Content -->
<div class="col-12 col-xl-6 order-xl-1">
	<h5 class="mb-0 text-primary">[전국] <span class="text-info">87</span>개의 축제가 검색되었습니다.</h5>
</div>

<!-- Select option -->
<div class="col-12 col-xl-2 order-xl-2 mt-3 mt-xl-0 ">
	<form class="form-control-bg-light">
		<select class="form-select js-choice">
			<option value="">최신순</option>
			<option>거리순</option>
			<option>인기순</option>
		</select>
	</form>
</div>
</div>

		

	<!-- Filter and content END -->

	<div class="row g-4">

		<!-- Card item START -->
		<div class="col-md-6 col-xl-4">
			<div class="card card-hover-shadow pb-0 h-100">
				<!-- Overlay item -->
				<div class="position-relative">
					<!-- Image -->
					<img src="http://tong.visitkorea.or.kr/cms/resource/04/2802404_image2_1.jpeg" class="card-img-top" alt="Card image">
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
					<h5 class="card-title mb-0"><a href="culture-theme2-detail.html" class="stretched-link">안성 동막골 빙어축제</a></h5>
					<span class="small"><i class="far fa-calendar-alt me-2"></i>2023.12.30~2024.02.12</span>

					
				</div>
				<!-- Card body END -->

				<!-- Card footer START-->
				<div class="card-footer pt-0">
					<!-- Price and Button -->
					<div class="d-sm-flex justify-content-sm-between align-items-center flex-wrap">
						<!-- Price -->
						<div class="hstack gap-2">
							<h6 class="mb-0 fs-5">경기도 안성시</h6>
						</div>
						
						<!-- Button -->
						<div class="mt-2 mt-sm-0">
							<a href="#" class="btn btn-sm btn-dark mb-0">더보기</a>
						</div>
					</div>
				</div>

			</div>
		</div>
		<!-- Card item END -->

		
		<!-- Card item START -->
		<div class="col-md-6 col-xl-4">
			<div class="card card-hover-shadow pb-0 h-100">
				<!-- Overlay item -->
				<div class="position-relative">
					<!-- Image -->
					<img src="http://tong.visitkorea.or.kr/cms/resource/27/2868127_image2_1.jpg" class="card-img-top" alt="Card image">
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
					<h5 class="card-title mb-0"><a href="" class="stretched-link">휴애리 동백축제</a></h5>
					<span class="small"><i class="far fa-calendar-alt me-2"></i>2023.11.14~2024.01.31</span>

					
				</div>
				<!-- Card body END -->

				<!-- Card footer START-->
				<div class="card-footer pt-0">
					<!-- Price and Button -->
					<div class="d-sm-flex justify-content-sm-between align-items-center flex-wrap">
						<!-- Price -->
						<div class="hstack gap-2">
							<h6 class="mb-0 fs-5">제주</h6>
						</div>
						
						<!-- Button -->
						<div class="mt-2 mt-sm-0">
							<a href="#" class="btn btn-sm btn-dark mb-0">더보기</a>
						</div>
					</div>
				</div>

			</div>
		</div>
		<!-- Card item END -->
<!-- Card item START -->
<div class="col-md-6 col-xl-4">
<div class="card card-hover-shadow pb-0 h-100">
	<!-- Overlay item -->
	<div class="position-relative">
		<!-- Image -->
		<img src="https://cdn.visitkorea.or.kr/kfes/upload/contents/db/300_62bbfc61-0c83-4108-be6b-304cc3d471bc_1.jpg" class="card-img-top" alt="Card image">
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
		<h5 class="card-title mb-0"><a href="" class="stretched-link">별빛이 흐르는 정원</a></h5>
		<span class="small"><i class="far fa-calendar-alt me-2"></i>2024.01.01~2024.12.31</span>

		
	</div>
	<!-- Card body END -->

	<!-- Card footer START-->
	<div class="card-footer pt-0">
		<!-- Price and Button -->
		<div class="d-sm-flex justify-content-sm-between align-items-center flex-wrap">
			<!-- Price -->
			<div class="hstack gap-2">
				<h6 class="mb-0 fs-5">경기도 파주</h6>
			</div>
			
			<!-- Button -->
			<div class="mt-2 mt-sm-0">
				<a href="#" class="btn btn-sm btn-dark mb-0">더보기</a>
			</div>
		</div>
	</div>

</div>
</div>
<!-- Card item END -->
<!-- Card item START -->
<div class="col-md-6 col-xl-4">
<div class="card card-hover-shadow pb-0 h-100">
	<!-- Overlay item -->
	<div class="position-relative">
		<!-- Image -->
		<img src="http://tong.visitkorea.or.kr/cms/resource/97/3035597_image2_1.jpg" class="card-img-top" alt="Card image">
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
		<h5 class="card-title mb-0"><a href="" class="stretched-link">광화문 광장마켓</a></h5>
		<span class="small"><i class="far fa-calendar-alt me-2"></i>2023.12.15~2024.01.21</span>

		
	</div>
	<!-- Card body END -->

	<!-- Card footer START-->
	<div class="card-footer pt-0">
		<!-- Price and Button -->
		<div class="d-sm-flex justify-content-sm-between align-items-center flex-wrap">
			<!-- Price -->
			<div class="hstack gap-2">
				<h6 class="mb-0 fs-5">서울 종로</h6>
			</div>
			
			<!-- Button -->
			<div class="mt-2 mt-sm-0">
				<a href="#" class="btn btn-sm btn-dark mb-0">더보기</a>
			</div>
		</div>
	</div>

</div>
</div>
<!-- Card item END -->
<!-- Card item START -->
<div class="col-md-6 col-xl-4">
<div class="card card-hover-shadow pb-0 h-100">
	<!-- Overlay item -->
	<div class="position-relative">
		<!-- Image -->
		<img src="https://cdn.visitkorea.or.kr/kfes/upload/contents/db/300_83e1c0ed-fc26-49df-9364-6bc7729d14b6_1.png" class="card-img-top" alt="Card image">
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
		<h5 class="card-title mb-0"><a href="" class="stretched-link">한국의 집 고호재</a></h5>
		<span class="small"><i class="far fa-calendar-alt me-2"></i>2023.12.12~2024.02.29</span>

		
	</div>
	<!-- Card body END -->

	<!-- Card footer START-->
	<div class="card-footer pt-0">
		<!-- Price and Button -->
		<div class="d-sm-flex justify-content-sm-between align-items-center flex-wrap">
			<!-- Price -->
			<div class="hstack gap-2">
				<h6 class="mb-0 fs-5">서울 중구</h6>
			</div>
			
			<!-- Button -->
			<div class="mt-2 mt-sm-0">
				<a href="#" class="btn btn-sm btn-dark mb-0">더보기</a>

			</div>
		</div>
	</div>

</div>
</div>
<!-- Card item END -->
<!-- Card item START -->
<div class="col-md-6 col-xl-4">
<div class="card card-hover-shadow pb-0 h-100">
	<!-- Overlay item -->
	<div class="position-relative">
		<!-- Image -->
		<img src="https://cdn.visitkorea.or.kr/kfes/upload/contents/db/300_499a3c99-ddc1-4514-a709-c2be0c6f26bd_1.jpg" class="card-img-top" alt="Card image">
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
		<h5 class="card-title mb-0"><a href="" class="stretched-link">피노키오&어린왕자 별빛축제</a></h5>
		<span class="small"><i class="far fa-calendar-alt me-2"></i>2023.12.01~2024.02.29</span>

		
	</div>
	<!-- Card body END -->

	<!-- Card footer START-->
	<div class="card-footer pt-0">
		<!-- Price and Button -->
		<div class="d-sm-flex justify-content-sm-between align-items-center flex-wrap">
			<!-- Price -->
			<div class="hstack gap-2">
				<h6 class="mb-0 fs-5">경기도 가평군</h6>
			</div>
			
			<!-- Button -->
			<div class="mt-2 mt-sm-0">
				<a href="#" class="btn btn-sm btn-dark mb-0">더보기</a>
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
Tour grid END -->





</div>
</section>

<jsp:include page="/WEB-INF/views/common/footer.jsp"/>