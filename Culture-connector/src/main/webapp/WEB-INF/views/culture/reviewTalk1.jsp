<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<jsp:include page="/WEB-INF/views/common/cultureheader.jsp">
	<jsp:param value="Culture Connector" name="title"/>
</jsp:include>

<!-- 배경 -->
<div class="rounded-3 p-4 p-sm-5" style="background-image: url(${pageContext.request.contextPath}/resources/images/grass.jpg); background-position: center center; background-repeat: no-repeat; background-size: cover; height: 400px; position: relative; overflow: hidden;">

	<!-- 배너 제목 -->
	<div class="row justify-content-between pt-0 pb-5"> 
		<div class="col-md-7 col-lg-8 col-xxl-7 pb-5 mb-0 mb-lg-5"> 
			<h1 class="text-black">Community</h1>
			
			<p class="text-black mb-0">여행을 계획 중이신가요? 최고의 목적지로 오세요!</p>
		</div>
	</div>

</div>

<!-- 배경 끝 -->

<!-- 검색창 시작-->
<div class="row mt-n7">
	<div class="col-9 mx-auto z-index-1 rounded-box" style="height: 100px;">
		<!-- <div class="bg-blur bg-white bg-opacity-10 border border-light border-opacity-0 rounded-3 p-4 mt-5"> -->
			<!-- Form START -->
			<form class="row g-3 justify-content-center align-items-center">
				<div class="col-2">
					<!-- Input -->
					<div class="form-input-dropdown position-relative">
						<input class="form-control form-control-lg me-1 ps-5" type="text" data-bs-toggle="dropdown" placeholder="제목" aria-expanded="false">
						<!-- dropdown button -->
						<ul class="dropdown-menu input-dropdown shadow rounded-0 rounded-bottom w-50" style="width: 50px;">
							<li><a class="dropdown-item" href="#"><i class="bi bi-book"></i>    제목</a></li>
							<li><a class="dropdown-item" href="#"><i class="bi bi-pencil"></i>   작성자</a></li>
							<li><a class="dropdown-item" href="#"><i class="bi bi-pencil-square"></i>   제목 + 글쓴이</a></li>
							
						</ul>
						<!-- Icon -->
						<span class="position-absolute top-50 start-0 translate-middle ps-5"><i class="bi bi-search fs-5"></i></span>
					</div>
				</div>

				<div class="col-8">
					<!-- Choices -->
					<div class="form-mix-icon-input form-size-lg">
						<input class="form-control" type="text" placeholder="검색해주세요" aria-label="default input example">
					</div>
				</div>

				<div class="col-2 d-grid">
					<!-- Search -->
					<a class="btn btn-lg btn-info mb-0" href="#">검색</a>
				</div>
			</form>
			<!-- Form END -->
		<!-- </div> -->
		
	</div>
</div>

<!-- 검색창 끝 -->

<!-- 인기 글 시작-->

<section>
	<div class="container">

		<!-- Title -->
		<div class="row mb-4">
			<div class="col-12">
				<h4 class="mb-0" style="text-align: center;">인기 리뷰</h4>
			</div>
		</div>

		<div class="row g-4">
			<!-- Card item -->
			<div class="col-4 col-lg-4 col-xl-4">
				<div class="card bg-success bg-opacity-10 h-100 p-4">
					<!-- Image -->
					<img src="${pageContext.request.contextPath}/resources/images/client/07.svg" class="w-75" alt="">
					<!-- Card body START -->
					<div class="card-body mt-2 p-0">
						<h3 class="mb-1" style="text-align: center;">독도</h3>
						<h5 class="fw-normal" style="text-align: center;">펄럭!</h5>

						<div class="d-flex justify-content-between align-items-center mt-4">
							 <a href="#" class="btn btn-lg btn-white btn-round mb-0"><i class="bi bi-arrow-right"></i></a>
						</div>
					</div>
					<!-- Card body END -->
				</div>
			</div>

			<!-- Card item -->
			<div class="col-4 col-lg-4 col-xl-4">
				<div class="card bg-danger bg-opacity-10 h-100 p-4">
					<!-- Image -->
					<img src="${pageContext.request.contextPath}/resources/images/client/08.svg" class="w-75" alt="">
					<!-- Card body START -->
					<div class="card-body mt-2 p-0">
					  <h3 class="mb-1" style="text-align: center;">롯데월드</h3>
						<h5 class="fw-normal" style="text-align: center;">놀이기구 무서워</h5>

						<div class="d-flex justify-content-between align-items-center mt-4">
							 <a href="#" class="btn btn-lg btn-white btn-round mb-0"><i class="bi bi-arrow-right"></i></a>
						</div>
					</div>
					<!-- Card body END -->
				</div>
			</div>

			<!-- Card item -->
			<div class="col-4 col-lg-4 col-xl-4">
				<div class="card bg-info bg-opacity-10 h-100 p-4">
					<!-- Image -->
					<img src="${pageContext.request.contextPath}/resources/images/client/09.svg" class="w-75" alt="">
					<!-- Card body START -->
					<div class="card-body mt-2 p-0">
					  <h3 class="mb-1" style="text-align: center;">북한산 정말 좋아!</h3>
						<h5 class="fw-normal" style="text-align: center;">여기 정말 좋음</h5>

						<div class="d-flex justify-content-between align-items-center mt-4">
							 <a href="#" class="btn btn-lg btn-white btn-round mb-0"><i class="bi bi-arrow-right"></i></a>
						</div>
					</div>
					<!-- Card body END -->
				</div>
			</div>
		</div>
	</div>
