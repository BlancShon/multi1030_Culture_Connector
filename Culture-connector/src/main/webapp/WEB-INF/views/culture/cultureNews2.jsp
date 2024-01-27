<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<jsp:include page="/WEB-INF/views/common/cultureheader.jsp">
	<jsp:param value="Culture Connector" name="title"/>
</jsp:include>


        <!-- 히어로 이미지 + 검색 창 시작 -->
        
        <section class="pt-0 mx-10">
            <div class="container position-relative">
                <!-- Bg image -->
                <div class="rounded-3 p-4 p-sm-5" style="background-image: url(${pageContext.request.contextPath}/resources/images/sea.jpg); background-position: center center; background-repeat: no-repeat; background-size: cover;">
                    <!-- Banner title -->
                    <div class="row justify-content-between pt-0 pb-5"> 
                        <div class="col-md-7 col-lg-8 col-xxl-7 pb-5 mb-0 mb-lg-5"> 
                            <h1 class="text-white">recommend a tour course</h1>
                        </div>
                        
                    </div>
                </div>
        
                <!-- Search START -->
                <div class="row mt-n7">
                    <div class="col-9 mx-auto">		
                    		
                        <!-- Booking from START -->
                        <form class="bg-mode shadow rounded-3 p-4" name="searchForm" action="${path}/mvc/course/list" method="get">
                        	 <input type="hidden" name="page" value="1">
                            <div class="row g-4 align-items-center">
    
                              
                              <!-- 설렉트 + 검색창-->
                                <div class="col-xl-8"  style="text-align: center;">
                                  <div class="row g-4">
                                      <!-- Location -->
                                      <div class="col-md-12 col-lg-12">
                                          <label class="h6 fw-normal mb-0"><i class="bi bi-geo-alt text-primary me-1"></i>여행 지역</label>
                                          <div class="form-border-bottom form-control-transparent form-fs-lg mt-2">
                                            <!-- Input field -->
                                           <select class="form-select js-choice" data-search-enabled="true" name="area">
                                             <option value="" ${param.area == '' ? 'selected' : ''}>지역을 선택해주세요</option>
                                              <option value="1" ${param.area == '1' ? 'selected' : ''}>서울</option>
											  <option value="31" ${param.area == '31' ? 'selected' : ''}>경기</option>
											  <option value="2" ${param.area == '2' ? 'selected' : ''}>인천</option>
											  <option value="3" ${param.area == '3' ? 'selected' : ''}>대전</option>
											  <option value="4" ${param.area == '4' ? 'selected' : ''}>대구</option>
											  <option value="5" ${param.area == '5' ? 'selected' : ''}>광주</option>
											  <option value="8" ${param.area == '8' ? 'selected' : ''}>세종</option>
											  <option value="32" ${param.area == '32' ? 'selected' : ''}>강원</option>
											  <option value="37" ${param.area == '37' ? 'selected' : ''}>전북</option>
											  <option value="35" ${param.area == '35' ? 'selected' : ''}>경북</option>
											  <option value="33" ${param.area == '33' ? 'selected' : ''}>충북</option>
											  <option value="38" ${param.area == '38' ? 'selected' : ''}>전남</option>
											  <option value="36" ${param.area == '36' ? 'selected' : ''}>경남</option>
											  <option value="34" ${param.area == '34' ? 'selected' : ''}>충남</option>
											  <option value="7" ${param.area == '7' ? 'selected' : ''}>울산</option>
											  <option value="6" ${param.area == '6' ? 'selected' : ''}>부산</option>
											  <option value="39" ${param.area == '39' ? 'selected' : ''}>제주</option>
                                            </select>
                                          </div>
                                      </div>
      
                     		 <div style="text-align: center;">
								<c:forEach var="item" items="${categoryList}">
									<label>
										<input type="checkbox" name="types" value="${item.code}"
											${fn:contains(typeList, item.code) ? 'checked' : ''} >
										${item.name}
									</label>
								</c:forEach>
							</div>
                                      <!-- Guest -->
                                  </div>
                              </div>
                              
                               <!-- 셀렉트 + 검색창 끝-->
    
                                <!-- Button -->
                              
	                             <div class="col-xl-2">
	                                    <div class="d-grid">
                                    		<button type="submit" class="btn btn-lg btn-dark mb-0">검색</button>
                                 </div>
                                </div>
                            </div>
                               
                        </form>
                        <!-- Booking from END -->
                    </div>
                </div>
                <!-- Search END -->
        
        
            </div>
        </section>
    <!-- 히어로 이미지 + 검색 창 끝-->
     
    
    
    
    
    <!-- 검색결과 뿌리기 시작-->
    
       
    
    <section class="pt-0 pt-lg-5 mb-8">
        <div class="container">
    
            <!-- Title -->
            <div class="row mb-4">
                <div class="col-11 text-center">
                    <h2 class="mb-0">여 행 코 스</h2>
            <br>
                </div>
            </div>
    	 	<h3>검색결과 <c:out value="${courseCount}"/> 개</h3>
    		 <div class="row g-4 back">
                <!-- Destination item START -->
                <c:if test="${empty list}">
                <br>
					<tr>
						<td colspan="6">조회된 글이 없습니다.</td>
					</tr>
				</c:if>
                 <c:if test="${not empty list}">
					<c:forEach var="item" items="${list}">
		                <div class="col-sm-6 col-lg-4">
		                    <!-- Card START -->
		                    <div class="card card-img-scale overflow-hidden bg-transparent">
		    				
			                        <!-- Image -->
			                        <div class="card-img-scale-wrapper rounded-3">
			                            <img src="${item.firstimage }" class="card-img" alt="hotel image">
			                        </div>
			    
			                        <!-- Card body -->
			                        <div class="card-body px-2">
			                            <!-- Title -->
			                            <div class="d-flex justify-content-between align-items-center">
			                                <h6 class="card-title">
			                                	<a href="${path}/mvc/course/detail?contentid=${item.contentid}" class="stretched-link">
			                                		<c:out value="${item.title}"/>
			                             		 </a>
			                                </h6>
			                            </div>
			                        </div>
		                        
		                    </div>
		                    <!-- Card END -->
	                    
	                    </div>
	                  </c:forEach>
				</c:if>
                
     
            </div> <!-- Row END -->
        </div>
     
       
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
    </section>
    
    
    
    
    

    <!-- 검색결과 뿌리기 끝-->
   		
		
    	




<jsp:include page="/WEB-INF/views/common/footer.jsp"/>

<script type="text/javascript">
	function movePage(page){
		searchForm.page.value = page;
		searchForm.submit();
	}
</script>