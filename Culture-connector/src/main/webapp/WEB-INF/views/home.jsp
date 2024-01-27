<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<jsp:include page="/WEB-INF/views/common/cultureheader.jsp">
	<jsp:param value="Culture Connector" name="title"/>
</jsp:include>

<!-- <!DOCTYPE html> -->
<!-- <html> -->
<!-- <head> -->
<!--     <meta charset="UTF-8"> -->
<!--     <meta http-equiv="X-UA-Compatible" content="IE=edge"> -->
<!--     <meta name="viewport" content="width=device-width, initial-scale=1.0"> -->
<!--  	<!-- Font Awesome --> 
<!--     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" integrity="sha512-nC2f8Zk5bN1GLtDKnSEajhAuJHBOhEvw3FkYx3ysOi5z1WxkK+AABf6T8r7z5Ua3FjNRl9Q+Or4eGbLSNc0bPg==" crossorigin="anonymous" /> -->

<!--     <title>메인 사이트</title> -->

<!--     부트스트랩 5 -->
<!--     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" -->
<!--           rel="stylesheet" -->
<!--           integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" -->
<!--           crossorigin="anonymous"> -->

<!-- <!-- Google Font --> 
<!-- <link rel="preconnect" href="https://fonts.googleapis.com" /> -->
<!-- <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin /> -->
<!-- <link -->
<!--   rel="stylesheet" -->
<!--   href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500;700&family=Poppins:wght@400;500;700&display=swap" -->
<!-- />	 -->
<!-- <!-- Bootstrap Icons --> 
<!-- <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.20.0/font/bootstrap-icons.css" /> -->

<!-- <!-- Tiny Slider --> 
<!-- <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/tiny-slider@2.9.3/dist/tiny-slider.css" /> -->

<!-- <!-- GLightbox -->
<!-- <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/glightbox@1.0.0/dist/css/glightbox.css" /> -->

<!-- <!-- Flatpickr -->
<!-- <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/flatpickr@4.6.6/dist/flatpickr.min.css" /> -->

<!-- <!-- Choices --> 
<!-- <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/choices@10.3.0/public/assets/styles/choices.min.css" /> -->

<!--     사용자 정의 CSS -->
<%--  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css"> --%>
 

<!-- <!-- Bootstrap CSS --> 
<!-- <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" integrity="sha384-rbs5vr9i87q4ys1q2ny46u1p7e3c9h5o1u8e4onq18ebL5uFi06e7Jk7b57lPtw" crossorigin="anonymous" /> -->

<!--     jQuery -->
<!--     <script src="https://code.jquery.com/jquery-3.6.4.min.js" -->
<!--             integrity="sha256-oP6HI/tZ1ZlR5nAMvVv1PZl+y6PZDsUeF7gW6C1/5aI=" -->
<!--             crossorigin="anonymous"></script> -->

<!--     부트스트랩 5 스크립트 -->
<!--     <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" -->
<!--             integrity="sha384-qZjSMU9PeqFbgLViGgjdtH4EFeF+/a09SJAgpbIxIEdDWE+rAyjUar5+76PVCmYl" -->
<!--             crossorigin="anonymous"></script> -->

<!--     지도 맵 링크 -->
<%--     <script src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script> --%>
<%-- 	<script src="${pageContext.request.contextPath}/resources/js/map-config.js"></script> --%>
<%-- 	<script src="${pageContext.request.contextPath}/resources/js/map-interact.js"></script> --%>
    
<%--     <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/map-style.css"> --%>
   
<%--      <script src="${pageContext.request.contextPath}/resources/js/functions.js"></script> --%>
     
 
    
<!-- </head> -->

<body>

<%-- <jsp:include page="/WEB-INF/views/common/header.jsp"> --%>
<%--     <jsp:param value="Spring 홈페이지" name="title"/> --%>
<%-- </jsp:include> --%>

<!-- carousel 시작 -->
<script src="https://code.jquery.com/jquery-3.6.4.slim.min.js"
        integrity="sha384-oP6HI/tZ1ZlR5nAMvVv1PZl+y6PZDsUeF7gW6C1/5aI="
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
        integrity="sha384-GLhlTQ8iK7JoZKwnfZ0t93LymZDScQl/Y3ozpb7l5FqFsjcK7Wgofn4g1j8bA8Li"
        crossorigin="anonymous"></script>
<!-- 부트스트랩 5 스크립트 -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-qZjSMU9PeqFbgLViGgjdtH4EFeF+/a09SJAgpbIxIEdDWE+rAyjUar5+76PVCmYl"
        crossorigin="anonymous"></script>

<!-- **************** 메인 헤더 시작 **************** -->
    <main>
    <div class="carousel-inner">
        <div class="carousel-item active c-item">
            <img src="${pageContext.request.contextPath}/resources/images/category/main/firework.jpg" class="d-block w-100 c-img">
            <div class="carousel-caption top-0 mt-4 left-align">
                <h2 class="text-uppercase fs-1 mt-7"><span style="color: rgb(238, 168, 180);">문화커넥터</span> <br> </h2>
                <h4 class="text-white">함께하는 문화여행</h4>
                <a href="#" class="btn btn-link text-light text-decoration-none fs-6 mt-5 d-block" style="font-weight: bold; border-bottom: solid transparent; transition: border-bottom 0.3s ease; text-align: left;">Culture Connector</a>
            </div>
          
		</div>
        </div>

    
<!--서치바-->
<div class="container">
  <form action="" method="GET">
    <div class="mx-auto search_ex mt-5 mb-3" style="font-family: 'SUIT-Medium'">
      <h4>
        <b></b>
      </h4>
    </div>
   
    <div class="mx-auto mt-5 search-bar input-group mb-3" style="font-family: 'SUIT-Medium'" id="search">
      <!-- Category Dropdown -->
      <div class="input-group-append">
        <select class="form-select rounded-pill" id="category" name="category">
          <option value="" selected>전체</option>
          <option value="culture">문화관광지</option>
          <option value="culture_theme">지역문화축제</option>
          <option value="activity_class">액티비티/원데이 클래스</option>
          <option value="food_tour">음식투어</option>
          <option value="culture_course">문화코스</option>
        </select>
      </div>
      
      <!-- Search Input -->
      <input onkeyup="filter()" id="searchinput" type="text" name="query" value="" class="form-control rounded-pill" placeholder="여행지를 입력하세요. ex)서울, 부산 등">
      
       <div class="input-group-append">
        <button type="submit" class="btn btn-primary">검색</button>
      </div>
         </div>
  </form>
      <!-- Region Checkboxes -->
      <div class="input-group-append">
        <div class="form-check form-check-inline">
          <input class="form-check-input" type="checkbox" id="seoul" name="region" value="seoul">
          <label class="form-check-label" for="seoul">서울</label>
        </div>
        <div class="form-check form-check-inline">
          <input class="form-check-input" type="checkbox" id="gyeonggi" name="region" value="gyeonggi">
          <label class="form-check-label" for="gyeonggi">경기</label>
        </div>
          <div class="form-check form-check-inline">
          <input class="form-check-input" type="checkbox" id="chungnam" name="region" value="chungnam">
          <label class="form-check-label" for="chungnam">충남</label>
        </div>
        <div class="form-check form-check-inline">
          <input class="form-check-input" type="checkbox" id="chungbuk" name="region" value="chungbuk">
          <label class="form-check-label" for="chungbuk">충북</label>
        </div>
        <div class="form-check form-check-inline">
          <input class="form-check-input" type="checkbox" id="gangwon" name="region" value="gangwon">
          <label class="form-check-label" for="gangwon">강원</label>
        </div>
        <div class="form-check form-check-inline">
          <input class="form-check-input" type="checkbox" id="jeonbuk" name="region" value="jeonbuk">
          <label class="form-check-label" for="jeonbuk">전북</label>
        </div>
        <div class="form-check form-check-inline">
          <input class="form-check-input" type="checkbox" id="jeonnam" name="region" value="jeonnam">
          <label class="form-check-label" for="jeonnam">전남</label>
        </div>
        <div class="form-check form-check-inline">
          <input class="form-check-input" type="checkbox" id="jeju" name="region" value="jeju">
          <label class="form-check-label" for="jeju">제주</label>
        </div>
      </div>
      
     
 
</div>




  <!--메인 스타트-->
      
      
      <!-- =======================
Packages START -->
<section class="pt-0 pt-md-5">
  <div class="container">
    <!-- Title -->
    <div class="row mb-4">
      <div class="col-12 text-center">
        <h3 class="mb-0">이번달 문화 테마 <span style="color: rgb(207, 107, 123);">BEST</span></h3>
      </div>
    </div>

    <div class="row g-4">
      <!-- Package item -->
      <div class="col-sm-6 col-xl-3">
        <!-- Card START -->
        <div class="card card-img-scale overflow-hidden bg-transparent">
          <div class="card-img-scale-wrapper rounded-3">
            <!-- Card Image -->
            <img
              src="${pageContext.request.contextPath}/resources/images/category/main/02.jpg"
              class="card-img"
              alt=""
            />
            <!-- Overlay -->
            <div
              class="card-img-overlay d-flex flex-column z-index-1 p-4"
            >
              <!-- Card overlay top -->
              <div class="d-flex justify-content-between">
                <span class="badge text-bg-dark">문화 관광지</span>
                <span class="badge text-bg-white"
                  ><i class="fa-solid fa-star text-warning me-2"></i
                  >Best</span
                >
              </div>
              <!-- Card overlay bottom -->
              <div class="w-100 mt-auto">
                <!-- Card category -->
                <span class="badge text-bg-white fs-6"
                  >#혼자여행</span
                >
              </div>
            </div>
          </div>

          <!-- Card body -->
          <div class="card-body px-2">
            <!-- Title -->
            <h5 class="card-title">
              <a href="${pageContext.request.contextPath}/culture/list" class="stretched-link"
                >경복궁</a
              >
            </h5>
            <!-- Content -->
            <div class="hstack gap-2">
              
              <small>서울</small>
            </div>
          </div>
        </div>
        <!-- Card END -->
      </div>

      <!-- Package item -->
      <div class="col-sm-6 col-xl-3">
        <!-- Card START -->
        <div class="card card-img-scale overflow-hidden bg-transparent">
          <div class="card-img-scale-wrapper rounded-3">
            <!-- Card Image -->
            <img
             	
              src="${pageContext.request.contextPath}/resources/images/category/main/04.jpg"
              class="card-img"
              alt=""
            />
            <!-- Overlay -->
            <div
              class="card-img-overlay d-flex flex-column z-index-1 p-4"
            >
              <!-- Card overlay top -->
              <div class="d-flex justify-content-between">
                <span class="badge text-bg-dark">문화 예술공연</span>
                <span class="badge text-bg-white"
                ><i class="fa-solid fa-star text-warning me-2"></i
                >Best</span
              >
              </div>
              <!-- Card overlay bottom -->
              <div class="w-100 mt-auto">
                <!-- Card category -->
                <span class="badge text-bg-white fs-6"
                  >#색다른 여행</span
                >
              </div>
            </div>
          </div>

          <!-- Card body -->
          <div class="card-body px-2">
            <!-- Title -->
            <h5 class="card-title">
             <a href="${pageContext.request.contextPath}/cultureTheme2" class="stretched-link"
                >부산 미디어 아트</a
              >
            </h5>
            <!-- Content -->
            <div class="hstack gap-2">
           
              <small>부산</small>
            </div>
          </div>
        </div>
        <!-- Card END -->
      </div>

      <!-- Package item -->
      <div class="col-sm-6 col-xl-3">
        <div class="card card-img-scale overflow-hidden bg-transparent">
          <div class="card-img-scale-wrapper rounded-3">
            <!-- Card Image -->
            <img
              src="${pageContext.request.contextPath}/resources/images/category/main/03.jpg"
              class="card-img"
              alt=""
            />
            <!-- Overlay -->
            <div
              class="card-img-overlay d-flex flex-column z-index-1 p-4"
            >
              <!-- Card overlay top -->
              <div class="d-flex justify-content-between">
                <span class="badge text-bg-dark">지역문화 축제</span>
                <span class="badge text-bg-white"
                ><i class="fa-solid fa-star text-warning me-2"></i
                >Best</span
              >
              </div>
              <!-- Card overlay bottom -->
              <div class="w-100 mt-auto">
                <!-- Card category -->
                <span class="badge text-bg-white fs-6"
                  >#가족여행</span
                >
              </div>
            </div>
          </div>

          <!-- Card body -->
          <div class="card-body px-2">
            <!-- Title -->
            <h5 class="card-title">
              <a href="${pageContext.request.contextPath}/cultureTheme3" class="stretched-link"
                >화천 산천어 축제</a
              >
            </h5>
            <!-- Content -->
            <div class="hstack gap-2">
            
              <small>강원도 북천</small>
            </div>
          </div>
        </div>
      </div>

      <!-- Package item -->
      <div class="col-sm-6 col-xl-3">
        <div class="card card-img-scale overflow-hidden bg-transparent">
          <div class="card-img-scale-wrapper rounded-3">
            <!-- Card Image -->
            <img
              src="${pageContext.request.contextPath}/resources/images/category/main/05.jpg"
              class="card-img"
              alt=""
            />
            <!-- Overlay -->
            <div
              class="card-img-overlay d-flex flex-column z-index-1 p-4"
            >
              <!-- Card overlay top -->
              <div class="d-flex justify-content-between">
                <span class="badge text-bg-dark">원데이 클래스</span>
                <span class="badge text-bg-white"
                  ><i class="fa-solid fa-star text-warning me-2"></i
                  >Best</span
                >
              </div>
              <!-- Card overlay bottom -->
              <div class="w-100 mt-auto">
                <!-- Card category -->
                <span class="badge text-bg-white fs-6"
                  >#친구와 함께</span
                >
              </div>
            </div>
          </div>

          <!-- Card body -->
          <div class="card-body px-2">
            <!-- Title -->
            <h5 class="card-title">
                   <a href="${pageContext.request.contextPath}/leports/list" class="stretched-link"
                >원데이 클래스</a
              >
            </h5>
            <!-- Content -->
            <div class="hstack gap-2">
             
              <small>경기도</small>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- Row END -->
    
  </div>
  
