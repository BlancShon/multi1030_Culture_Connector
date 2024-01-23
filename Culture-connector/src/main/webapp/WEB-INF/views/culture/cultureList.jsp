


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
/*  	section#board-list-container{width:600px; margin:0 auto; text-align:center;}
	section#board-list-container h2{margin:10px 0;}
	table#tbl-board{width:100%; margin:0 auto; border:1px solid black; border-collapse:collapse; clear:both; }
	table#tbl-board th, table#tbl-board td {border:1px solid; padding: 5px 0; text-align:center;} 
	input#btn-add{float:right; margin: 0 0 15px;}
	div#pageBar{margin-top:10px; text-align:center; background-color:rgba(0, 188, 212, 0.3);}
    .blue_window { display: inline-block; width: 366px;  border: 3px solid #6ccaf5; }
    .input_text { width: calc( 100% - 14px); margin: 6px 7px; border: 0;  background: #007dd100; font-weight: bold;font-size: 16px; outline: none;}
    .sch_smit {width: 54px; height: 40px; margin: 0; border: 0; vertical-align: top; background: #007dd1; color: white; font-weight: bold; border-radius: 1px; cursor: pointer;}
    .sch_smit:hover {background: #007dd1;}
    #board-list-container h2{text-align: center; margin-top: 5px; margin-bottom: 5px}  */
    
    

</style>

	
	
<jsp:include page="/WEB-INF/views/common/cultureheader.jsp">
	<jsp:param value="문화시설 목록" name="title"/>
</jsp:include>



		 <title>문화 테마 - 문화 관광지 html입니다.</title>
		 
		 
		  


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
	
		<!-- 검색창 끝 --> --%>
		
        <!--서치바-->
        <div class="container ">
            <h4 class="mx-4 text-primary">떠나고 싶은 지역을 검색하세요!</h4>
            
            <form action="${path}/culture/list" method="get" name="searchForm">
            <input type="hidden" name="page" value="1">
            	<div style="margin-top: 30px">
            	<label style="margin-left: 40px"><input type="radio" name="searchType" value="title" 
											<%-- ${searchType == 'title' ? 'checked' : ''} --%> /> 제목</label>
				<label style=""><input type="radio" name="searchType" value="address"
											${searchType == 'address' ? 'checked' : ''} /> 주소</label>
				
				<input style="border: none; width: 300px;"  placeholder="(검색할 카테고리를 선택하세요.)">
				</div>	
				
									
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
											<%-- ${checkBox == 'seoul' ? 'checked' : ''} --%> />서울</label>
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
											${checkBox == 'chungnam' ? 'checked' : ''}/>충남</label>
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
                                                	<c:choose> 
                                                	<c:when test="${empty item.firstimage and empty item.firstimage2}">
                                                	<img alt="" src="${pageContext.request.contextPath}/resources/images/library.jpg">
                                                	</c:when> 
                                                	<c:otherwise>
                                                    <img src="${item.firstimage}" class="rounded" alt="${item.firstimage2}"
                                                        style="width: 400px; height: 200px;">
                                                      </c:otherwise> 
                                                    </c:choose>     
                                                </div>
                                            </div>

				
                                            <!-- Card title and rating -->
                                            <div class="col-sm-6 col-md-4 col-xl-6">
                                                <h5 class="card-title mb-2">
                                                <a href="${path}/culture/detail?no=${item.cno}">
                                                <c:out value="${item.title}"/></a>
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
                           		 <button style="border: none; background: none;" onclick="movePage(${pageInfo.nextPage});"><img src="${pageContext.request.contextPath}/resources/images/arrow-next.svg" style="width: 25px"></button>
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

$(".form-check-input").change(function(){
	  if($(this).prop('checked') == true){
		  searchForm.submit();
	  }
	});
	
console.log(document.location.href)
</script>

<script type="text/javascript">
	
	

</script>
