


<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>


<head>


	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/all.min.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/bootstrap-icons.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/flatpickr.min.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/choices.min.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/nouislider.css">
	<link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.1.0/css/bootstrap.min.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
	
	    <!-- Theme CSS -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css">
    <link href="${pageContext.request.contextPath}/resources/css/main.css" rel="stylesheet" />


</head>


<style>
 	section#board-list-container{width:600px; margin:0 auto; text-align:center;}
	section#board-list-container h2{margin:10px 0;}
	table#tbl-board{width:100%; margin:0 auto; border:1px solid black; border-collapse:collapse; clear:both; }
	table#tbl-board th, table#tbl-board td {border:1px solid; padding: 5px 0; text-align:center;} 
	input#btn-add{float:right; margin: 0 0 15px;}
	div#pageBar{margin-top:10px; text-align:center; background-color:rgba(0, 188, 212, 0.3);}
    .blue_window { display: inline-block; width: 366px;  border: 3px solid #6ccaf5; }
    .input_text { width: calc( 100% - 14px); margin: 6px 7px; border: 0;  background: #007dd100; font-weight: bold;font-size: 16px; outline: none;}
    .sch_smit {width: 54px; height: 40px; margin: 0; border: 0; vertical-align: top; background: #007dd1; color: white; font-weight: bold; border-radius: 1px; cursor: pointer;}
    .sch_smit:hover {background: #007dd1;}
    #board-list-container h2{text-align: center; margin-top: 5px; margin-bottom: 5px} 
    
    

</style>

	
	
<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param value="문화시설 목록" name="title"/>
</jsp:include>



		 <title>문화 테마 - 문화 관광지 html입니다.</title>
		 
		 
		  <header class="navbar-light header-sticky" style="font-weight: bold;">
        <!-- Logo Nav START -->
        <nav class="navbar navbar-expand-xl">
            <div class="container">
                <!-- Logo START -->
                <a class="navbar-brand" href="main.html">
                    <img style="height: 100px" class="light-mode-item navbar-brand-item"
                        src="${pageContext.request.contextPath}/resources/images/logo-culture-light.png" alt="logo">
                    <img style="height: 100px" class="dark-mode-item navbar-brand-item"
                        src="${pageContext.request.contextPath}/resources/images/logo-culture.png" alt="logo">

                </a>
                <!-- Logo END -->

                <!-- Responsive navbar toggler -->
                <button class="navbar-toggler ms-auto ms-sm-0 p-0 p-sm-2" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false"
                    aria-label="Toggle navigation">
                    <span class="navbar-toggler-animation">
                        <span></span>
                        <span></span>
                        <span></span>
                    </span>
                    <span class="d-none d-sm-inline-block small">Menu</span>
                </button>

                <!-- Responsive category toggler -->
                <button class="navbar-toggler ms-sm-auto mx-3 me-md-0 p-0 p-sm-2" type="button"
                    data-bs-toggle="collapse" data-bs-target="#navbarCategoryCollapse"
                    aria-controls="navbarCategoryCollapse" aria-expanded="false" aria-label="Toggle navigation">
                    <i class="bi bi-grid-3x3-gap-fill fa-fw"></i><span
                        class="d-none d-sm-inline-block small">Category</span>
                </button>

                <!-- Main navbar START -->
                <div class="navbar-collapse collapse" id="navbarCollapse">
                    <ul class="navbar-nav navbar-nav-scroll me-auto">

                        <!-- Nav item 홈  -->
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="main.html">홈</a>
                        </li>

                        <!-- Nav item 문화 테마 -->
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="pagesMenu" data-bs-toggle="dropdown"
                                aria-haspopup="true" aria-expanded="false">문화 테마</a>
                            <ul class="dropdown-menu" aria-labelledby="pagesMenu">

                                <li> <a class="dropdown-item" href="cluture-theme1.html">문화 관광지</a></li>
                                <li> <a class="dropdown-item" href="cluture-theme2.html">문화 예술 공연</a></li>
                                <li> <a class="dropdown-item" href="cluture-theme3.html">지역 문화 축제</a></li>
                                <li> <a class="dropdown-item" href="cluture-theme4.html">액티비티/원데이 클래스</a></li>

                            </ul>
                        </li>

                        <!-- Nav item 음식 투어  -->
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="cuisine-tour.html">음식 투어</a>
                        </li>

                        <!-- Nav item 문화 소식 -->
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="pagesMenu" data-bs-toggle="dropdown"
                                aria-haspopup="true" aria-expanded="false">문화 소식</a>
                            <ul class="dropdown-menu" aria-labelledby="pagesMenu">

                                <li> <a class="dropdown-item" href="cluture-news1.html">문화 기사</a></li>
                                <li> <a class="dropdown-item" href="cluture-news2.html">문화 코스</a></li>
                                <li> <a class="dropdown-item" href="cluture-news3.html">쿠폰/혜택</a></li>

                            </ul>
                        </li>

                        <!-- Nav item 리뷰(수다톡) -->
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="pagesMenu" data-bs-toggle="dropdown"
                                aria-haspopup="true" aria-expanded="false">리뷰(수다톡)</a>
                            <ul class="dropdown-menu" aria-labelledby="pagesMenu">

                                <li> <a class="dropdown-item" href="review-talk1.html">리뷰 게시판</a></li>
                                <li> <a class="dropdown-item" href="review-talk2.html">리뷰 참여하기</a></li>

                            </ul>
                        </li>

                        <!-- Nav item 문화(여행) 지도  -->
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="cluture-tour-map.html">문화(여행) 지도</a>
                        </li>



                        <!-- 로그인 하기 전 나중에 자바스크립트로 같은거로 로그인 상태 확인뒤에 보이거나 안보이게-->
                        <li class="nav-item" id="login">
                            <a class="nav-link active" aria-current="page" href="login.html">로그인</a>
                        </li>

                        <!-- Nav item 회원 정보 로그인 전/후 차이 둬야할듯-->
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="pagesMenu" data-bs-toggle="dropdown"
                                aria-haspopup="true" aria-expanded="false">회원 정보</a>
                            <ul class="dropdown-menu" aria-labelledby="pagesMenu">

                                <li> <a class="dropdown-item" href="inform.html">내 정보</a></li>
                                <li> <a class="dropdown-item" href="review-talk2.html">비밀번호 변경</a></li>
                                <li> <a class="dropdown-item" href="review-talk2.html">SNS 로그인 연동</a></li>
                                <li> <a class="dropdown-item" href="review-talk2.html">북마크/리뷰 관리</a></li>
                                <li> <a class="dropdown-item" href="review-talk2.html">로그아웃</a></li>

                            </ul>
                        </li>


                    </ul>
                </div>
                <!-- Main navbar END -->

                <!-- Toggler button and stay button -->
                <div class="d-flex align-items-center justify-content-end">
                    <!-- Responsive navbar toggler -->
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                        data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false"
                        aria-label="Toggle navigation">
                        <span class="navbar-toggler-animation">
                            <span></span>
                            <span></span>
                            <span></span>
                        </span>
                        <span class="d-none d-sm-inline-block small">Menu</span>
                    </button>


                </div>
            </div>
            
          
       
        </nav>

    </header>


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

    <br>
<br>



	<%-- 	<!-- 검색창 시작 -->
		 <form name="searchForm" action="${path}/culture/list" method="get">
			<input type="hidden" name="page" value="1">
			
			<!-- 카테고리 checkbox -->	
			<div style="text-align: center;">
				<c:forEach var="item" items="${categoryList}">
					<label>
						<input type="checkbox" name="types" value="${item.type}"
							${fn:contains(typeList, item.type) ? 'checked' : ''} >
						${item.name}
					</label>
				</c:forEach>
			</div>
			
			<!-- 검색창 -->	
			<div style="text-align: center;">
				<label><input type="radio" name="searchType" value="title" 
											${searchType == 'title' ? 'checked' : ''} />제목</label>
				<label><input type="radio" name="searchType" value="content"
											${searchType == 'address' ? 'checked' : ''} />내용</label>
				
				<span class="blue_window"> 
				<input type="text" id="searchValue" name="searchValue" class="input_text" 
																	value="${param.searchValue}" />
				</span>
				<button type="submit" class="sch_smit">검색</button>
				<button type="reset" class="sch_smit">초기화</button>
			</div>
		</form> 
		<!-- 검색창 끝 --> --%>

        <!--서치바-->
        <div class="container ">
            <h4 class="mx-4 text-primary">떠나고 싶은 지역을 검색하세요!</h4>
            
            <form action="${path}/culture/list" method="get" name="searchForm">
            <input type="hidden" name="page" value="1">
            	<label><input type="radio" name="searchType" value="title" 
											${searchType == 'title' ? 'checked' : ''} />제목</label>
				<label><input type="radio" name="searchType" value="content"
											${searchType == 'address' ? 'checked' : ''} />주소</label>
                <div class="mx-auto mt-3 search-bar input-group mb-3 z-index-1 px-4" style="font-family: 'SUIT-Medium'"
                    id="search">
                    <input onkeyup="filter()" id="serchinput" type="text" name="searchValue" value="${param.searchValue}"
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
                                    <label><input class="form-check-input" type="checkbox" name="checkBox" value="seoul"  
											${checkBox == 'seoul' ? 'checked' : ''} />서울</label>
                                </div>
                            </li>
                            <li class="list-inline-item">
                                <div class="form-check">
                                    <label><input class="form-check-input" type="checkbox" name="checkBox" value="gyeonggi" 
											${checkBox == 'gyeonggi' ? 'checked' : ''} />경기</label>
                                </div>
                            </li>
                            <li class="list-inline-item">
                                <div class="form-check">
                                    <label><input class="form-check-input" type="checkbox" name="checkBox" value="chungnam" 
											${checkBox == 'chungnam' ? 'checked' : ''} />충남</label>
                                </div>
                            </li>
                            <li class="list-inline-item">
                                <div class="form-check">
                                     <label><input class="form-check-input" type="checkbox" name="checkBox" value="chugbuk" 
											${checkBox == 'chugbuk' ? 'checked' : ''} />충북</label>
                                </div>
                            </li>
                            <li class="list-inline-item">
                                <div class="form-check">
                                    <label><input class="form-check-input" type="checkbox" name="checkBox" value="kangwon" 
											${checkBox == 'kangwon' ? 'checked' : ''} />강원</label>
                                </div>
                            </li>
                            <li class="list-inline-item">
                                <div class="form-check">
                                   <label><input class="form-check-input" type="checkbox" name="checkBox" value="Jeonbuk" 
											${checkBox == 'Jeonbuk' ? 'checked' : ''} />전북</label>
                                </div>
                            </li>

                            <li class="list-inline-item">
                                <div class="form-check">
                                    <label><input class="form-check-input" type="checkbox" name="checkBox" value="Jeonnam" 
											${checkBox == 'Jeonnam' ? 'checked' : ''} />전남</label>
                                </div>
                            </li>

                            <li class="list-inline-item">
                                <div class="form-check">
                                   <label><input class="form-check-input" type="checkbox" name="checkBox" value="jeju" 
											${checkBox == 'jeju' ? 'checked' : ''} />제주</label>
                                </div>
                            </li>
                        </ul> 
                         <button class="btn btn-primary" type="submit">체크박스 전송</button>
                    </div>
                    <br>
                 
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
                        <form name="cultureList" action="${path}/culture/list" method="get">
                        <c:if test="${not empty list}">
                        
                        <div class="row mt-5">
                             <!-- Card item START -->
                             <c:forEach var="item" items="${list}">
                             <div class="col-6  ">
                                <div class="card">
                                    <div class="card-body pt-2">
                                        <div class="row g-2 g-sm-4 ">
                                            <!-- Card image -->
                                            <div class="col-md-6 col-xl-6">
                                                <div>
                                                	<c:if test="${item.firstimage == null and item.firstimage2 == null}">
                                                	<img alt="" src="${pageContext.request.contextPath}/resources/images/library.jpg">
                                                	</c:if>
                                                    <img src="${item.firstimage}" class="rounded" alt="${item.firstimage2}"
                                                        style="width: 400px; height: 200px;">
                                                        
                                                </div>
                                            </div>

                                            <!-- Card title and rating -->
                                            <div class="col-sm-6 col-md-4 col-xl-6">
                                                <h5 class="card-title mb-2"><a href="culture_detail.html">${item.title}</a>
                                                </h5>
                                                <!-- Nav divider -->
                                               
                                                <ul class="nav nav-divider h6 fw-normal mb-2">
                                                    <li>${item.addr1}&nbsp</li>
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
                            </c:forEach>
                        </div>
                        ----
                        
                        </c:if>
                        </form>
                    </div>
                    <!-- Main content END -->
                    <!-- Pagination -->
                   
                    
                </div> <!-- Row END -->

                	<!-- page부 시작 -->
                	
                	 <nav class="d-flex justify-content-center mt-3" aria-label="navigation">
                        <ul class="pagination pagination-primary-soft d-inline-block d-md-flex rounded mb-0">
                            <li class="page-item mb-0"><a class="page-link" href="#" tabindex="-1">
                                    <button style="border: none; background: none;" onclick="movePage(${pageInfo.prevPage});"><img src="${pageContext.request.contextPath}/resources/images/arrow-prev-svgrepo-com.svg" style="width: 25px"></button>
                                    </a>
                            </li>
                             <c:forEach begin="${pageInfo.startPage}" end="${pageInfo.endPage}" varStatus="status" step="1" >
                             <c:if test="${status.current == pageInfo.currentPage}">
								<li class="page-item active"><a class="page-link" href="#"><button style="border: none; background: none;">${status.current}</button></a></li>
						    </c:if> 
						    <c:if test="${status.current != pageInfo.currentPage}">
							<li class="page-item " aria-current="page"> <a class="page-link" href="#"><button style="border: none; background: none;" onclick="movePage(${status.current});"> ${status.current}</button></a></li>
							</c:if>
                            </c:forEach>
                             <li class="page-item mb-0"><a class="page-link" href="#" tabindex="-1">
                           		 <button style="border: none; background: none;"  none;" onclick="movePage(${pageInfo.nextPage});"><img src="${pageContext.request.contextPath}/resources/images/arrow-next.svg" style="width: 25px"></button>
                             	</a>
                           	</li>
                                        
                      
                        </ul>
                    </nav>
<%-- 			<div align="center">
				<!-- 가장 단순화된 버전 = 검색어가 없는 경우 -->
<!-- 			처음 페이지로 이동하는 코드 -->
	 			<button onclick="location.href='${path}/board/list?page=1'">&lt;&lt;</button> 
<!-- 			이전 페이지로 이동하는 코드 -->
	 			<button onclick="location.href='${path}/board/list?page=${pageInfo.prevPage}'">&lt;</button> 
				
				<!-- 처음 페이지 -->
				<button onclick="movePage(1);">&lt;&lt;</button>
				<!-- 이전 페이지 -->
				<button onclick="movePage(${pageInfo.prevPage});">&lt;</button>
				
				<!-- 10개의 페이지가 보이는 영역 -->
				<c:forEach begin="${pageInfo.startPage}" end="${pageInfo.endPage}" varStatus="status" step="1" >
					<!-- 현재 페이지 일때 button을 다르게 표기 하기 위한 영역 -->
					<c:if test="${status.current == pageInfo.currentPage}">
						<button disabled >
							${status.current}
						</button>
					</c:if>
					<c:if test="${status.current != pageInfo.currentPage}">
						<button onclick="movePage(${status.current});">
							${status.current}
						</button>
					</c:if>
				</c:forEach>
				
				<!-- 다음 페이지 -->
				<button onclick="movePage(${pageInfo.nextPage});">&gt;</button>
				<!-- 마지막 페이지 -->
				<button onclick="movePage(${pageInfo.maxPage});">&gt;&gt;</button>
			</div> --%>
		<!-- page부 끝 -->

					
					
					 
					
				
    
				


    </section>

    </main>






</body>
		 
		 



<jsp:include page="/WEB-INF/views/common/footer.jsp"/>




<script type="text/javascript">
	function movePage(page){
		searchForm.page.value = page;
		searchForm.submit();
	}
</script>



<script type="text/javascript">

	

</script>