</section>
<!-- =======================
Packages END -->


      <!-- =====문화여행코스 시작(문화소식->문화코스)==-->
      <section class="mt-0 pt-md-0">
  <div class="container">
    <div class="row g-4 g-lg-5 align-items-center">
      <div class="col-lg-4">
        <!-- Title -->
        <h2 class="mb-0">오늘의 <span style="color: rgb(12, 119, 146);">문화여행</span> <br> 코스는?</h2>

        <div
          class="d-sm-flex justify-content-sm-between align-items-center mt-4"
        >
        
          <!-- Rating -->
          <h5 class="m-0">
            <i class="fa-solid fa-star text-warning me-2"></i>1600명이 추천하였습니다
          </h5>
        </div>

        
      </div>

      <div class="col-lg-8">
        <div class="row">
          <div class="col-md-6">
            <!-- Card item -->
            <div
              class="card  overflow-hidden"
            >
               <!-- Image -->
              <img
                src="http://tong.visitkorea.or.kr/cms/resource/04/2684004_image2_1.jpg"
                class="rounded-3"
                alt=""
              />
              <!-- Full screen button -->
              <a
                class="hover-element position-absolute w-100 h-100"
                data-glightbox
                data-gallery="gallery"
                href="${pageContext.request.contextPath}/course/list"
              >
              
                 
                </span>
              </a>
              <!-- Button -->
          <a href="${pageContext.request.contextPath}/course/list" class="btn btn-lg btn-primary-soft mb-0 mt-4"
          >여행코스 보러가기 <i class="bi fa-fw bi-arrow-right ms-2"></i
        ></a>
            </div>
         
 
           

               
          </div>

          <div class="col-md-6">
            <!-- Card item -->
            <div
              class="card card-element-hover card-overlay-hover overflow-hidden mb-4"
            >
              <!-- Image -->
              <img
                src="${pageContext.request.contextPath}/resources/images/category/main/09.jpg"
                class="rounded-3"
                alt=""
              />
              <!-- Full screen button -->
              <a
                class="hover-element position-absolute w-100 h-100"
                data-glightbox
                data-gallery="gallery"
                href="https://youtu.be/wsX3ehK1l2c?si=WgbDezFrbi-9qSUG"
              >
                <span
                  class="btn text-danger btn-round btn-white position-absolute top-50 start-50 translate-middle mb-0"
                >
                  <i class="fas fa-play"></i>
                </span>
              </a>
            </div>
         
          </div>
        </div>
        <!-- Row END -->
      </div>
    </div>
    <!-- Row END -->
  </div>
</section>
<!-- =======================
Stories END-->

<!-- ============문화커넥터 액티비티 더보기 바=========== -->
<section class="py-0 mb-4" >
  <div class="container position-relative">
    <div class="bg-light rounded-3 position-relative p-4 p-sm-5">
      <!-- Svg decoration -->
      <figure
        class="position-absolute top-50 start-50 d-none d-lg-block mt-n4 ms-9"
      >
        <svg class="fill-primary" width="138px" height="33px">
          <path
            d="M105.158,32.490 L107.645,20.515 L101.600,21.873 L108.218,14.263 L110.496,2.974 L137.327,32.728 L105.158,32.490 ZM97.722,13.092 C96.678,12.477 95.604,11.881 94.529,11.319 L94.235,11.166 L94.543,10.576 L94.837,10.730 C95.922,11.296 97.006,11.898 98.060,12.519 L98.346,12.687 L98.009,13.260 L97.722,13.092 ZM91.250,9.714 C90.131,9.202 89.001,8.723 87.890,8.290 L87.581,8.170 L87.822,7.550 L88.132,7.671 C89.254,8.108 90.396,8.592 91.527,9.109 L91.829,9.247 L91.553,9.852 L91.250,9.714 ZM84.453,7.073 C83.279,6.699 82.117,6.374 80.943,6.092 L80.620,6.014 L80.776,5.368 L81.099,5.445 C82.287,5.730 83.465,6.060 84.655,6.439 L84.971,6.539 L84.770,7.173 L84.453,7.073 ZM77.372,5.388 C76.150,5.201 74.933,5.073 73.757,5.007 L73.425,4.988 L73.462,4.324 L73.794,4.343 C74.992,4.409 76.230,4.540 77.473,4.730 L77.802,4.781 L77.701,5.438 L77.372,5.388 ZM66.526,5.421 L66.199,5.480 L66.080,4.826 L66.407,4.766 C67.599,4.550 68.838,4.405 70.090,4.336 L70.422,4.318 L70.458,4.982 L70.126,5.000 C68.902,5.068 67.690,5.209 66.526,5.421 ZM59.574,7.498 L59.267,7.625 L59.014,7.010 L59.321,6.883 C60.448,6.418 61.621,6.003 62.809,5.646 L63.128,5.551 L63.318,6.188 L63.000,6.283 C61.833,6.633 60.681,7.042 59.574,7.498 ZM59.311,8.479 C60.126,9.473 60.795,10.540 61.300,11.649 L61.438,11.952 L60.833,12.228 L60.695,11.925 C60.214,10.868 59.575,9.851 58.797,8.901 L58.586,8.644 L59.100,8.222 L59.311,8.479 ZM54.714,31.225 L54.415,31.370 L54.126,30.771 L54.425,30.626 C55.435,30.137 56.398,29.436 57.287,28.542 L57.522,28.306 L57.993,28.775 L57.759,29.011 C56.816,29.959 55.792,30.703 54.714,31.225 ZM56.229,6.392 C55.322,5.672 54.309,5.004 53.218,4.408 L52.926,4.248 L53.245,3.665 L53.537,3.824 C54.662,4.439 55.706,5.128 56.643,5.871 L56.903,6.078 L56.489,6.599 L56.229,6.392 ZM56.268,8.312 L56.584,8.897 L56.292,9.055 C55.219,9.636 54.178,10.276 53.199,10.957 L52.926,11.147 L52.546,10.601 L52.819,10.411 C53.819,9.715 54.881,9.063 55.976,8.470 L56.268,8.312 ZM51.033,32.098 C50.331,32.098 49.622,32.004 48.925,31.819 C48.925,31.819 48.924,31.819 48.923,31.818 C48.397,31.678 47.868,31.483 47.351,31.238 L47.051,31.096 L47.336,30.495 L47.636,30.637 C48.117,30.865 48.608,31.046 49.095,31.176 C49.096,31.176 49.096,31.176 49.097,31.176 C49.737,31.347 50.389,31.433 51.034,31.433 L51.366,31.433 L51.366,32.098 L51.033,32.098 ZM47.808,15.784 L47.592,16.037 L47.087,15.605 L47.303,15.352 C48.086,14.437 48.962,13.546 49.905,12.704 L50.154,12.483 L50.596,12.979 L50.348,13.200 C49.426,14.022 48.572,14.892 47.808,15.784 ZM49.926,2.908 C48.822,2.493 47.656,2.136 46.459,1.846 L46.136,1.768 L46.293,1.121 L46.616,1.200 C47.836,1.495 49.031,1.861 50.160,2.285 L50.471,2.402 L50.237,3.024 L49.926,2.908 ZM44.153,21.953 L44.048,22.268 L43.418,22.058 L43.523,21.742 C43.892,20.634 44.428,19.496 45.115,18.362 L45.287,18.077 L45.856,18.421 L45.683,18.706 C45.022,19.798 44.507,20.891 44.153,21.953 ZM42.888,1.188 C41.701,1.034 40.482,0.940 39.265,0.907 L38.933,0.898 L38.951,0.233 L39.283,0.242 C40.523,0.275 41.764,0.372 42.974,0.528 L43.303,0.571 L43.218,1.230 L42.888,1.188 ZM32.021,1.426 L31.694,1.482 L31.582,0.827 L31.910,0.770 C33.121,0.564 34.357,0.414 35.583,0.326 L35.915,0.302 L35.962,0.965 L35.630,0.989 C34.426,1.076 33.212,1.223 32.021,1.426 ZM25.072,3.458 L24.766,3.588 L24.506,2.976 L24.812,2.845 C25.949,2.362 27.122,1.942 28.300,1.598 L28.619,1.505 L28.805,2.143 L28.485,2.237 C27.333,2.573 26.185,2.984 25.072,3.458 ZM18.761,7.025 L18.490,7.219 L18.103,6.679 L18.374,6.485 C19.387,5.759 20.435,5.087 21.492,4.488 L21.781,4.324 L22.108,4.902 L21.819,5.067 C20.783,5.654 19.754,6.313 18.761,7.025 ZM13.280,11.802 L13.050,12.042 L12.570,11.581 L12.801,11.341 C13.668,10.439 14.568,9.579 15.475,8.786 L15.725,8.567 L16.163,9.067 L15.913,9.286 C15.020,10.067 14.134,10.913 13.280,11.802 ZM8.648,17.428 L8.455,17.699 L7.914,17.314 L8.106,17.043 C8.831,16.023 9.585,15.035 10.349,14.106 L10.560,13.849 L11.073,14.271 L10.862,14.528 C10.109,15.445 9.364,16.420 8.648,17.428 ZM4.796,23.630 L4.637,23.922 L4.053,23.605 L4.212,23.313 C4.803,22.223 5.426,21.149 6.064,20.120 L6.240,19.837 L6.805,20.187 L6.629,20.470 C5.998,21.488 5.381,22.551 4.796,23.630 ZM1.658,30.231 L1.532,30.539 L0.917,30.286 L1.044,29.979 C1.508,28.850 2.011,27.714 2.539,26.603 L2.682,26.303 L3.282,26.588 L3.140,26.888 C2.617,27.989 2.118,29.113 1.658,30.231 ZM43.602,25.437 C43.661,26.716 44.055,27.783 44.772,28.607 L44.990,28.858 L44.488,29.295 L44.270,29.044 C43.452,28.104 43.004,26.901 42.937,25.468 L42.922,25.136 L43.586,25.104 L43.602,25.437 ZM60.942,22.425 L61.047,22.110 L61.678,22.319 L61.573,22.634 C61.175,23.834 60.657,24.979 60.033,26.037 L59.864,26.323 L59.291,25.986 L59.461,25.699 C60.061,24.681 60.559,23.580 60.942,22.425 ZM61.816,17.509 C61.836,16.777 61.795,16.048 61.694,15.341 L61.648,15.012 L62.306,14.918 L62.353,15.247 C62.458,15.991 62.502,16.758 62.480,17.527 C62.467,18.008 62.433,18.500 62.378,18.989 L62.341,19.319 L61.680,19.246 L61.717,18.915 C61.770,18.445 61.803,17.972 61.816,17.509 Z"
          />
        </svg>
      </figure>

      <div class="row align-items-center position-relative">
        <div class="col-lg-8" >
          <!-- Title -->
          <div class="d-flex">
            <h3>문화커넥터와 함께 떠나요!</h3>
            <img
              src="assets/images/element/04.svg"
              class="h-40px ms-3"
              alt=""
            />
          </div>
          <p class="mb-3 mb-lg-0">
         마음의 온도를 높이는 2024 겨울 액티비티 추천
          </p>
        </div>
        <!-- Content and input -->
        <div class="col-lg-4 text-lg-end">
          <a href="${pageContext.request.contextPath}/leports/list" class="btn btn-lg btn-dark mb-0"
            >액티비티 더보기</a
          >
        </div>
      </div>
      <!-- Row END -->
    </div>
  </div>
</section>


<!-- =======문화 여행 지도================ -->
<section class="pt-0 pt-lg-5" style="background-color: #d4ebf5; ">
  <div class="container">
    <div class="row g-4 align-items-center">
      <div class="col-lg-6">
        <!-- Title -->
        <h2>문화 여행지도</h2>
        <p>
          현재 위치를 기반으로 맛집, 카페 및 다양한 정보를 제공해 드려요
        </p>
      <!-- Button -->
<a href="${pageContext.request.contextPath}/clutureTourMap" class="btn btn-dark mb-4">더보기</a>

<!-- Services -->
<div class="row g-sm-4">
  <div class="col-sm-6">
    <ul class="list-group list-group-borderless mt-2 mb-0">
      <li class="list-group-item">
        <h5 class="fw-normal mb-0">
          <i class="fas fa-store fa-fw text-primary me-2"></i>편의점
        </h5>
      </li>

      <li class="list-group-item">
        <h5 class="fw-normal mb-0">
          <i class="fas fa-person-shelter fa-fw text-primary me-2"></i>카페
        </h5>
      </li>

      <li class="list-group-item">
        <h5 class="fw-normal mb-0">
          <i class="fas fa-utensils fa-fw text-primary me-2"></i>식당
        </h5>
      </li>
    </ul>
  </div>

  <div class="col-sm-6">
    <ul class="list-group list-group-borderless">
      <li class="list-group-item">
        <h5 class="fw-normal mb-0">
          <i class="fas fa-bolt fa-fw text-primary me-2"></i>주유소
        </h5>
      </li>

      <li class="list-group-item">
        <h5 class="fw-normal mb-0">
          <i class="fas fa-dumbbell fa-fw text-primary me-2"></i>체육관
        </h5>
      </li>

      <li class="list-group-item">
        <h5 class="fw-normal mb-0">
          <i class="fas fa-parking fa-fw text-primary me-2"></i>주차장
        </h5>
      </li>

      <li class="list-group-item">
        <h5 class="fw-normal mb-0">
          <i class="fas fa-ellipsis fa-fw text-primary me-2"></i>다른 서비스 등
        </h5>
      </li>
    </ul>
  </div>
</div>
      
      </div>
