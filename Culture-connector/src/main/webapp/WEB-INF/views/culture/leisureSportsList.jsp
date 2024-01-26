<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>


<jsp:include page="/WEB-INF/views/common/cultureheader.jsp">
	<jsp:param value="Culture Connector" name="title"/>
</jsp:include>

<style>
.row.g-4 .card {
    width: 100%;
   
}
</style>
<section class="d-flex align-items-center dark-overlay bg-cover" style="background-image: url(https://www.nzski.com/media/2270/2017_coronetpeak_hero_0508-edit.jpg?center=0.63970588235294112,0.57024793388429751&quality=90&width=1920&height=1080&mode=crop); background-size: cover; background-position: center;">
	<div class="container py-6 py-lg-7 text-white overlay-content text-left ml-lg-0 ml-md-0 ml-0"> 
		<div class="row">
			<div class="col-xl-10 mx-auto">
				<h2 class="text-uppercase fs-1 mt-8" style="color:white;  top: -50px;"><span>액티비티 / 원데이 클래스</span> <br> </h2>
				<h5 class="text-white" style=" top: -30px;">친구와 가족들과 함께 즐기는 활동</h5>
			</div>
		</div>
	</div>
</section>




<div class="container">

  <!-- Search START -->
<!-- Booking from START -->
<div class="container">
<div class="bg-mode shadow rounded-3 p-4" >
	  <!--서치바-->
        <div class="row g-4 align-items-center">
            
            
            <form action="${path}/leports/list" method="get" name="searchForm">
            <input type="hidden" name="page" value="1">
            	<div class="col-md-12 col-lg-12"">
            	<label class="h6 fw-normal mb-0"><i class="bi bi-search text-primary me-1"></i>액티비티/원데이클래스</label>
            	<label style="margin-left: 40px"><input type="radio" name="searchType" value="title" 
											<%-- ${searchType == 'title' ? 'checked' : ''} --%> /> 제목</label>
				<label style=""><input type="radio" name="searchType" value="address"
											${searchType == 'address' ? 'checked' : ''} /> 주소</label>
				
				<input style="border: none; width: 300px;"  placeholder="(검색할 카테고리를 선택하세요.)">
				</div>	
				
									
                <div class="mx-auto mt-3 search-bar input-group mb-3 z-index-1 px-4" style="font-family: 'SUIT-Medium'"
                    id="search">
                    
                    <input onkeyup="filter()" id="serchinput" type="text" name="searchValue" value="${param.searchValue}"
                        class="form-control" placeholder="여행지를 입력하세요. ex)서울, 부산 등">
                    <button class="btn btn-lg btn-dark mb-0" type="submit"
                        style="margin-left: -80px;">검색</button>
                </div>              
         		
                <div class="container mx-4 mt-n1">
                    <div class="filter-block">
                        <h6 class="mb-3">지역</h6>
                        <ul class="list-inline mb-0">
                            <li class="list-inline-item">
                                <div class="form-check">
                                	<input type="hidden" class="SelectedcheckBox" value="${checkBox}" >
                                    <label><input class="form-check-input" type="checkbox" name="checkBox" value="seoul" 
											${checkBox == 'seoul' ? 'checked' : ''}  />서울</label>
											
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

</div>

	<!-- Booking from END -->
</div>


<!-- Search END -->



<!-- =======================
Featured Hotels START -->
<section>
	<div class="container">

		<!-- Title -->
		<div class="row mb-4">
			<div class="col-12 text-center">
				<h3 class="mb-0 fs-4">문화커넥트 Pick!</h3>

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
						<img src="https://cdn.visitkorea.or.kr/img/call?cmd=VIEW&id=e6b8ff5b-1ff4-43d5-a1f5-571846b3cbb5" class="card-img" alt="hotel image">
						<!-- Badge -->
						<div class="position-absolute bottom-0 start-0 p-3">
							<div class="badge text-bg-dark fs-6 rounded-pill stretched-link"><i class="bi bi-geo-alt me-2"></i>부산</div>
						</div>
					</div>

					<!-- Card body -->
					<div class="card-body px-2">
						<!-- Title -->
						<h5 class="card-title"><a href="culture-theme2-detail.html" class="stretched-link">2024 스카마켓</a></h5>
						<!-- 기간 -->
						<div class="d-flex justify-content-between align-items-center">
                            <h6 class="text-success mb-0">2024. 2. 1. ~ 2024. 2. 4.</h6>  
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




<!-- Featured Hotels START -->
<section>
   <div class="container">

    <!-- Title -->
    <div class="row mb-4" style="margin-left: -15px;">
    <div class="col-12 text-center">
        <h5 class="mb-0 text-primary">[현재 페이지] <span class="text-info">${list.size()}</span>개가 검색되었습니다.</h5>
    </div>
</div>


    <div class="row g-4">
        <!-- Festival item -->
        <c:forEach var="item" items="${list}">
            <div class="col-md-6 col-xl-4 mb-4">
                <div class="card">
                    <!-- Image -->
                    <img src="${empty item.firstimage and empty item.firstimage2 ? pageContext.request.contextPath + '/resources/images/library.jpg' : item.firstimage}" class="card-img-top img-fluid rounded" alt="${item.firstimage2}" style="width: 100%; height: auto;">

                    <!-- Overlay -->
                    <div class="card-img-overlay d-flex flex-column p-4 z-index-1">
                        <!-- Card overlay top -->
                        <div>
                            <span class="badge text-bg-dark">개최중</span>
                        </div>
                    </div>

                    <!-- Card body START -->
                    <div class="card-body px-3">
                        <!-- Title -->
                        <h5 class="card-title mb-0"><a href="${path}/leports/detail?contentid=${item.contentid}" class="stretched-link">${item.title}</a></h5>
                        <span class="small"><i class="far fa-calendar-alt me-2">${item.restdateleports}</i></span>
                    </div>
                    <!-- Card body END -->

                    <!-- Card footer START-->
                    <div class="card-footer pt-0">
                        <!-- Price and Button -->
                        <div class="d-sm-flex justify-content-sm-between align-items-center flex-wrap">

                            <!-- Button -->
                            <div class="mt-2 mt-sm-0">
                                <a href="#" class="btn btn-sm btn-dark mb-0">더보기</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>
</div>
   
    

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
        $(".form-check-input").prop('selected', true);
    }
});

</script>

<script type="text/javascript">
    $(function(){
        var SelectedcheckBox = $(".SelectedcheckBox").val();
        console.log(SelectedcheckBox);
        $('input:checkbox[name="checkBox"]').each(function() {
            if(SelectedcheckBox.indexOf(this.value) > -1){  
                $(this).prop('checked', true); 
            }
        });
    });
</script>


<!-- =======================
Tour grid END -->