</section>


<!-- 인기 글 끝-->

<!-- 게시판 시작-->
<section>
<div class="container">
	<div class="row justify-content-center">
		<div class="mb-5 col-10">
		  
		  <div class="mb-3">
			  <table class="table table-hover">
				<h2 style="text-align: center;">전체 후기 게시판<br></h2>
				  <thead class="text-white">
					  <tr class="border-0 text-center">
						  <th class="center col-2">번호</th>
						  <th class="col-5">게시글 제목</th>
						  <th class="col-2">작성자</th>
						  <th class="col-1">사진</th>
						  <th class="col-1">조회수</th>
						  <th class="col-1">작성일</th>
					  </tr>
				  </thead>
				  <tbody class="text-sm">
					  <tr>
						  <td class="text-center">10</td>
						  <td class="">
							  <a href="#" class="fw-bold text-black text-decoration-none ">
								  마지막 게시글
							  </a>
						  </td>
						  <td class="text-center">홍길동</td>
						  <td class="text-center"></td>
						  <td class="">10</td>
						  <td class="">2024.01.09</td>
					  </tr>
					  <tr>
						  <td class="text-center">9</td>
						  <td>
							  <a href="#" class="fw-bold text-black text-decoration-none ">
								 파일에플 맛있지
							  </a>
						  </td>
						  <td class="text-center">파인애플</td>
						  <td class="text-center"><i class="bi bi-image"></i></td>
						  <td class="">10</td>
						  <td class="">2024.01.09</td>
					  </tr>
					  <tr>
						  <td class="text-center">8</td>
						  <td >
							  <a href="#" class="fw-bold text-black text-decoration-none ">
								  오랜만에 글 남깁니다...
							  </a>
						  </td>
						  <td class="text-center">세종대왕</td>
						  <td class="text-center"><i class="bi bi-image"></i></td>
						  <td class="">10</td>
						  <td class="">2024.01.09</td>
					  </tr>
					  <tr>
						  <td class="text-center">7</td>
	
						  <td class="fw-bold">
							  <a href="#" class="fw-bold text-black text-decoration-none ">
								  여행사 상품 가격 적당한지 봐주세요
							  </a>
						  </td>
						  <td class="text-center">장수풍뎅이</td>
						  <td class="text-center"></td>
						  <td class="">10</td>
						  <td class="">2024.01.09</td>
					  </tr>
					  <tr>
						  <td class="text-center">6</td>
	
						  <td class="fw-bold">
							  <a href="#" class="fw-bold text-black text-decoration-none ">
							  불국사 다녀왔습니다.
							  </a>
						  </td>
						  <td class="text-center">개똥벌레</td>
						  <td class="text-center"><i class="bi bi-image"></i></td>
						  <td class="">5</td>
						  <td class="">2024.01.09</td>
					  </tr>
					  <tr>
						  <td class="text-center">5</td>
	
						  <td class="fw-bold">
							  <a href="#" class="fw-bold text-black text-decoration-none ">
							  제주 한라산에서 한라봉 먹었습니다.
							  </a>
						  </td>
						  <td class="text-center">레츠고</td>
						  <td class="text-center"></td>
						  <td class="">17</td>
						  <td class="">2024.01.09</td>
					  </tr>
					  <tr>
						  <td class="text-center">4</td>
						  <td class="fw-bold">
							  <a href="#" class="fw-bold text-black text-decoration-none ">
							  북한산 좋습니다.
							  </a>
						  </td>
						  <td class="text-center">봉준호</td>
						  <td class="text-center"></td>
						  <td class="">7</td>
						  <td class="">2024.01.09</td>
					  </tr>
					  <tr>
						  <td class="text-center">3</td>
						  <td class="fw-bold">
							  <a href="#" class="fw-bold text-black text-decoration-none ">
							 여행지 소개합니다.
							  </a>
						  </td>
						  <td class="text-center">페이커</td>
						  <td class="text-center"><i class="bi bi-image"></i></td>
						  <td class="">10</td>
						  <td class="">2024.01.09</td>
					  </tr>
					  <tr>
						  <td class="text-center">2</td>
						  <td class="fw-bold">
							  <a href="#" class="fw-bold text-black text-decoration-none ">
							  날이 너무 추워졌어요 
							  </a>
						  </td>
						  <td class="text-center">손흥민</td>
						  <td class="text-center"></td>
						  <td class="">10</td>
						  <td class="">2024.01.09</td>
					  </tr>
					  <tr>
						  <td class="text-center">1</td>
						  <td class="fw-bold">
							  <a href="#" class="fw-bold text-black text-decoration-none ">
							  겨울엔 너무 추워
							  </a>
						  </td>
						  <td class="text-center">박재범</td>
						  <td class="text-center"><i class="bi bi-image"></i></td>
						  <td class="">12</td>
						  <td class="">2024.01.09</td>
					  </tr>
				  </tbody>
			  </table>
			  <div style="text-align: right;">
				<a href="./board-write.html"><button type="button" class="btn btn-success col-2">글쓰기</button></a>
			  </div>


			  <div class="row mx-9">
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
	</div>
</div>

<!-- 게시판 끝-->








</div>











<div class="relative-container col-10">
  <div class="relative-item">
	<img src="${pageContext.request.contextPath}/resources/images/paintColor.png" width="200">
  </div>
</div>


</section>



<jsp:include page="/WEB-INF/views/common/footer.jsp"/>