<!-- MAP SVG 부분-->
<div class="col-lg-5">
  <div class="bg-light rounded-5">
    <span id="krjstip"></span>
    <div id="mapwrapper" style="width: 80%; overflow: hidden;">
      <div id="mapbase"><!-- V4.1 -->
        <svg version="1.1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 660 1020" xml:space="preserve" width="100%" height="100%" preserveAspectRatio="xMidYMid slice">
          <!-- 여기에 SVG 내용이 들어갑니다. -->
                <g>
                  <path id="krjs1" fill="#EBECED" stroke="#FFFFFF" vector-effect="non-scaling-stroke" d="M599.75,651c-2.75,5.75-5.75,0-7.75,4s2.25,8.25-2.5,9.25s2,6.25-1.75,8.5s1.25,5.5-4.25,6.5s-4,8.75-9.75,6.5S565,687,568,690s-2,5.75-3.75,3.25s-4.5,2.75-5.5-0.25s-3.924-2.344-5,3.5c-1.75,9.5-7.25,1-6.5,5.75s-2.5,7.414-4.5,1.582s3-5.082,1-7.832s1.5-4.75-0.5-7.75s-5.5,8.75-9.25,8.5s0.75-5.5-2-5.5s0.246,4.909-12.75,5.5c-1-5.5,5.57-0.684,3.5-5.75s-3-0.75-5-4.75s5.5,0.75,5.25-3.25s7.5,3.75,5.5-7c-1.42-7.631,18.082-1,20.75-12c1.387-5.719,6.75,0.5,8-5s8.75-1.5,9.25-5.75s3.75-1.5,3.5-5.75s-0.25-5.5,4.75-3.25s4.75-1.25,7.25-4.5c4,4.25,8.5-4.25,11.75,0S590.5,648.5,599.75,651z M522.166,704.667c-9.334-4.333-6.5,5.833-3.5,9.109s3,2.391,3.5-2.109S525.522,706.225,522.166,704.667z M557.167,696.75c-5.5,2.25,4.833,9.583,7.166,8.416S560.726,695.294,557.167,696.75z"/>
                  <path id="krjs2" fill="#EBECED" stroke="#FFFFFF" vector-effect="non-scaling-stroke" d="M476,307.5c-10.834-1.167-2-3.667-8.666-6.5s-4.834,3.5-12.667,2.167s-1.833-6.333-9.333-9.333s-9.001,7.167-13.834,3.03s-1.5-7.196,3.5-9.53s2.833-7.333-3.333-4.833s-2.167-4.5-8.167-3s-4-8.333-11.166,0c-3.374,3.923-7.167-3.167-7.5,0.667s-4.334,5.167-10.5,7.167s-0.334-6-4.667-7s0.667-7.167-11.667-4.5c-12.09,2.614-0.166,13.167-6.5,16.833s-1-4-15.5,3.167c-7.35,3.633-11.167-2.667-12.5-13.833c-5.5,2,0,6-5.75,9.75s-2.25,9-7.75,5s-6-1-4.75,4s-8.5,4.75-9.25,11s-11-1-12,2.25s-5-4.221-7,0.39s1.5,4.86-2.75,7.86S284,322.5,286,327.5s-1.512,4.476-6.25,6.75c-9.375,4.5-5.625,7.875-10.75,10c5.75,6,0.25,8,5.75,9.25s-0.5,6.25,6.75,7.25s0.5,3,5,6.5s3.5,9-2.5,4.75s-4,4.199-8.25,4.85s0,9.15-6,11.65s-5.75,7-1,7S263,405.5,275,407s5.25,10,6.5,16.5c4.333,0.168,1.833-5.666,4.833-3.166s0.667,9.501,4.833,8.334s0.833,2.334,5.167,1s2.074-7.578,5.5-4.825c6.833,5.491,0.667,7.181,2.333,10.503s3.666-4.988,7.333,0s4.167,9.489,0,8.822s-1.167,6.834-5.167,9s-5.167,13.352-2.333,21.176c5,0.406,3.25-4.344,6.5-3.844s1.5,5.75,4.75,5.25s6.75,2.75,4.75,5.75s2.672,6.25,0.586,9.25s3.914,7.25,4.414,9.5s0.75,3.75,3.5,8s6.75-1.5,8.25,1.75s10.25,0.5,10.75,4.25s13.75-6.75,17,0c9-9.75,7.25,0,14.25-7c3.26-3.26-1.75-4-0.5-9.25s2.75-1,5.5-6.75s-5-8.75,0.5-12s4.5,4,9.25,1.5s-6.75-7-2.75-8.5s2.5-5.5-3-6.75s-3.25,3.75-8.25,4s-3.25-4-7.25-5.25s2.25-2.25-2.75-4.25s0.25,6.25-6,5.25s-5.75-10.25-0.25-12.75s3.75-6,0-11.25s6.25-2.5,1.5-5.904s2.5-3.096,1.799-9.846s2.201-2.25,2.701-7.25s-4.75-1.25-5-6.5s-4.25-1.5-8.75-4.75s-2-6.25,2.5-5.75s4.75-1.25,2.979-4.337S366,390,366.394,393.5s3.606-0.25,3.106,3.413s2.75,4.087,4.75,1.087s4-7.75-3.75-10.75s-3-3.25,1.75-2.75s3.5-1,3.5-3.945s-0.5-8.555,5.5-3.705s4.25-0.1,9.2,2.65s8.05-0.5,3.55-2.65s-4.5-6.6-1.25-10.35s1.25-7.75,5.75-4.25s4.25-7.25,12.75-3.4s9,1.65,8.5-2.85s3-1.25,2.861-4s3.389-3.75,5.389-1s7,2.5,7.5,7.85s2.75,5.9,5,1.9s1.25,6.75,6.25,0s4,6.5,11.25-7.75c3.336-6.557-3,1.25-4.5-7s5-4,6-9.25s6.25-2.5,7.75-7.481s4.5-2.769,9-6.019s-0.25-4.583,3.417-8.25s6.667,4.667,10.333-3.333C484,304.833,486.834,308.667,476,307.5z"/>
                  <path id="krjs3" fill="#EBECED" stroke="#FFFFFF" vector-effect="non-scaling-stroke" d="M200.834,508c-0.667-3.5-2,0.833-5.667,0.833s-3.5,4.333-8.667,4.5s-2.167,4.166-10.833,5s-8.667-1.334-8.167-5s-3.5-1.333-6-6.333s4.667-1.334,3.333-4.334s-6.667-0.832-8.333-5.666s-5.667-1.517-7-4.092s-7-0.742-7.333,1.425s-5,2.317-2.5-1.425s1-3.741,6.5-3.908s3.5-5.5,7-4s3.333,0,2.167-2.167s-7-0.333-8.333-5.833s6.333-9.833,4.667-11.833s3.167-2.5,2.333-4.667s-9.333,0.024-10.333-4.154s12.333-3.013,10.167-6.846s-7.167-0.166-10-3.333s-5.5-3.833-2.333-4.5s-3-3.834,3-4.334s3.5-4.499,8.5-5.166s0-3,3.333-3.167s1.167-2.834-2.667-2.667s-9,11.168-13.333,5.834s-5.167-8.667-1.167-11.334s3.833-5.138,0-4.985s-4.833-1.848-4-4.848s-2-6.166,3.167-7.5s3.333,2.166,6,1.333s-1.667-4.84-0.833-7.92s-5-2.247-4-5.08s4.5-0.501,5-2.667s-7.833-1.334-7.833-5s4.333-2.667,4-6s-5-6.333-6.167-2.166c-1.167,4.166-6-0.834-4.167,4.833s-2,12-4.667,12s-2.833,3.334-5.833,2.667s3.333-4.5,1.333-7.5s3.167-6.667,0-8.167s1.833-3.5-3-5s-3.28,9.322-6.5,9c-6.667-0.667,4.334,8.667,1.167,10.5s2.833,6,0.167,6.5s-5.167,6.5-6.5,2.5s2.333-4.667,1.833-7.667s-4.667-3.999-5.833-8.166s2.833-0.666,2-4.5s-5.619-3.667-5.976-0.167s-3.524,1.333-6.024,4s-9.667,0.666-7.667-4.167s7.333,1.167,10.167-1.333s-6.5-4.833-4.667-7.833s-1,0.166-4.167-1.5c-3.167-1.667-2.53,1.333-1.682,3.5c0.848,2.166-2.318,7.334-4.652,5s3.537-4.926,1-8.334c-5.333-7.166,4.167-4.667,4-8.5s2.667-4.5,2.833-0.833s6.333,5.499,4.333,2.333s-1.333-4,2-2.666c3.333,1.333,5.5-1.667,1.5-2.5c-4-0.834-8-1.001-4.333-3.834s1.666-5.666-0.667-6.333s-4.167-4.167,1.5-5.833c5.667-1.667,6.333,0.166,4.333,2.833s1.167,4.5,3.167,2.5s2.834,2,5.667-0.5s-3-7.333-0.667-10.167c2.333-2.833-2.667-6.832,2.333-8.5c5-1.666,0.749,10.077,3.5,12.667c5.667,5.333-5.167,7.667-2.667,12s-4.893,1.854-3,7.333c3.167,9.167,4.833-2.833,8.333,0.667s4.5,1.667,1.833-2.333s-2.833-8.667,0.167-8.167s-1.5,3.833,2.5,3.833s0.833-3.666,4.333-3.333s3-1.167-0.167-2.333c-3.167-1.167-2.333-3.167,1.167-3.167s4.833-4.501,3.5-5.667s4.666-0.463,1.333-3.814s-5.5,0.981-8.5-1.519s-6.5-3.667-4.667-5s4.167,1.667,6.167-0.333s-9.166-3.667-6.333-5.667s5.833,2.5,9.167,1s-4.333-3.167,1-3.5s11.333,1.833,7.167,4.333s-4.166,7.667-0.833,7.667s2.666-5,5.333,0.667c2.667,5.666-3.833,5.666-1.667,10.666s-1.833,9.5,2,9.334c3.833-0.167,4-7.834,3.333-10.5c-0.667-2.667,3.667-3.797,2.667-7.148s2.167-5.019,3-1.519s3.167,1.499,4.167,5.333s4.693,3.622,3.5,0.167c-3.167-9.167-8.167-9.5-9-12s-6.833-3-5.667-6s7.5,6.333,12,6.333s3.923-3.006-0.333-4.166c-7.333-2-2.833-9.001-6.667-10.334s-3.667-3.167,1.167-2.5s0.667,3.039,6.333,5.186c5.667,2.148,1.116,6.606,7,9.481c2.646,1.293,0.667,5,3.333,6.167c2.667,1.166-3.333,6.5,1.167,7.333s2.333-8.001,5.5-7.667s1-10.5,4.833-7s-0.667,7.167,3.833,8.667s1-7.833,7.5-5.833s1.757,5.272,3.667,6.166c4.667,2.186-4.667,7.334-1.833,9.167s3.833-6.333,6.5-5.167c2.667,1.167,0,3.834,1.667,5.667s-2.52,9.583,0.5,13.517c6,7.816-3.667,8.984-0.167,12.316c3.5,3.334,1.167-2.832,4.833-3.5c3.667-0.666,2.5-5,1.333-6.666c-1.167-1.667-2-4.133,1.833-2.15c3.833,1.983,4.5-1.684,1.167-3.517s-8.167-5.667-1.833-7s10.5-1.5,11.833-3.5s8.667-1.464,9-6.981c5.082,2.648,5.082-2.602,10.582-1.852s0.5-9.5,13-6s2.25,7,10.75,10s6.25-1.75,12,4.25s0.25,8,5.75,9.25s-0.5,6.25,6.75,7.25s0.5,3,5,6.5s3.5,9-2.5,4.75s-4,4.199-8.25,4.85s0,9.15-6,11.65c-4.583-6.5-9.417-4.834-13.083-7.834s-6.667-12.666-12.818-2s7.484,7,2.818,15s-1.333,5.667,1.333,16s-5.333,4.334-4,12.515s11.333,0.152,10.473,9.068s2.86,5.084,0.527,14.604s3.667,6.147,6.593,11.607c-1.001,3.064-1.274,5.732,0.407,7.04c4.5,3.5,3.75,3,4.5,6s1.25,6.75,4,6.75s1.5,7.75,6.25,6.5s2-3.25,4.25-4.75s-2.248-10.645,0.5-10.75c6.5-0.25,1.75,9,5.5,9.25s6,7.25,9.25,4s2.75-7.563,7.75-7.156s3.25-4.344,6.5-3.844s1.5,5.75,4.75,5.25s6.75,2.75,4.75,5.75s2.672,6.25,0.586,9.25s3.914,7.25,4.414,9.5s0.75,3.75,3.5,8c-7.5,3.5,1.5,5-3,9.75s-4.25,0.5-9.25-3.75s-4,1.5-5.5,7.25s-12.75,4.75-12.78-1.5s-4.22-5-7.97-2.5s-10-14.75-8.5-17.25S280,492,274.25,496s-6-0.25-8.25,5s-6.25-3.25-7.5,0.5s-10-0.25-13.5,4s-12.25-7.75-11-9.25s-3.5-8-8.5-6s-7.75-3.5-11.25,0s-5-0.75-8.5,4S208.25,506,200.834,508z M128.665,316.625c1.54,1.125,4.835-2.75,2.335-3.5S127.125,315.5,128.665,316.625z M104,460.125c-2.5-0.75-3.875,2.375-2.335,3.5S106.5,460.875,104,460.125z M71.665,477.625c1.54,1.125,4.835-2.75,2.335-3.5S70.125,476.5,71.665,477.625z M60,496.125c-2.5-0.75-3.875,2.375-2.335,3.5S62.5,496.875,60,496.125z M85.667,357.834c2.5,0.333,3.5-2.668,1-3.334S83.167,357.5,85.667,357.834z M67.833,390.667c3.667,0.834,6.438-1.896,6.667-3.834c0.157-1.333-3.833,1.334-6,1.992S64.167,389.833,67.833,390.667z M120.833,405.333c0.857-5.086-6.667-2.666-8.654,0.834s0.654,10,1.987,14.333s-3.5,4.333-1.492,6.667s4.158-2.334,5.158-0.167s-7.833,3.833-4.333,7.167s4.667-4.334,6.667-1.167s-2.833,5.167-0.667,7.167s3.333-2.5,6.833,0.833s4.333-3.167,2-4.167s2.167-4-4.5-8C120.189,426.646,126,427.167,125,422c-0.417-2.152-6.333,1.833-7.333-1.667s5.333,0.834,3.167-7.833c-1.412-5.648-5-1.5-4.333-4.833S120.43,407.727,120.833,405.333z M131.833,448.167c-0.333-1.833-2.5-3.167-3.667-1.667s-4.656-2.088-5.5,1.667c-0.337,1.501,2,2.333,3.833,2.166s6.167,3.334,7.667,1.167S132.167,450,131.833,448.167z M117,454c-3.333,5,2.333,3.667,3.557,1.667S118.408,451.888,117,454z"/>
                  <path id="krjs4" fill="#EBECED" stroke="#FFFFFF" vector-effect="non-scaling-stroke" d="M463.5,588.75c5.75,1,1.75-5,6.75-7.5s-1.352-5.226,6.5-9.75c14.75-8.5,9.25,10,18.25,3.75s-1-13,3.25-16.5s2.5-11.75,8.25-12.25s4.063-10.564,2-12.5c-5.5-5.159,2.5-8.75-1.5-11.5s1-6.75-8-7s-11.75,7.5-18,7.75s-7.25-1.25-9.25,4.5s-1,12.25-6,11.25s4.25-7.75-2.25-9s-9.25,1.75-10.5,5.75s-10,9-3.25,13.25s10.25-3.32,13.75,3.34s-8,0.41-10.75,5.41s-9.25,5.75-2,11.5s7.5,1.5,6.5,7S444.633,572.477,443,577c-3.25,9,13.25,4.75,6.25,18C455.25,594.5,457.75,587.75,463.5,588.75z"/>
                  <path id="krjs5" fill="#EBECED" stroke="#FFFFFF" vector-effect="non-scaling-stroke" d="M306.333,453.168c4-2.166,1-9.667,5.167-9s3.667-3.834,0-8.822s-5.667,3.322-7.333,0s4.5-5.012-2.333-10.503c-3.426-2.753-1.167,3.491-5.5,4.825s-1-2.167-5.167-1s-1.833-5.834-4.833-8.334s-0.5,3.334-4.833,3.166c1.25,6.5-3,13.191-9.25,11.846S267,438.75,267,443.25s-9.5,17.75-5,21.25s3.75,3,4.5,6s1.25,6.75,4,6.75s1.5,7.75,6.25,6.5s2-3.25,4.25-4.75s-2.248-10.645,0.5-10.75c6.5-0.25,1.75,9,5.5,9.25s6,7.25,9.25,4s2.75-7.563,7.75-7.156C301.167,466.52,302.333,455.334,306.333,453.168z"/>
                  <path id="krjs6" fill="#EBECED" stroke="#FFFFFF" vector-effect="non-scaling-stroke" d="M242.167,82c4.667,2,6-4.667,7.667,2.333s1.333,13,4,13s-0.833,3.833,2.5,4s6.833-9.167,11.667-7.5s-7.167,10.5,0,11.667s2.667,6,8.5,6s4.167-9.167,9-4.667s5.667-3.167,8.333,1.333s-2.333,9.167,1.5,11.5s-0.667,5.833,6,9.333s5.167-1.5,9.833,1.5s-2.333,4.518,5.667,6.926s6.333,16.074,2,16.074s-3.28,7.404-8.333,8.667c-8.667,2.167,3.167,12.333-0.167,16s-3.333,5,0.333,5s2.667,8,1,11.167s0.667,8.333,4,6.333s3.975-3.739,6.792-2.167C336.5,206.333,335,210.167,338,209.667s8.333,1.667,11.833,1.333s3.667,5.5,7.333,5.333s3.666,4-1.167,4s-4.014,4.921-7.167,5.5c-8.167,1.5,4.167,4.667,3.333,10.5S350.333,252,348.333,252s-2.01,1.347-1.333,9.167c1.5,17.333-4.833,9.666-3.5,20.833s5.15,17.466,12.5,13.833c14.5-7.167,9.166,0.5,15.5-3.167s-5.59-14.219,6.5-16.833c12.334-2.667,7.334,3.5,11.667,4.5s-1.499,9,4.667,7s10.167-3.334,10.5-7.167s4.126,3.257,7.5-0.667c7.166-8.333,5.166,1.5,11.166,0s2.001,5.5,8.167,3S440,285,435,287.333s-8.333,5.393-3.5,9.53s6.334-6.03,13.834-3.03s1.5,8,9.333,9.333s6.001-5,12.667-2.167s-2.168,5.333,8.666,6.5s8-2.667,14,4.167s10,0.167,13.5,4s8.334,2.334,6-1.333s-0.5-9,7-6.333s1.166,6,9.833,7s4.833-12,12-8.167s5.033-1.125,11,1.5c12.5,5.5,10-6.667,17.667-2.167s7.833,10.167,15.333,10.167s-3.223-10.833,22.556-21.667c-4.778-4-1.556-5.333-0.222-11.333s-3.667-11-6.334-16.333s-6.333-1.667-8-11.08S580,244.333,580,237s-9.667-8-11-18.333s-13-16.333-12.667-22.179S532,159,525.334,156.667s0-8.333-7.667-11.667s-5.333-13.333-13.667-18.667s-2.666-8.333-14.333-19.667s-2-15-8.667-21.333s0-11-7.667-17s-5.333-16-11-20.667s0-13-8.666-20.333c-2.506-2.121-5.334-10.333-7-15s-2-3.667-6.334-2s-6.484,7.139-4.333,11.333c3.333,6.5-3.333,11.5-1.167,13.833S424.5,50.667,414.5,59.5s-9.5,1.333-14.166,7s-18.167-0.167-20.5,1.667s-8.334-6.333-18.855,1.5c-6.189,4.608-7.645-8.667-13.312-5.5S332.833,63,325,66c-2.162,0.828-6.167-5-19.333,3c-6.454,3.921-8.333-3.167-11.167-1.667S294,61.667,277.167,67c-8.446,2.676-10.5-5.667-24.333,2.833c-3.703,2.275-7.333-1.667-12.5,1.167C244.333,75.667,237.5,80,242.167,82z"/>
                  <path id="krjs7" fill="#EBECED" stroke="#FFFFFF" vector-effect="non-scaling-stroke" d="M219.167,676.166c-3.333,0.5,0.5-3.333-2.5-5.163s-4-6.67-6.667-7.938s-4,1.601-6.833,1.101s-6,4.5-8.167,3.668s-1.833,0.999-3.167,2.723s-9.5-1.891-7-4.891s-1.019-3.18-6.167-1c-2.285,0.968,0,2.667-2.5,4.667s-6.167,0-6,3.167s-7.833,0.333-4.667,6.166c1.479,2.725-0.833,3.334-1,7.834s0.167,4.166,3,6.166s5.5,0.667,10.5,1.5s4.5,4.334,2.5,6.5s2.667,4.834,4.833,4s2.833,0.5,5.5,1s6.667-5.166,9.333-4.333s6.5-4.167,9.167-1.833s4.667,4.5,6.833,0s1.5,1.666,7-5.834c3.079-4.199,1-8.666,3.333-11.166S222.5,675.666,219.167,676.166z"/>
                  <path id="krjs8" fill="#EBECED" stroke="#FFFFFF" vector-effect="non-scaling-stroke" d="M222.668,337.851c0.333-5.518-3-5.019-2.167-7.352s7.834,1.333,8.667-2.667s-2-1.667-3.667-1s-4.666-2.5-7.333,1.333s3.667,6.5,0.167,8.667s-5.667,1.5-7.667,2.167s-3.667,0.167-5.667-2.167s-4.5-1-6-4.833s-9.167-5.333-7.667-8.166S200.167,325.5,202,324s-3.833-2.667-1.167-4.333s6,4.333,7.167,1.5s-5.166-3.167-4.833-6.667s1-9.167-0.667-10s-2.333,3.5-2.667,6.5s0.5,6-2.5,6s0.167-4.5-2.333-4.5s-1,7.371-4.5,5.852s-7.833-1.519-9.333-4.019s6.833-2.667,6.833-5.667s-4.649,0.836-3.833-4.167c1.333-8.167,7-3.333,8.5-6.333s9.333,0.167,8.5-5.667s-4-3.5-5.833-1s-6.5,2.167-6.5-1.167s-1.834-0.5-3.167-0.5s-5.333,2.5-7,5.5s-6.167,6.502-8,4.084s5-3.751,3.333-6.918s-4.833,2.833-6.667,0.333s1.5-6.667,5.667-6.833s2-6-0.5-4.5s-4.667,0.5-3.667-1.333s-3.5-3.329-2.667-6.248s3.5,2.085,4.833,0s8.333,3.914,10.833,1.748s1.167,5.667,3.667,6s3.5-2.5,3.667-6s3.93-8.122,5.333-5.667c3.333,5.833,8,1.5,3.5-1c-2.71-1.506,1.167-3.667-1.167-5.167s-2.5,3-8.667,1.167s-1.833-5.833-9.333-5.167s-8.167-3.327-1.667-3.914s5.334-6.086,3-7.92c-0.167-1.833,3.667-3.167,4.307-4.833s5.026-1,3.193-5.667c-0.82-2.087,0.833-3-1.333-5.667s-5.333-1.667-6-6.5s3.167-11.5,4.333-13.333c4.5,3,5.333,8.167,7.167,9.5c1.944,1.414,1.667,3.5,0.333,5.667s3,5.833,6,4.167s4,1.167,4.833,5s3.5,4.833,5.5,2.333s3,1.679,12.167-1.667c2.476-0.903,5.667-2,7,1.5s7.333,1.5,8.667-1.667S245,235,244.667,232.5s1.333-2.5,3.167-4.167s2.5-4.667-0.333-4.833s-0.833-4,3.333-4.5s2.833-3.333,1-7.833s-8,2.833-11.5,0.5s4.333-6.5,1.167-8.667s1.833-2.833-1.167-5.667s0.5-7-4-10.333s-4.833,1.333-8.667-0.5s-3.667,0.667-6.833,2.167s0.333,7.333-3.167,7.821s-0.833-4.321-4.5-4.154s-1.333,2.833-5,4.154s-3.667,6.512-3.333,9.846s0,3.5-4.833,5.833s-5.333-6.333-11.333-4.167s-4.667-1.833-7.833-1.167s-4.5-2.333-8.833-6.667s-5.5,0-7.167,2.333s-2.667-1.333-4.667,3.5c-6.167-4.833-5.509,0.006-8.667-4.167c-4.667-6.167-2-9.833-3.5-12.833s-3.5-13.833-0.833-13.833s12.833,3.848,15.333,1.257s4.833-1.257,5.167,3.076s-6.667,12.667-0.5,15s12,8.167,13.833,6.333s-12-8-10.833-12.167s4.334-11,1.667-13s1.5-10.833-0.167-15.167s3.167-11.167,1.167-15s-2.5-9,2-7.167s3.638-4.44,7.333-2.667c8.333,4,7.166-8.667,14.333-11.333s1.167-13.833,9.833-17.167s11.167-6.182,10-8.174s2.833-14.326,8-15.826s10.833-9.333,16-12.167c4,4.667-2.833,9,1.833,11s6-4.667,7.667,2.333s1.333,13,4,13s-0.833,3.833,2.5,4s6.833-9.167,11.667-7.5s-7.167,10.5,0,11.667s2.667,6,8.5,6s4.167-9.167,9-4.667s5.667-3.167,8.333,1.333s-2.333,9.167,1.5,11.5s-0.667,5.833,6,9.333s5.167-1.5,9.833,1.5s-2.333,4.518,5.667,6.926s6.333,16.074,2,16.074s-3.28,7.404-8.333,8.667c-8.667,2.167,3.167,12.333-0.167,16s-3.333,5,0.333,5s2.667,8,1,11.167s0.667,8.333,4,6.333s3.975-3.739,6.792-2.167C336.5,206.333,335,210.167,338,209.667s8.333,1.667,11.833,1.333s3.667,5.5,7.333,5.333s3.666,4-1.167,4s-4.014,4.921-7.167,5.5c-8.167,1.5,4.167,4.667,3.333,10.5S350.333,252,348.333,252s-2.01,1.347-1.333,9.167c1.5,17.333-4.833,9.666-3.5,20.833c-5.5,2,0,6-5.75,9.75s-2.25,9-7.75,5s-6-1-4.75,4s-8.5,4.75-9.25,11s-11-1-12,2.25s-5-4.221-7,0.39s1.5,4.86-2.75,7.86S284,322.5,286,327.5s-1.512,4.476-6.25,6.75c-9.375,4.5-5.625,7.875-10.75,10c-5.75-6-3.5-1.25-12-4.25s1.75-6.5-10.75-10s-7.5,6.75-13,6S227.75,340.5,222.668,337.851z M159.665,292.625c1.54,1.125,4.835-2.75,2.335-3.5S158.125,291.5,159.665,292.625z"/>
                  <path id="krjs9" fill="#EBECED" stroke="#FFFFFF" vector-effect="non-scaling-stroke" d="M640,504.666c3.666,8.667,3.667,14.667,0,18.667S640,530,636.333,534s0.333,11.667-4,20s-4.667,24.333-9,33c-21.335-9.166-24.332,1.666-29.833-0.25c-9.168-3.193,0-9.5-5.75-9.75s-2.75-7.25-8.75-3s-12.75-2.25-18.5,5s4.25,7.75,0,10s-4.75-1.75-10,3.182s-9.75-0.432-13.75-3.682s-1.75,3-7.25,1.902s-3,8.598-9.25,8.098s-3.5,5.5-13.5,4.5s-2.25-5-10.75-6.5s-4,5.75-11.75,5s-4.5-5.75-9.5-7.75s2.75-7.25-4.5-12.5c5-2.5-1.352-5.226,6.5-9.75c14.75-8.5,9.25,10,18.25,3.75s-1-13,3.25-16.5s2.5-11.75,8.25-12.25s4.063-10.564,2-12.5c-5.5-5.159,2.5-8.75-1.5-11.5s1-6.75-8-7s-11.75,7.5-18,7.75s-7.25-1.25-9.25,4.5s-1,12.25-6,11.25s4.25-7.75-2.25-9s-9.25,1.75-10.5,5.75s-10,9-3.25,13.25s10.25-3.32,13.75,3.34s-8,0.41-10.75,5.41s-9.25,5.75-2,11.5s7.5,1.5,6.5,7S444.633,572.477,443,577c-3.25,9,13.25,4.75,6.25,18c-6,0.5-5.75-5.25-11.75-8s-7.25,2.5-10.5,0.25s-5,2.75-7.798,0S413.25,588.5,411,585s10.75-4.25,7.75-8.5s-0.25-8.75-4.5-10.25s1-3-5.5-4.75s0.75-4.75-8.25-9.16s-14,3.41-15.75-2.59s-9.5,0.75-10.25-5.75s-6.75-2-7.75-8s0.5-4,4-4.659s-3-10.341-6.25-17.091c9-9.75,7.25,0,14.25-7c3.26-3.26-1.75-4-0.5-9.25s2.75-1,5.5-6.75s-5-8.75,0.5-12s4.5,4,9.25,1.5s-6.75-7-2.75-8.5s2.5-5.5-3-6.75s-3.25,3.75-8.25,4s-3.25-4-7.25-5.25s2.25-2.25-2.75-4.25s0.25,6.25-6,5.25s-5.75-10.25-0.25-12.75s3.75-6,0-11.25s6.25-2.5,1.5-5.904s2.5-3.096,1.799-9.846s2.201-2.25,2.701-7.25s-4.75-1.25-5-6.5s-4.25-1.5-8.75-4.75s-2-6.25,2.5-5.75s4.75-1.25,2.979-4.337S366,390,366.394,393.5s3.606-0.25,3.106,3.413s2.75,4.087,4.75,1.087s4-7.75-3.75-10.75s-3-3.25,1.75-2.75s3.5-1,3.5-3.945s-0.5-8.555,5.5-3.705s4.25-0.1,9.2,2.65s8.05-0.5,3.55-2.65s-4.5-6.6-1.25-10.35s1.25-7.75,5.75-4.25s4.25-7.25,12.75-3.4s9,1.65,8.5-2.85s3-1.25,2.861-4s3.389-3.75,5.389-1s7,2.5,7.5,7.85s2.75,5.9,5,1.9s1.25,6.75,6.25,0s4,6.5,11.25-7.75c3.336-6.557-3,1.25-4.5-7s5-4,6-9.25s6.25-2.5,7.75-7.481s4.5-2.769,9-6.019s-0.25-4.583,3.417-8.25s6.667,4.667,10.333-3.333c6,6.833,10,0.167,13.5,4s8.334,2.334,6-1.333s-0.5-9,7-6.333s1.166,6,9.833,7s4.833-12,12-8.167s5.033-1.125,11,1.5c12.5,5.5,10-6.667,17.667-2.167s7.833,10.167,15.333,10.167s-3.223-10.833,22.556-21.667c4.778,4,13.777,15.667,11.444,19.667S611,325.369,615,337.851s1,15.483,6.333,23.816s0.597,10.453,2,15.183c4,13.483-5.333,9.816-5,13.483s-6.333,5.334-5,11.667s6.334,7.667,7.667,16s-4.65,7.268-3.334,15.333c2.667,16.334-10.826,13.173-8.666,26.334c3.666,22.333-2.334,16-1.667,22.333s4.666-1.001,5.333,7.333s4.667,6.001,4.667,13.334S601.767,504.59,615,519C626.333,531.341,636.334,495.999,640,504.666z M654.501,243.667c1.617-3.395-0.667-4.167-3-3.5s-2.667-0.5-5.834,1.667s-4.618-0.092-7.666,1.833c-3.166,2-3.5,2.667-2.5,8.333s4.166,1.667,9,4.921s6-2.921,9.5-3.754S651.167,250.667,654.501,243.667z"/>
                  <path id="krjs10" fill="#EBECED" stroke="#FFFFFF" vector-effect="non-scaling-stroke" d="M519.25,696.75c-5.5,0.25-3.75-5.5-8.25-3s-5.5-1-10.25,1.5s-4-1.25-1.75-4.5s-3.5-6.5-4-2.25s-2.75,4.25-4,0.25s-6,1-6-6s-2-2.75-2-6.75s-3.5-4.75-4.75,0s4.5,6.5,2.25,10.75s8.75,8.75,6.25,11.75s5,2.914,2.5,5.332s-8,0.668-8-2.332s-2,0.25-2.5-4.25s-1.75,0.916-4.416-2.084S471.668,695,467.168,694s-8.834,1.499-6.334,3.666s-15.833,6.501-14.333,10.334s-3.833,2.667-1.833,5s5.016-1.04,5.666-3.167c1.834-6.001,6.834,0.333,9.167-4.5s4.333-2.833,4.5,1s3.167,1.833,2.5,6.333s-14.501,1.5-14.667,5s5.834,1.668,4.834,5.334s1.834,2.834-0.5,7.667s-1.666,6.166,1,6.166s0.332-4,3.166-2.5s-0.166,5.666-1.833,6.5s0.834,5.166-3.333,5.5s-8.501-1.84-5.334-3.503s1.668-3.497-1.666-2.83s-15.281,0.167-12.391-4.5s9.057-0.833,6.724-6s-4.333-7.5-6.5-2.5s-6.333,8.834-7.333,4.667s-9.333-5.833-10-3s0.499,8.5-5.667,6.5s-3.5,3.999-8,1.166s0.668-4.333-2.166-6.333s-5.667,1.501-9.667-2.333s2.833-6.5,1-9.5s1.834-4.834-0.333-7.667s5-8.834,2.5-11.667s-4.168,10.667-8.834,9.667s4.5,9.499-0.833,9.333s-5.666-3.833-8.5-0.833c-2.833,3-2.833-8.667-6.5-5.667s5.167,6.333-1.5,11s-8,4.829-10.5,2.498s-8.699-3.547-13-2.998c4.917-5.167,2.833-17.833-0.417-18.001s-11-10.332-11-14.332s-6.25-6-11-9.25s0.25-7.5-1.25-15.25s-4.584-2-6-11.5c8.25-2.75,5.75-3.25,5.25-8c-0.298-2.835,3.75-11,7.75-12s3.5-6.25,0-6.75s-4.75-6.25-2.5-7s-1-9.25-5-10.413s-5.5-5.837-2.5-6.225s-0.75-4.362,4.5-8.082s-4.75-10.03,4-15.53c5.699-3.582,0-14.75,7.5-17.75s3-10.75,10.25-10.5s6.75-6.5,12-6.5s1-7.25,8.5-8.75c1,6,7,1.5,7.75,8s8.5-0.25,10.25,5.75s6.75-1.82,15.75,2.59s1.75,7.41,8.25,9.16s1.25,3.25,5.5,4.75s1.5,6,4.5,10.25s-10,5-7.75,8.5s5.404-0.5,8.202,2.25s4.548-2.25,7.798,0s4.5-3,10.5-0.25s5.75,8.5,11.75,8s8.5-7.25,14.25-6.25s1.75-5,6.75-7.5c7.25,5.25-0.5,10.5,4.5,12.5s1.75,7,9.5,7.75s3.25-6.5,11.75-5s0.75,5.5,10.75,6.5s7.25-5,13.5-4.5s3.75-9.195,9.25-8.098s3.25-5.152,7.25-1.902s8.5,8.613,13.75,3.682c2.5,15.568-6.086,5.568-3.918,15.568s6.668,1.5,14.668,7s3.75,10.172,11,14.086S579,626.25,582,631s2.5,5.5,0,8.75s-2.25,6.75-7.25,4.5s-5-1-4.75,3.25s-3,1.5-3.5,5.75s-8,0.25-9.25,5.75s-6.613-0.719-8,5c-2.668,11-22.17,4.369-20.75,12c2,10.75-5.75,3-5.5,7s-7.25-0.75-5.25,3.25s2.93-0.316,5,4.75S518.25,691.25,519.25,696.75z M436,763.125c-2.5-0.75-3.875,2.375-2.336,3.5C435.204,767.75,438.5,763.875,436,763.125z M446,784.125c-2.5-0.75-3.875,2.375-2.336,3.5C445.204,788.75,448.5,784.875,446,784.125z M466.375,767.5c-2.375,1.375,2.125,6.75,3.75,5.5S468.75,766.125,466.375,767.5z M472.125,728c1.625-1.25-1.375-6.875-3.75-5.5S470.5,729.25,472.125,728z M414.334,773.188c-1.666,3.188,3.166,4.646,5.166,2.313S415.564,770.834,414.334,773.188z M429.167,787.828c0-0.338-1.74-5.067-5.167-1.909c-3.167,2.919,1,8.247,2.667,6s5.667-0.753,6.35-2.753S429.167,788.166,429.167,787.828z M425.667,753.666c1.667-1.5,3.658-4.333-0.671-7.333s-6.329-6.839-8.829-3.503s-0.138,5.456,2.667,5.503c4.384,0.073,3.166,0.833,2.166,2.833S424,755.166,425.667,753.666z M396.64,745c-1.86-1.166-1.306-2.334-0.14-5.126s-5.333-5.541-6.626-1.708s-3.707,0.5-0.707-3s-3.085-5.839-4.833-1.5c-0.718,1.782,0.5,4.167-2,5.801s-5.167,2.366,1,6.533s7-0.667,10.833,1.166S398.5,746.166,396.64,745z M379.555,751.5c-2.112,2-2.721,3.166-4.055-2.334s-5.833,0.334-6.167-5.666s2-4.167,4.167-8.834s-2.167-7.666-7.667-7.166s-1.285,7.317-6.667,8.471c-1.813,0.389-7,9.695-2.667,14.816s-0.167,7.046,4.479,9.379s-3.979,8.667,2.521,11.167s5.167-3.167,7.5-8.438s7.334,1.271,6.992,5.207s3.675,4.398,8.175,3.398s3.333,4.833,7.833,1.688s-2.333-5.021-0.166-6.359s-1.167-8.162,2.5-12.639S381.667,749.5,379.555,751.5z M457.5,748.842c-1.666-3.491-7.334,0.658-10.593-2.009s-5.646,4.07-1.074,4.667c3.833,0.5-1.5,3.167,4.773,7.833s5.894,1.834,5.06-1.666S459.166,752.333,457.5,748.842z M461.166,753.995c-4.834,2.662,1.667,10.505,4.531,9.015S463.255,752.845,461.166,753.995z M461.333,767.285c-2.833-0.048-4,5.382-0.667,6.844S464.166,767.333,461.333,767.285z M507.166,734c-3.167-5.167-2,5.833-5.666,2.833s3.5-11.5,0.833-16.5s1.833-8.833-0.667-12s-7.666,2.667-5.5,6.5s0.667,3.5-1.166,5s-3.334,2.834-8.667,2.452s-3.333,6.048,0,9.882s1.667,5.5-2.666,2.5s-4.334-0.834-7.5-0.5s1.166-3.334-2.5-2.857s-3,4.023-5.97,4.523s-5.336,11.895-1.171,12.031c6.026,0.197,2.141,1.969,1.615,3.969s5.691-2.666,8.191-5.622s7.334,2.956,5.5,7.979s-6.5,2.478-7.333,5.978s3.333,1.833,6.333,0.833s5.667-0.333,1.334,3.919s3.333,4.414-1.334,5.317s0.667,3.431,6.667,1.972s1.167-4.708,6-3.708s3.833-3-0.333-2.833s-1.667-7.334,1.166-7.124s1.834-7.043,4.334-4.354s2.5-1.022,4.166,1.311s3,0.333,1.834-3.667s-2.5,1-3.5-3.969s5.5-0.031,3.333-3.531S510.333,739.167,507.166,734z M487.5,718.333c3.098-1.99,5.5-3.833,2.5-3.833s-5.5-2.167-6.5,1S483.535,720.88,487.5,718.333z"/>
                  <path id="krjs11" fill="#EBECED" stroke="#FFFFFF" vector-effect="non-scaling-stroke" d="M180.167,248c-2.333-1.833-2,1.5-6-1.5s-7-0.333-9-4.333s-0.833-7.333-4.333-9.833s0-5.5,4.167-4s5-1.5,2.167-4s3.833-4.833-0.667-8.167s-0.166-5.334-6.333-10.167c2-4.833,3-1.167,4.667-3.5s2.833-6.666,7.167-2.333s5.667,7.333,8.833,6.667s1.833,3.333,7.833,1.167c0.333,3.167-2.833,2.167-4,4s-5,8.5-4.333,13.333s3.833,3.833,6,6.5s0.514,3.58,1.333,5.667c1.833,4.667-2.553,4-3.193,5.667S180,246.167,180.167,248z M121,187.5c4.125,3.625-1,2.125,3.125,5.625s1.375,5.75-2.875,7.75s3.875,8,6.125,7.145s3.25,1.355,6.875-1.645s5.375,2,8,1.625s-1.375-5.5,3.75-6c1.759-0.172,1.375-0.875-1.25-6.125s-0.25-7.625-2-10.625s0.75-2.875,0.875-8.826S133.5,170.125,132,166.125s-7.259-2.563-9.25,0c-1.301,1.675-5.75,1-3.375,8.25C120.84,178.847,116.875,183.875,121,187.5z M107.125,190.375c2.75,0.375,7.384,3.369,7.75,4.625c1.258,4.321,9.5,0.625,6.125-3.125s-5.875-1.75-8.125-6.625s2-6.75-3-6s-0.625,5.738-3.375,6.619S104.375,190,107.125,190.375z M93.5,176.424c2.125,2.299,8.25-2.799,11.625,0s10.75-1.924,10.5-6.299s-8.5-0.125-10.901-3.5S94.527,164.653,95.75,169C96.875,173,91.375,174.125,93.5,176.424z M97.625,196.946c-4.125,2.696,2.75,7.054,3.625,6.054S100.181,195.275,97.625,196.946z M93.875,195c1.25-3.125-6.847-3.634-7.25-1.375C86,197.125,92.625,198.125,93.875,195z M121.806,220.375c-0.694-2.75-4.556,1.375-6.306-2.125s-5.453-2.022-4.125,0.875C114.125,225.125,122.5,223.125,121.806,220.375z M136.75,219.624c-1.75-1.626-7.874,1.397-5.25,3.414C133.5,224.574,138.5,221.25,136.75,219.624z M146.125,222.375c-2.375-2.875-3.529-1.416-3.75,1.058c-0.17,1.903-2.375,1.067-1.875,5.417s-6.5,6.65-3.385,7.775s3.385-1.5,6.885-3.375s7.25-2,7.125-3.375s5.125-1.5,2.625-4.875S148.5,225.25,146.125,222.375z M134.5,228c-2.125,0.25-2.625,4.375,0,4S136.625,227.75,134.5,228z M126.25,240.346c2.125,2.971,5.875-0.221,3.25-4.846s-6.125,0.125-8.375-1.875s-4.899-0.231-2.436,2.875C122.753,241.625,124.125,237.375,126.25,240.346z M130.399,252.875c3.149-1.375-1.418-8.953-4.024-7.875C122.75,246.5,127.25,254.25,130.399,252.875z M153.5,270.875c-4.5-2.875-6.75-1.822-3.375,2.375c1.1,1.367,3.625,2.625,2.25,4.625s-1.875-3.375-3.5-0.609s3.375,3.359,0.236,5.734s2.139,3.25,5.314,1.25s1.949,0.125,4.449-1.5s-2.25-2.75,1.292-4.125S158,273.75,153.5,270.875z M133.375,278.25c2.5-0.5,4,3.875,6.375-5.375c1.274-4.964-10.078-3.064-9.351,1.044C131.048,277.588,130.875,278.75,133.375,278.25z M116.375,277.308c1.25-2.942-10-6.808-10.625-4.183S115.125,280.25,116.375,277.308z M77.125,281.375c1.625-1.125,5.75,4,8.875,0s-6.125-4.625-7.875-8.125s-2.827,0.09-3.25,3.125C74.125,281.75,75.5,282.5,77.125,281.375z M91.625,286.75c2.5-1.5-2.5-5.5-4.985-4.375S89.125,288.25,91.625,286.75z M74.665,292.625c1.54,1.125,4.835-2.75,2.335-3.5S73.125,291.5,74.665,292.625z M101.665,293.625c1.54,1.125,4.835-2.75,2.335-3.5S100.125,292.5,101.665,293.625z M108.665,294.625c1.54,1.125,4.835-2.75,2.335-3.5S107.125,293.5,108.665,294.625z M69.665,308.625c1.54,1.125,4.835-2.75,2.335-3.5S68.125,307.5,69.665,308.625z M55.665,290.625c1.54,1.125,4.835-2.75,2.335-3.5S54.125,289.5,55.665,290.625z M163.665,283.625c1.54,1.125,4.835-2.75,2.335-3.5S162.125,282.5,163.665,283.625z M79.665,191.625c1.54,1.125,4.835-2.75,2.335-3.5S78.125,190.5,79.665,191.625z M53,165.125c-2.5-0.75-3.875,2.375-2.335,3.5S55.5,165.875,53,165.125z M42.409,193.179c-3.681-1.104-5.706,3.497-3.438,5.153C41.237,199.989,46.09,194.284,42.409,193.179z M55.333,320.833c0,0,5.833,2,6.333,0S55.833,319.167,55.333,320.833z M15.5,110.25c-4-1.75,2-4.25,4.75-0.25s6.75-2,3.75-6.858S15.25,104,8.25,103.25S3.678,104.315,5,110c2.5,10.75,4.75,2.75,8.73,4.25S19.5,112,15.5,110.25z M21.75,130c-7.25-1.75-3.75,4-5.5,4.889s-3.5,1.111-1.969,3.939s8.469-1.328,7.469-3.818S27.36,131.354,21.75,130z M28,142.5c-1.543-0.839-7.5,4-3.964,5.25S32.315,144.846,28,142.5z"/>
                  <path id="krjs12" fill="#EBECED" stroke="#FFFFFF" vector-effect="non-scaling-stroke" d="M218,960.75c-1.5,0.25-5-6-2.25-6.75S219.5,960.5,218,960.75z M210,960.758c0.5-4.492-1.971-3.152-4.25-6.813c-1.903-3.056-8.25,0.055-12.25-6.445s-17.25,4.25-26.5,2.5s-9.25,7-18.5,7.352s-11,0.898-16.75,3.406s-12-0.008-15.25,3.742s-11.75,6.5-15,12.25s-7.25-0.5-15.25,10.5s9,23.25,13,27.25s5.75,2.25,9.75-1.75s7.25,0.75,10.75-1.222s4.75,1.222,8.25-0.778s10,2.5,12.25,0s16-0.75,21.75-4s18.75-2.25,21.75-7.75s14-2.75,16.25-8s7-6.25,7.25-11.25s4.5-6.75,2.988-10.5s5.512,1.75,4.489-3.75S209.5,965.25,210,960.758z"/>
                  <path id="krjs13" fill="#EBECED" stroke="#FFFFFF" vector-effect="non-scaling-stroke" d="M131.501,629.833c6.667-5.5,4-15.501,10.167-16.167s1.833-4.334,6.333-3s4.834-2.825,8.667-1.329s1.667-3.003,6.167-4.337s4.333,7.333,7.667,5.833s-1.333-13.334-5.667-13.167s-2.167,2.5-6.5,2.667s-5.667-3.667-11.167-0.667s-6.667,2-9.833-1.5s-4.833-8,1.667-10s6-8,13.167-9.833s8-8.5,13-9.5s2,5,5.667,3.5s-1.5-7.833,3.833-8.833s2.167-1.666,6.167-2s2.667,5.999,6.667,4.666s-0.5-8.5-3.167-9.833s-14.833-3.501-10.5-8.167s14.667,1.668,16.333-3.666s7.166-3.168,5.833-6.334s-7.666,2.834-9.833,1.167s-6.333,5.001-14,0.667s-10.333,2.5-12.5,1s2.667-9.318,2.167-12.159s-0.167-6.174,6-4.841s5.667-4.166,10.667-2.833s3.833-5,9.5-5.667s13.5-4,12.833-7.5c7.416-2,1.416-9,4.916-13.75s5-0.5,8.5-4s6.25,2,11.25,0s9.75,4.5,8.5,6s7.5,13.5,11,9.25s12.25-0.25,13.5-4s5.25,4.75,7.5-0.5s2.5-1,8.25-5s8.75,1.75,7.25,4.25s4.75,19.75,8.5,17.25s7.94-3.75,7.97,2.5s11.28,7.25,12.78,1.5s0.5-11.5,5.5-7.25s4.75,8.5,9.25,3.75s-4.5-6.25,3-9.75c2.75,4.25,6.75-1.5,8.25,1.75s10.25,0.5,10.75,4.25s13.75-6.75,17,0s9.75,16.432,6.25,17.091s-5-1.341-4,4.659c-7.5,1.5-3.25,8.75-8.5,8.75s-4.75,6.75-12,6.5s-2.75,7.5-10.25,10.5s-1.801,14.168-7.5,17.75c-8.75,5.5,1.25,11.811-4,15.53s-1.5,7.694-4.5,8.082s-1.5,5.062,2.5,6.225s7.25,9.663,5,10.413s-1,6.5,2.5,7s4,5.75,0,6.75s-8.048,9.165-7.75,12c0.5,4.75,3,5.25-5.25,8c-0.716-4.801-8.25-3.5-11.25-8s-6.25,0.75-11.5-1.25S287,655.75,282.5,653s-7.75,7.75-21-1.5c-4.358-3.042-6.25,5-9.25,0.25s-4.25-0.25-8.5,3S238,654,232.25,653s-6-2.75-1.282-5.75s4.782-7,0-6.75s-6.718-4-2.968-5.75s5.25-10.25-3.5-10.5s-1.5,5.5-6,6.5s6.25,4.75-6.25,5.5c-8.485,0.509-1.75-9.75-7.5-10.5S203,621,196.5,619.5s-1.75,5.25-9,3.25s-8,0-5.5,6.086s-6,6.914-3.25,10.664s-2.5,5.25-7,4.5s-2.25,2-6.25,5.835s-5.75-3.835-10.25-2.335s4,5,0,7.75s-3.75-4.25-7-1.75s-3.75-2.75-4-8s-1.75,1.5-5.25-3.75s3.5-5.75,0-9S137.5,635.5,131.501,629.833z M153,527.125c-2.5-0.75-3.875,2.375-2.335,3.5S155.5,527.875,153,527.125z M166,561.125c-2.5-0.75-3.875,2.375-2.335,3.5S168.5,561.875,166,561.125z M131.665,557.625c1.54,1.125,4.835-2.75,2.335-3.5S130.125,556.5,131.665,557.625z M102.833,602.666c3.5-1.5,11.5-7.666,7.167-7.636S100.411,603.704,102.833,602.666z"/>
                  <path id="krjs14" fill="#EBECED" stroke="#FFFFFF" vector-effect="non-scaling-stroke" d="M346.25,703.832c-3.25-0.168-11-10.332-11-14.332s-6.25-6-11-9.25s0.25-7.5-1.25-15.25s-4.584-2-6-11.5c-0.716-4.801-8.25-3.5-11.25-8s-6.25,0.75-11.5-1.25S287,655.75,282.5,653s-7.75,7.75-21-1.5c-4.358-3.042-6.25,5-9.25,0.25s-4.25-0.25-8.5,3S238,654,232.25,653s-6-2.75-1.282-5.75s4.782-7,0-6.75s-6.718-4-2.968-5.75s5.25-10.25-3.5-10.5s-1.5,5.5-6,6.5s6.25,4.75-6.25,5.5c-8.485,0.509-1.75-9.75-7.5-10.5S203,621,196.5,619.5s-1.75,5.25-9,3.25s-8,0-5.5,6.086s-6,6.914-3.25,10.664s-2.5,5.25-7,4.5s-2.25,2-6.25,5.835s-5.75-3.835-10.25-2.335s4,5,0,7.75s-3.75-4.25-7-1.75s-3.75-2.75-4-8s-1.75,1.5-5.25-3.75s3.5-5.75,0-9s-1.5,2.75-7.499-2.917c-6.667,5.5-3.5,10-0.333,13.5s2.833,9-1.167,3s-7.333-0.667-8.833,5s3.833,6.834-1.667,9.334s2.667,1,0.667,4.833s-10.667-1.5-10.5,2.334s8.833-0.334,8.167,2.999s3.5,1,3.333,3.167s-3.833,1.333-3,4.5s3-0.833,2.833,4.167s4.5,4,5.167,7.833s8.333,5.167,8,8.667s-4,5.833-4.167,8.166s-1.167,4-4.167,0.834s3.167-5.667-5.333-6.167c-5.016-0.295-1.333-3.167-4.833-5.833s2.833-4.5,0.833-8.667s-2.5-0.833-3,2.167s-3.667,2.5-3.667,0.833s-5.667-5.5-9.667-2.5s0.5,2.167,1,6.333s4.667,2.334,5.333,4.834s-3.333,0-3.167,2.833s2.167,0.333,3.333,1.832s3.667,0.501,2-3.999s5-1.833,5,1.334s2.667,5.666,5.333,6.333s4.167,4.833,0.333,5.5s-5.833,3-4.333,4.5s-0.167,3-3.667,1.833s-3,2.834-0.333,4.334s-1.5,3,1.833,5.333s1.667-1.333,6-1.167s0-7.333,2.167-7.166s-1-3.167,2.5-3.834s8,3.167,3,5.5s0.667,3.5-1.833,9.167s3.333,0.833,3.167,4s-4.5,2.5-2.167,5.333s-1,8.167-5.5,10.667s-0.667,5.666,4.333,4.333s-0.333-2.333,3.833-3.333s-0.5,4,6.833,0.5s1.5,2,4.667,4s7.833-3.833,6.167-8.333s3-4,0.667-9.334s1.833-4.333,5.5-5.833s3.667,6.333,0.333,9.33s2,2.17,0.667,4.67s3.5,2.833,7.833,1.5s7.833,3.5,3.5,3.5s1,2.833-4.333,4.333s-6.333-6-13.667-1c-5.234,3.568,4,7-2.167,7.834s-7.5-4.167-9.833-1.667s-4.167,0.667-8.667-1.167s-2.333,2.167-5.667,3s-1.333,6,4.833,3s5.833,1.667,11.167,1s8.333,9,11.667,9.667s4,6.5,6.5,7.5s7.667,2.333,3.5,4s-10-5.667-12.333-4.834s3.5,3.167,1.833,4.834s-3.5,0-6.833-2.667s-8.833-4.167-6.833-7s-0.167-4.5-3.667-3.667s-1.833-3-5.167-2s2.333,3.334-0.667,4.334s-3.333,4.833,0,3.828s3.167,6.505,6.167,6.838s-0.333,3,2.667,3s6.5,1.167,2,3.834s-6.333-3.167-12.5-3.167s-3.167-8.167-6-9.333s-2.667-6.834-0.5-8.834s-3-12.5-8.5-11.271s0,6.105-3.965,11.105s2.965,3.166,0.631,7.828s2.333,4.839,5.333,5.672s2,4.833-1.167,4s-5.167,2.667-1.167,3.333s0.667,7.167,7.167,3s-2.167,4.334,4.667,3.494s3.167,9.673,6,3.173s7.5,8.833,9.974-1.5c1.475-6.16,7.193,0.833,8.36-2.667s6.5,0.834,3.167,2.167s-4,3.166-1.667,5s3.167,3.5-1.833,2.666s-10.5,6.5-6.833,7.334s1.833,2.166-0.5,6.5s8.833,1,9,4.666s-4-0.166-4,4s-3.667,0.334-2.5,4.667s-2.833,2.333-1.167,5.167s4.5-2.667,7.5,0.333s-3.5,7.667-0.833,10.167s7.5-4.334,9.5-3s4,2,3.833-3.334s3,0.334,3.5-9.666s9.5-3,9.667-10.834c0.092-4.333,5.333,1.5,7.167-0.666s-5.167-3-4.333-5.334s6-0.333,8.333-2.5s2.167-3-0.833-4.166s-2.667-4.834,1.174-4.334s2.66-2.833,0.493-5.5s3.333-10.833,6.315-9.5s1.518,13.667,0.518,17.5s-1,12.167,4.167,11.334s10,7.333,11,5.5s-2.833-2,0-6.174s7.5,2.674,8.833,0s-1.667-1.826-1.167-7.659s4.667-2.667,4.667-5.834s4.5-2.833,3-7.506s3.167-2.66,3.5-11.494c0.165-4.359,5.5,1.167,8.833-4.5s6,0.667,10.03-7s6.97,1.334,13.803-4.5c3.803-3.247,0.5-5.666,2.167-9.333s5.5-4.167,6.5,0s6.5,4.167,7.667,1.667s5.833-2.167,5.167,1.333s4,6.833,0.667,8.5s0.833,6-5.5,5.828s-1.333-6.328-3.667-8.495s-8.667,3.5-8.333,7.667s4.667,9.333,2.333,14.333s-3.833,3.334-8.167,3.167s5.5-12.833,0.833-13.167s-2.5,8.167-5.833,8.167s0.5,4.167-4.667,4.333s-2.333,7.167-0.833,9.667s6.5,2.833,6.333,0.667s5.833-5.834,8.5-5.5s-0.167,2.666,1.5,6.333s3.5,0.167,7.167,3.333s-0.667,5.167,2.333,5.667s2.667,7.833,5.833,6.667s-1-2.167,0-5.834s10.5-0.666,10-3.5s8.667-9.166,6.833-11.333s-7.5,2.167-10.833,0.667s1.167-4-2.524-5.834s-3.309-3,3.024-5.333s6.167,3.167,10.667,3.167s5,2,9,1s3.333-4.834,2-8.953s-7.333,0.119-8-3.047s5.667,0.166,5.667-1.834s-7.333-3.833-8.5-6.666S287.167,775,285.167,770s2.833-2.5,1.833-7.105S278.667,766,279.167,760s5.833-1,9.833-4.667s-10.333-3.833-8.167-7s9.167,4.334,11.167,0.667s10,1.5,9.833-6.17c-0.084-3.894,3.667-7.663,5.667-5.997s-2.167,7,1.167,9.5s-2.5,6.5,2.21,7.5s1.457,4.834,3.79,6s4.667,3.5,0.5,7.334s-1,6.333-3,10.166s-2,2.334,2.349,5.834s0.984-1.339,8.651,4.5c4.722,3.596,1.333-3,2.833-5.839s-4.833-7.328-0.667-8.495s-1-4.833,3.333-7s2.5,4,12.167,2.5c5.475-0.85,2.667-11,5-12.5s4.667-11.666,2.167-12.166s-1.333,3.333-3.833,3.333s0.5-2.167-5.5-2.5s-4.167,7-10.5,6.167s-1.167-2.167-5.667-4.8s-3.5-6.034-6.167-9.534s-2.5-7.5,1.167-10.5s3.5,8,8.667,8.167s1.667-3.5,9-5.833s-0.833-9,3.667-10.834s0,5,7.833,4C351.585,716.666,349.5,704,346.25,703.832z M226.5,682.5c-2.333,2.5-0.254,6.967-3.333,11.166c-5.5,7.5-4.833,1.334-7,5.834s-4.167,2.334-6.833,0s-6.5,2.666-9.167,1.833s-6.667,4.833-9.333,4.333s-3.333-1.834-5.5-1s-6.833-1.834-4.833-4s2.5-5.667-2.5-6.5s-7.667,0.5-10.5-1.5s-3.167-1.666-3-6.166s2.479-5.109,1-7.834c-3.167-5.833,4.834-2.999,4.667-6.166s3.5-1.167,6-3.167s0.215-3.699,2.5-4.667c5.147-2.18,8.667-2,6.167,1s5.667,6.614,7,4.891s1-3.555,3.167-2.723s5.334-4.168,8.167-3.668s4.166-2.368,6.833-1.101s3.667,6.107,6.667,7.938s-0.833,5.663,2.5,5.163S228.833,680,226.5,682.5z M64,648.125c2.5,0.75-0.796,4.625-2.335,3.5S61.5,647.375,64,648.125z M86,661.125c-2.5-0.75-3.875,2.375-2.335,3.5S88.5,661.875,86,661.125z M106.665,841.625c1.54,1.125,4.835-2.75,2.335-3.5S105.125,840.5,106.665,841.625z M64.665,817.625c1.54,1.125,4.835-2.75,2.335-3.5S63.125,816.5,64.665,817.625z M17,780.125c-2.5-0.75-3.875,2.375-2.335,3.5S19.5,780.875,17,780.125z M20,831.125c-2.5-0.75-3.875,2.375-2.335,3.5S22.5,831.875,20,831.125z M143,871.125c-2.5-0.75-3.875,2.375-2.335,3.5S145.5,871.875,143,871.125z M160,863.125c-2.5-0.75-3.875,2.375-2.335,3.5S162.5,863.875,160,863.125z M239,834.125c-2.5-0.75-3.875,2.375-2.335,3.5S241.5,834.875,239,834.125z M282,857.125c-2.5-0.75-3.875,2.375-2.335,3.5S284.5,857.875,282,857.125z M291,854.125c-2.5-0.75-3.875,2.375-2.335,3.5S293.5,854.875,291,854.125z M329,790.125c-2.5-0.75-3.875,2.375-2.336,3.5C328.204,794.75,331.5,790.875,329,790.125z M115,673.125c-2.5-0.75-3.875,2.375-2.335,3.5S117.5,673.875,115,673.125z M100.375,714.5c-2.375,1.375,2.125,6.75,3.75,5.5S102.75,713.125,100.375,714.5z M103.375,722.5c-2.375,1.375,2.125,6.75,3.75,5.5S105.75,721.125,103.375,722.5z M61.375,695.5c-2.375,1.375,2.125,6.75,3.75,5.5S63.75,694.125,61.375,695.5z M50.375,786.5c-2.375,1.375,2.125,6.75,3.75,5.5S52.75,785.125,50.375,786.5z M55.375,856.5c-2.375,1.375,2.125,6.75,3.75,5.5S57.75,855.125,55.375,856.5z M213.125,919c1.625-1.25-1.375-6.875-3.75-5.5S211.5,920.25,213.125,919z M182.375,870.5c-2.375,1.375,2.125,6.75,3.75,5.5S184.75,869.125,182.375,870.5z M260.375,862.5c-2.375,1.375,2.125,6.75,3.75,5.5S262.75,861.125,260.375,862.5z M328.375,795.5c-2.375,1.375,2.125,6.75,3.75,5.5S330.75,794.125,328.375,795.5z M262.375,830.5c-2.375,1.375,2.125,6.75,3.75,5.5S264.75,829.125,262.375,830.5z M242.125,814c1.625-1.25-1.375-6.875-3.75-5.5S240.5,815.25,242.125,814z M310.375,792.5c-2.375,1.375,2.125,6.75,3.75,5.5S312.75,791.125,310.375,792.5z M71.333,694c-5,0.667,0.333,3-1.833,5.166s-2,4.167,0,4.666s0.833,1.501,4.833,1.865s4.5-6.197,7.487-6.197s2.513-2.5-1.154-3.167s-1.5-5.167,2.35-7.833s1.431-2.905-2.35-2C77.051,687.366,76.333,693.333,71.333,694z M92.833,694.333c-3.654-1.532-5.487-0.663-5.926,3.167c-0.593,5.167,3.926,3.833,6.426,6.332s5.833,0.001,5.5,3.834s2.833,4.167,4.833,2s-1.667-4-1.525-5.834s-2.642-1.332-4.809-2.645S102.142,698.236,92.833,694.333z M83.017,706.333c-0.563,1.786,7.317,2.833,7.65,0S84.421,701.882,83.017,706.333z M77.167,714.285c0.667,3.119,10,3.881,9.667,0S76.724,712.213,77.167,714.285z M88.333,719.333c0-2.333-1.833-1.5-5.346-1.333s-4.003,7.314-1.988,7.236c2.5-0.097,2.5-0.903,3.078-2.951S88.333,721.666,88.333,719.333z M101.167,729.333c-0.167-1.667-7.414,0.075-5.607,1.333C97.952,732.332,101.333,731,101.167,729.333z M115,736.666c3.833-1.334,1.833-2.666-3.667-4.333s-4,1.667-3.747,3s-0.087,4.667-2.445,4.333s-8.727,2.083-6.142,4.667c1,1,2,1.833,5.265-0.333s10.568,2,10.235,4.666s1.5,1.667,3.333,0s2.5-6.166-2-7.333S111.167,738,115,736.666z M57.667,741.094c3.667,2.261,5.5-1.428,7.333,1.736s6.167-1.497,8-4.997s1.284-5.994-1.5-8.5c-3.333-3-3.333,0.167-3.333,0.707s0.167,3.626-2.902,2.793s-6.098,3-6.098,3.774S54,738.833,57.667,741.094z M71.833,744.666c-3.333,4.5,0.833,7.834,3.667,8.667s2.5-2.5,3.708-5s3.292-0.5,4.867-2.667s-2.741-2.333-1.087-4.572s-2.391-4.69-4.821-2.261c-1.833,1.833,1,3.667-0.654,5.048S75.167,740.166,71.833,744.666z M84.427,760.833c3.407-0.667,2.593-7.405,0-7.369s-3.449,1.241-4.611,1.869c-1.458,0.788-3.184,3.5,0,3S81.02,761.5,84.427,760.833z M71.833,762.895c0,2.562-1.167,3.771,2.233,2.84S76,770.5,79.208,770.5s1.626-1.334,2.79-5.5S71.833,759.483,71.833,762.895z M88.333,773.166c3-0.334,2-4.5,0-7.436s-2.755-2.347-4.259,0.77C82.904,768.926,85.333,773.5,88.333,773.166z M49.697,762.895c0.53-3.105,7.137,0.605,7.303-1.118s4.5-1.11,3.667-2.276s1.833-3.334-3.5-5s-5.667,4.666-11.333,4.333s-5.247,10.77-1.333,10.5C49.333,769,49.167,766,49.697,762.895z M52.142,781.828c1.809,3.328,4.025-1.495,6.525-3.828s2.667-5.667,0-5.758s0-5.242-4.08-5.409s-0.45,4.323-5.753,5.333c-2.554,0.486-4-0.333-3.667,4S50.333,778.5,52.142,781.828z M31.833,788c-2.833,0.667-2.5,6.333,1.667,6S36.247,786.961,31.833,788z M62.5,799.166c2,2.166,1.667-1.333,4-1.333s2.667-4,0-5.646s0.43-3.616-2.483-4.297c-3.317-0.775-3.183,4.775-1.517,6.123S60.5,797,62.5,799.166z M76,793.845c-3.833-0.155-3.13-7.771-6.667-6.028c-2.333,1.15-1.167,1.184,1.266,3.136s-1.432,4.214,2.068,5.548S79.833,794,76,793.845z M84.427,789.236c1.427-2.43,7.407-1.403,7.573-4.07s-4.167-0.666-6.667-3.338s-6.889,1.265-5.333,3.338c2,2.666-4.833,1.334-3.139,4.07S83,791.666,84.427,789.236z M74.066,799.873c-3.267-0.46-11.899,5.293-7.399,6.793S76.965,800.281,74.066,799.873z M92.005,839.166c2.171-3.167,9.329-1.833,9.995-4.666s7-3,5.962-6s2.705-1.667,4.538,1.333s3.167,1.167,3.667-1.5s4.5-4.333,4.333-7.833s1.833-0.667,1.833-4.581s-4-4.586-5-9.063s-2.833-3.522-4.167-1.689s-3.5,0.834-3.26-1.814S101.795,796.581,98,797.5c-2.47,0.598,7.5,7.5,4.5,11.166s-0.333-2.333-6.5-1.811s-0.833,3.645-3.995,4.811s-1.338,7-4.005,8s-1.833-4-5.167-1.838s0.833,5.505-5.201,6.505s-2.799,6.833-1.965,10s3.333,0.667,3.541-1.5S80,831.5,83,834.166s0.167,2-1.667,3.844S89.833,842.333,92.005,839.166z M66.833,851.166c-2.333-0.5-6.324,2.29-2.817,3.5c4.35,1.5,4.817,3.834,7.65,2.334s3.5-2.5,1.183-5.957S69.167,851.666,66.833,851.166z M65.962,848.333c2.628,0.833,4.872-1.5,2.48-3.419s-2.942,0.752-5.81,0.252s-5.885,0.223-3.966,2.334C60.334,849.334,63.333,847.5,65.962,848.333z M70.12,862.188c-1.88-1.146-6.04,2.192-4.158,2.731C68.59,865.672,72,863.333,70.12,862.188z M114.167,919.188c-3-0.979-3.406,1.462-2.833,4.979c0.14,0.858,1.333,4,2.637,3.167s-0.303-4.333,1.697-4S117.167,920.166,114.167,919.188z M141.962,882c-0.471,1.858-0.795,4.666,3.372,4.833s10.333-7.167,13.628-4.833s3.205-2.334,0-3.5s-6.628,1-11.128-0.834S142.462,880.028,141.962,882z M151.547,869.333c-0.786,8.333,2.953,6.833,4.574,5.495s2.378,0.672,4.045,0s-0.833-5.495-4.333-6.641S151.751,867.172,151.547,869.333z M165.167,877.213c2.333,2.88-2.833,7.62,1,10.453s4.667-6.166,2.667-8.333s4.732-3.755,1.833-6.097C166.834,870.14,162.833,874.333,165.167,877.213z M202.5,880.18c4.833,4.18,9.833,0.486,7.167-2.967s0.667-3.213-0.97-6.203s-6.363-1.177-8.53,2.227S200.574,878.514,202.5,880.18z M169.333,834.01c-5.667,1.677-5.401,12.809-2.167,14.156c4,1.666,7.667,1.834,5.333,4.334s10.667,4.333,12.667,1.055s-4.5-3.555-3.47-6.389s-3.863-4-3.53-6.841S175,832.333,169.333,834.01z M191,848.333c4.167-0.5,7,5.333,8.343,2s5.491-0.167,5.534-3.833s-3.543-4.5-5.534-3s-4.176-1.834-5.176,1.002s-5.932-2.032-7.58,1.998C186.014,847.902,186.833,848.833,191,848.333z M197,829c-4.5,0-2-4.5-7.833-2.834s-2.16,7.404-5.024,7.516c-4.691,0.182-2.809,3.318,0,4.146s-0.809,2.505,2.445,2.497s4.08-6.492,10.413-6.644S201.5,829,197,829z M205.667,833.061c-5.5-1.439-6.119,5.435-3.333,4.768c3.5-0.838,0.5,3.172,4.667,3.505s2.5-2.333,6.667-2S211.167,834.5,205.667,833.061z M217.833,846c-3.667,4.167,4.667,6.166,7.833,4S220.705,842.737,217.833,846z M234.167,841.362c-3-0.304-8.387-5.271-7.78-2.529c0.553,2.5,1.113,5.833,3.78,7.333s1.667,2.167,5,0S237.167,841.666,234.167,841.362z M231.729,830.285c6.229,3.452,2.937-8.118-1.896-7.959S225.5,826.833,231.729,830.285z M248.833,816.5c-4.667,1.5-3.876,1.496-7.667,1.167c-3.833-0.333-2.5,2-1.024,2.5s-0.142,4.666,2.445,4.666s4.08,6.334,6.58,3.334s8.5,2.762,12.53-8.667C263.417,814.624,253.5,815,248.833,816.5z M305.333,814.188c0.833-4.146-6.333-3.021-5.167-5.902s-2.151-4.234-4.167-1.452c-0.873,1.205-2.667,4-0.833,5.667s-1.333,1,0.833,4.167S304.5,818.333,305.333,814.188z M299.886,821c-1.963-1.032-4.886,2.167-0.719,3.667s0.333,4.736,5,5.618s7.348-1.579,5.53-5.785C306.167,816.333,302.105,822.167,299.886,821z M351,810c1.5-3-6.266-5.328-10.833-4.69c-3.707,0.518-6.167,2.69-1.667,3.023s4,7.167,7.69,5.667s1.977,5.5,4.991,2.333S349.5,813,351,810z M357.333,814.667c-2.5-0.333-3.833,2.166-0.667,3.701S360.658,815.109,357.333,814.667z M354.811,822.326c-3.522-0.841-4.645,9.507,0,9.341S358.333,823.167,354.811,822.326z M340.333,785.919c0,6.586,4,6.081,8.167,10.248s5.833-0.834,3.714-2.339s-0.837-9.768-0.48-12c0.4-2.505-1.9-5.161,0-8.641s-6.4-7.021-6.9-3.854s2,3.834,1.9,8.834S340.333,779.333,340.333,785.919z M340.333,736c-3.667,0.834-6.667,4.833-2.5,5.539S342.661,735.471,340.333,736z M274.5,907.75c-3,0-2.903-9.728-5-8.875c-4,1.625,1,12.125,5,12.125S277.5,907.75,274.5,907.75z M275.5,898.822c-2.75-0.678-1.75,5.428,0,6.089S278.25,899.5,275.5,898.822z M11,774.896c-2.333-1.438-9.333,8.438-6.667,12.662S15.167,777.465,11,774.896z M3.167,891c-4.5-0.167-4.5,5.834-1.5,6c2.354,0.13,1.667,5.5,5,5.333s3.667-3.166,1.5-5.333S7.667,891.167,3.167,891z"/>
                  <path id="krjs15" fill="#EBECED" stroke="#FFFFFF" vector-effect="non-scaling-stroke" d="M267,443.25c0-2.924-1-9.25,5.25-7.904s10.5-5.346,9.25-11.846s5.5-15-6.5-16.5s-1.5-11.5-6.25-11.5s-5-4.5,1-7c-4.583-6.5-9.417-4.834-13.083-7.834s-6.667-12.666-12.818-2s7.484,7,2.818,15s-1.333,5.667,1.333,16s-5.333,4.334-4,12.515s11.333,0.152,10.473,9.068s2.86,5.084,0.527,14.604s3.667,6.147,6.593,11.607C263.272,452.321,267,455.254,267,443.25z"/>
                  <path id="krjs16" fill="#EBECED" stroke="#FFFFFF" vector-effect="non-scaling-stroke" d="M184.667,212c4.5,3,5.333,8.167,7.167,9.5c1.944,1.414,1.667,3.5,0.333,5.667s3,5.833,6,4.167s4,1.167,4.833,5s3.5,4.833,5.5,2.333s3,1.679,12.167-1.667c2.476-0.903,5.667-2,7,1.5s7.333,1.5,8.667-1.667S245,235,244.667,232.5s1.333-2.5,3.167-4.167s2.5-4.667-0.333-4.833s-0.833-4,3.333-4.5s2.833-3.333,1-7.833s-8,2.833-11.5,0.5s4.333-6.5,1.167-8.667s1.833-2.833-1.167-5.667s0.5-7-4-10.333s-4.833,1.333-8.667-0.5s-3.667,0.667-6.833,2.167s0.333,7.333-3.167,7.821s-0.833-4.321-4.5-4.154s-1.333,2.833-5,4.154s-3.667,6.512-3.333,9.846s0,3.5-4.833,5.833s-5.333-6.333-11.333-4.167C189,211.167,185.834,210.167,184.667,212z"/>
                  <path id="krjs17" fill="#EBECED" stroke="#FFFFFF" vector-effect="non-scaling-stroke" d="M593.5,586.75c-9.168-3.193,0-9.5-5.75-9.75s-2.75-7.25-8.75-3s-12.75-2.25-18.5,5s4.25,7.75,0,10s-4.75-1.75-10,3.182c2.5,15.568-6.086,5.568-3.918,15.568s6.668,1.5,14.668,7s3.75,10.172,11,14.086S579,626.25,582,631s2.5,5.5,0,8.75c4,4.25,8.5-4.25,11.75,0s-3.25,8.75,6,11.25c2.75-5.75,11.25-4.5,6.5-9.25s4.5-1.25-0.5-12.914c-3.176-7.409,4.25-2.586,4.5-9.086s-4-3.75-3.5-7.75s5-0.5,6.5,6s5.416,2.666,5.75-1.667s4-3.333,5.333-14s-5.333-6.666-1-15.333C601.998,577.834,599.001,588.666,593.5,586.75z"/>
                </g>
          
                <g id="visnames">
                  <text id="krjsvn1" transform="matrix(1 0 0 1 545 687)" font-size="20">부산</text>
                  <text id="krjsvn2" transform="matrix(1 0 0 1 267 354)" font-size="20">충청북도</text>
                  <text id="krjsvn3" transform="matrix(1 0 0 1 99 384)" font-size="18">충청남도</text>
                  <text id="krjsvn4" transform="matrix(1 0 0 1 493 540)" font-size="20">대구</text>
                  <text id="krjsvn5" transform="matrix(1 0 0 1 225 475)" font-size="18">대전</text>
                  <text id="krjsvn6" transform="matrix(1 0 0 1 365 177)" font-size="21">강원도</text>
                  <text id="krjsvn7" transform="matrix(1 0 0 1 208 679)" font-size="21">광주</text>
                  <text id="krjsvn8" transform="matrix(1 0 0 1 200 275)" font-size="21">경기도</text>
                  <text id="krjsvn9" transform="matrix(1 0 0 1 380 451)" font-size="23">경상북도</text>
                  <text id="krjsvn10" transform="matrix(1 0 0 1 349 645)" font-size="18">경상남도</text>
                  <text id="krjsvn11" transform="matrix(1 0 0 1 35 235)" font-size="20">인천</text>
                  <text id="krjsvn12" transform="matrix(1 0 0 1 131 988)" font-size="21">제주</text>
                  <text id="krjsvn13" transform="matrix(1 0 0 1 184 581)" font-size="22">전라북도</text>
                  <text id="krjsvn14" transform="matrix(1 0 0 1 159 736)" font-size="21">전라남도</text>
                  <text id="krjsvn15" transform="matrix(1 0 0 1 207 439)" font-size="18">세종</text>
                  <text id="krjsvn16" transform="matrix(1 0 0 1 222 209)" font-size="24">서울</text>
                  <text id="krjsvn17" transform="matrix(1 0 0 1 559 609)" font-size="20">울산</text>
                </g>
                <g><!-- overseas -->
                  <path fill="none" stroke="#6b8b9e" d="M617.362,221.371c0,0.971,0.013,1.97,0.038,2.997"/>
                  <path fill="none" stroke="#6b8b9e" stroke-dasharray="5.4718,5.4718" d="M617.652,229.832c1.004,15.142,4.736,34.274,13.143,49.919"/>
                  <path fill="none" stroke="#6b8b9e" d="M632.134,282.144c0.505,0.867,1.025,1.721,1.562,2.561"/>
          
                  <path fill="none" stroke="#6b8b9e" d="M46.667,96c0.09,0.965,0.179,1.961,0.263,2.985"/>
                  <path fill="none" stroke="#6b8b9e" stroke-dasharray="5.8517,5.8517" d="M47.322,104.822c1.02,19.941-1.18,46.631-23.154,59.449"/>
                  <path fill="none" stroke="#6b8b9e" d="M21.589,165.664c-0.879,0.439-1.787,0.858-2.725,1.255"/>
          
                  <path fill="none" stroke="#6b8b9e" stroke-dasharray="6" d="M64,966c22-14.667,73.977-59.221,173.988-20.61"/>
                </g>
                <g id="krjspins"></g>
              </svg>
            </div>
          </div>
          <div class="clear"></div>
        </div>
      </div>
    </div>
  </div>
