<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>

<head>
	<title>Booking - Multipurpose Online Booking Theme</title>

	<!-- Meta Tags -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="author" content="Webestica.com">
	<meta name="description" content="Booking - Multipurpose Online Booking Theme">

	<!-- Dark mode -->
	

	<!-- Favicon -->
	<link rel="shortcut icon" href="assets/images/favicon.ico">

	<!-- Google Font -->
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500;700&family=Poppins:wght@400;500;700&display=swap">

	<!-- Plugins CSS -->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/all.min.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/bootstrap-icons.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vender/aos/aos.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/flatpickr.min.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/choices.min.css">

	<!-- Theme CSS -->
	<link rel="stylesheet" type="text/css" href="assets/css/style.css">

</head>
<jsp:include page="/WEB-INF/views/common/cultureheader.jsp">
<jsp:param value="문화시설 상세" name="title"/>
</jsp:include>


<body class="dashboard">


<!-- **************** MAIN CONTENT START **************** -->
<main>
	
<!-- =======================
Content START -->
<section class="pt-3">
	<div class="container">
		<div class="row">

			<!-- Sidebar START -->
			<div class="col-lg-4 col-xl-3">
				<!-- Responsive offcanvas body START -->
				<div class="offcanvas-lg offcanvas-end" tabindex="-1" id="offcanvasSidebar" >
					<!-- Offcanvas header -->
					<div class="offcanvas-header justify-content-end pb-2">
						<button  type="button" class="btn-close" data-bs-dismiss="offcanvas" data-bs-target="#offcanvasSidebar" aria-label="Close"></button>
					</div>

					<!-- Offcanvas body -->
					<div class="offcanvas-body p-3 p-lg-0">
						<div class="card bg-light w-100">

							<!-- Edit profile button -->
							<div class="position-absolute top-0 end-0 p-3">
								<a href="#" class="text-primary-hover" data-bs-toggle="tooltip" data-bs-title="Edit profile">
									<i class="bi bi-pencil-square"></i>
								</a>
							</div>

							<!-- Card body START -->
							<div class="card-body p-3">
								<!-- Avatar and content -->
								<div class="text-center mb-3">
									<!-- Avatar -->
									<div class="avatar avatar-xl mb-2">
										<img class="avatar-img rounded-circle border border-2 border-white" src="assets/images/avatar/01.jpg" alt="">
									</div>
									<h6 class="mb-0">홍길동</h6>
									<a href="#" class="text-reset text-primary-hover small">hello@gmail.com</a>
									<hr>
								</div>

								<!-- Sidebar menu item START -->
								<ul class="nav nav-pills-primary-soft flex-column">
									<li class="nav-item">
										<a class="nav-link" href="account-profile.html"><i class="bi bi-person fa-fw me-2"></i>내 정보</a>
									</li>
								
									<li class="nav-item">
										<a class="nav-link active" href="account-wishlist.html"><i class="bi bi-heart fa-fw me-2"></i>북마크 목록</a>
									</li>
									<li class="nav-item">
										<a class="nav-link" href="${path}/member/ViewReviewList"><i class="bi bi-book fa-fw me-2"></i>리뷰 목록</a>
									</li>
									<li class="nav-item">
										<a class="nav-link" href="account-settings.html"><i class="bi bi-gear fa-fw me-2"></i>설정</a>
									</li>
									<li class="nav-item">
										<a class="nav-link" href="account-delete.html"><i class="bi bi-trash fa-fw me-2"></i>회원 탈퇴</a>
									</li>
									<li class="nav-item">
										<a class="nav-link text-danger bg-danger-soft-hover" href="${path}/logout"><i class="fas fa-sign-out-alt fa-fw me-2"></i>로그아웃</a>
									</li>
								</ul>
								<!-- Sidebar menu item END -->
							</div>
							<!-- Card body END -->
						</div>
					</div>
				</div>	
				<!-- Responsive offcanvas body END -->	
			</div>
			<!-- Sidebar END -->

			<!-- Main content START -->
			<div class="col-lg-8 col-xl-9">

				<!-- Offcanvas menu button -->
				<div class="d-grid mb-0 d-lg-none w-100">
					<button class="btn btn-primary mb-4" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasSidebar" aria-controls="offcanvasSidebar">
						<i class="fas fa-sliders-h"></i> Menu
					</button>
				</div>

				<!-- Wishlist START -->
				
				<div class="card border bg-transparent">
					<!-- Card header -->
					<div class="card-header bg-transparent border-bottom">
						<h4 class="card-header-title">북마크 목록</h4>
					</div>

					<!-- Card body START -->
					
					<div class="card-body vstack gap-4">
						<!-- Select and button -->
						
							<div class="col-6 col-xl-3">
								<select class="form-select form-select-sm js-choice border-0">
									<option value="">Sort by</option>
									<option>Recently search</option>
									<option>Most popular</option>
									<option>Top rated</option>
								</select>
								
							</div>
							<!-- Button -->
							<button class="btn btn-danger-soft mb-0" style="margin-left: 600px; width: 200px;"><i class="fas fa-trash me-2"></i>모두 삭제</button>
							
						

						<!-- Wishlist item START -->
						
						<div class="card shadow p-2">
						<form class="" action="${path}/member/viewWishList" method="post">
							<div class="row g-0">
								<!-- Card img -->
								
								<c:forEach var="item" items="${culture}">
								<div class="col-md-3">
									<img src="${item.image0}" class="card-img rounded-2" alt="Card image">
								</div>
	
								<!-- Card body -->
								<div class="col-md-9">
									<div class="card-body py-md-2 d-flex flex-column h-100">
	
										<!-- Rating and buttons -->
										<div class="d-flex justify-content-between align-items-center">
											<ul class="list-inline small mb-0">
												<li class="list-inline-item me-0"><i class="fa-solid fa-star text-warning"></i></li>
												<li class="list-inline-item me-0"><i class="fa-solid fa-star text-warning"></i></li>
												<li class="list-inline-item me-0"><i class="fa-solid fa-star text-warning"></i></li>
												<li class="list-inline-item me-0"><i class="fa-solid fa-star text-warning"></i></li>
												<li class="list-inline-item"><i class="fa-solid fa-star-half-alt text-warning"></i></li>
											</ul>
	
											<ul class="list-inline mb-0">
												<!-- Heart icon -->
												<li class="list-inline-item">
													<a href="#" class="btn btn-sm btn-round btn-danger mb-0"><i class="fa-solid fa-fw fa-heart"></i></a>
												</li>
												<!-- Share icon -->
												<li class="list-inline-item dropdown">
													<!-- Share button -->
													<a href="#" class="btn btn-sm btn-round btn-light mb-0" role="button" id="dropdownShare2" data-bs-toggle="dropdown" aria-expanded="false">
														<i class="fa-solid fa-fw fa-share-alt"></i>
													</a>
													<!-- dropdown button -->
													<ul class="dropdown-menu dropdown-menu-end min-w-auto shadow rounded" aria-labelledby="dropdownShare2">
														<li><a class="dropdown-item" href="#"><i class="fab fa-twitter-square me-2"></i>Twitter</a></li>
														<li><a class="dropdown-item" href="#"><i class="fab fa-facebook-square me-2"></i>Facebook</a></li>
														<li><a class="dropdown-item" href="#"><i class="fab fa-linkedin me-2"></i>LinkedIn</a></li>
														<li><a class="dropdown-item" href="#"><i class="fa-solid fa-copy me-2"></i>Copy link</a></li>
													</ul>
												</li>
											</ul>
										</div>
	
										<!-- Title -->
										<h5 class="card-title mb-1"><a href="${path}/culture/detail?contentid=${item.contentid}">${item.title}</a></h5>
										<small><i class="bi bi-geo-alt me-2"></i>${item.addr1}</small>
									
									</div>
								</div>
								
								</c:forEach>
								<br>
							</div>
							</form>
						</div>
						
						
					</div>
					<!-- Card body END -->
				</div>
				
				<!-- Wishlist END -->
				
			</div>
			<!-- Main content END -->
		</div>
	</div>
</section>
<!-- =======================
Content END -->

</main>
<!-- **************** MAIN CONTENT END **************** -->

<jsp:include page="/WEB-INF/views/common/footer.jsp"/>

<!-- Back to top -->
<div class="back-top"></div>

<!-- Bootstrap JS -->
<script src="assets/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>

<!-- Vendors -->
<script src="assets/vendor/aos/aos.js"></script>
<script src="assets/vendor/flatpickr/js/flatpickr.min.js"></script>
<script src="assets/vendor/choices/js/choices.min.js"></script>

<!-- ThemeFunctions -->
<script src="assets/js/functions.js"></script>





</body>


<script type="text/javascript">





</script>






</html>