</section>
<!-- =======================
Services END -->


<!-- =======================
Special offer START -->
<section>
  <div class="container">
    <!-- Title -->
    <div class="row mb-4">
      <div class="col-12">
        <h5 class="mb-0">문화 커넥터가 준비한 2024년 쿠폰<span style="color: rgb(240, 130, 80);"> (회원 혜택)</span> </h4>
      </div>
    </div>

    <div class="row g-4">
      <!-- Card item -->
      <div class="col-sm-6 col-lg-4 col-xl-3">
        <div class="card bg-success bg-opacity-10 h-100 p-4">
          <!-- Image -->
          <img src="assets/images/client/07.svg" class="w-75" alt="" />
          <!-- Card body START -->
          <div class="card-body mt-4 p-0">
            <span class="mb-1">2024/01~</span>
            <h4 class="mb-1">15% 최대할인</h4>
            <h6 class="fw-normal">문화 커넥터</h6>

            <div
              class="d-flex justify-content-between align-items-center mt-4"
            >
              <div
                class="bg-primary bg-opacity-10 border border-2 border-primary border-dashed rounded-2 px-3 py-2"
              >
                <h5 class="fw-normal user-select-all mb-0">MON203</h5>
              </div>
              <a href= "${pageContext.request.contextPath}/cultureNews3" class="btn btn-lg btn-white btn-round mb-0"
                ><i class="bi bi-arrow-right"></i
              > </a>
            </div>
          </div>
          <!-- Card body END -->
        </div>
      </div>

      <!-- Card item -->
      <div class="col-sm-6 col-lg-4 col-xl-3">
        <div class="card bg-danger bg-opacity-10 h-100 p-4">
          <!-- Image -->
          <img src="assets/images/client/08.svg" class="w-75" alt="" />
          <!-- Card body START -->
          <div class="card-body mt-4 p-0">
            <span class="mb-1">2023/11/22~</span>
            <h4 class="mb-1">10% 할인</h4>
            <h6 class="fw-normal">신라호텔</h6>

            <div
              class="d-flex justify-content-between align-items-center mt-4"
            >
              <div
                class="bg-primary bg-opacity-10 border border-2 border-primary border-dashed rounded-2 px-3 py-2"
              >
                <h5 class="fw-normal user-select-all mb-0">LOG125F</h5>
              </div>
              <a href="${pageContext.request.contextPath}/cultureNews3" class="btn btn-lg btn-white btn-round mb-0"
                ><i class="bi bi-arrow-right"></i
              ></a>
            </div>
          </div>
          <!-- Card body END -->
        </div>
      </div>

      <!-- Card item -->
      <div class="col-sm-6 col-lg-4 col-xl-3">
        <div class="card bg-info bg-opacity-10 h-100 p-4">
          <!-- Image -->
          <img src="assets/images/client/09.svg" class="w-75" alt="" />
          <!-- Card body START -->
          <div class="card-body mt-4 p-0">
            <span class="mb-1">2023/11/01~</span>
            <h4 class="mb-1">KTX 티켓 할인권</h4>
            <h6 class="fw-normal">KTX</h6>

            <div
              class="d-flex justify-content-between align-items-center mt-4"
            >
              <div
                class="bg-primary bg-opacity-10 border border-2 border-primary border-dashed rounded-2 px-3 py-2"
              >
                <h5 class="fw-normal user-select-all mb-0">LOG126F</h5>
              </div>
              <a href="${pageContext.request.contextPath}/cultureNews3" class="btn btn-lg btn-white btn-round mb-0"
                ><i class="bi bi-arrow-right"></i
              ></a>
            </div>
          </div>
          <!-- Card body END -->
        </div>
      </div>
    </div>
  </div>
</section>
<!-- 쿠폰 section끝 -->
<!-- =======================
Blog START-->
<section class="pt-md-0" style="background-color: #fff3f8; padding: 0; margin-bottom: 0;">
  <div class="container">
    <!-- 타이틀 시작 -->
    <div class="row mb-3 mb-sm-4">
      <div class="col-12 text-center">
        <h4 class="mb-4" style="margin-top: 20px;"><a href="review-talk1.html">여행후기 ></a></h4>
      </div>
    </div>

    <div class="row g-4 g-xl-5 justify-content-between">
      <div class="col-md-6">
        <!-- Card START -->
        <div class="card bg-transparent">
          <!-- Image -->
          <img src="${pageContext.request.contextPath}/resources/images/category/main/18.jpg" class="card-img" alt="" />

          <!-- Card body -->
          <div class="card-body px-3">
            <h4>
              <a href="review-talk1.html" class="stretched-link"
                >'서울에서 즐기는 아이스 스케이트장'</a
              >
            </h4><br>
            <p>작성자 'kimje11'님</p>
          </div>
        </div>
        <!-- Card END -->
      </div>

      <div class="col-md-6">
        <!-- Card START -->
        <div class="card bg-transparent mb-4 mb-md-5">
          <div class="row align-items-center">
            <!-- Images -->
            <div class="col-sm-4">
              <img
                src="${pageContext.request.contextPath}/resources/images/category/main/20.jpg"
                class="card-img"
                alt=""
              />
            </div>
            <div class="col-sm-8">
              <!-- card body -->
              <div class="card-body p-sm-0">
                <h5 class="card-title">
                  <a href="review-talk1.html" class="stretched-link"
                    >'이태원에서 즐기는 재즈바'</a
                  >
                </h5><br>
                <p>작성자 'itaewon20'님</p>
              </div>
            </div>
          </div>
        </div>
        <!-- Card END -->

        <!-- Card START -->
        <div class="card bg-transparent mb-4 mb-md-5">
          <div class="row align-items-center">
            <!-- Images -->
            <div class="col-sm-4">
              <img
                src="${pageContext.request.contextPath}/resources/images/category/main/22.jpg"
                class="card-img"
                alt=""
              />
            </div>
            <div class="col-sm-8">
              <!-- card body -->
              <div class="card-body p-sm-0">
                <h5 class="card-title">
                  <a href="review-talk1.html" class="stretched-link"
                    >'가을에 떠난 경복궁 여행'</a
                  >
                </h5><br>
                <p>작성자 'seoulTour'님</p>
                
              </div>
            </div>
          </div>
        </div>
        <!-- Card END -->


</section>

</main>


<jsp:include page="/WEB-INF/views/common/footer.jsp"/>

<!-- 부트스트랩 -->
	<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
	<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-rbs5vr9i87q4ys1q2ny46u1p7e3c9h5o1u8e4onq18ebL5uFi06e7Jk7b57lPtw" crossorigin="anonymous"></script>

<!-- Vendors -->
<script src="https://cdn.jsdelivr.net/npm/tiny-slider@2.9.3/dist/tiny-slider.js"></script>
<script src="https://cdn.jsdelivr.net/npm/purecounterjs@1.1.1/dist/purecounter_vanilla.js"></script>
<script src="https://cdn.jsdelivr.net/npm/glightbox@1.0.0/dist/js/glightbox.js"></script>
<script src="https://cdn.jsdelivr.net/npm/flatpickr@4.6.6/dist/flatpickr.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/choices@10.3.0/public/assets/scripts/choices.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/jarallax@1.11.0/dist/jarallax.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/jarallax@1.11.0/dist/jarallax-video.min.js"></script>

<!-- ThemeFunctions -->
<script src="${pageContext.request.contextPath}/resources/js/functions.js"></script>
	
</body>
</html>