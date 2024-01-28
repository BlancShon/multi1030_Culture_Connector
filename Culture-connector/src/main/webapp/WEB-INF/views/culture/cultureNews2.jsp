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
        
                 <!--  검색창 시작!  -->
                <div class="row mt-n7">
                    <div class="col-10 mx-auto">		
                    
                  
                    
                    
			<div div class="container mt-5">
				<div class="row height d-flex justify-content-center align-items-center">
					<div class="col-md-12 ">
			
						<div class="row height d-flex justify-content-center align-items-center">
							<div class="col-md-12">
								<h5 class="fw-normal mb-0"></h5>
								 <form class="bg-mode shadow rounded-3 p-4" name="searchForm" action="${path}/mvc/course/list" method="get">
									<input type="hidden" name="page" value="1">
									<div class="col-md-12 col-lg-12">
					                   	<label style="margin-left: 40px"><input type="checkbox" name="searchType" value="title" class="search"
											${param.searchType == 'title' ? 'checked' : ''} /> 키워드</label>
										<label style=""><input type="checkbox" name="searchType" value="address" class="search"
											${param.searchType == 'address' ? 'checked' : ''} /> 장소</label>
					                </div>
									
									<div class="search mt-0">
										<i class="fa fa-search"></i>
											<input type="text" id="searchName" name="searchValue" class="form-control" style="font-size: large" placeholder="검색해주세요" value="${param.searchValue}">
												<!-- <button class="btn btn-primary" style="font-size: x-large;">검색</button> -->
											<button type="submit" class="btn btn-lg btn-dark mb-0">검색</button>
									</div>
										<br>
									<div class="container mt-2">
										<div class="filter-block">
											<h5 class="mb-3"><i class="fa-solid bi bi-geo-alt-fill text-primary me-2"></i>지역</h5>
													<div>
												
												<c:forEach var="item" items="${areaList}">
												    <label class="form-check-label" style="margin-right: 10px;">
												        <input class="form-check-input" type="checkbox" name="localTypes" value="${item.code}"
												            <c:forEach var="localType" items="${localTypeList}">
												                <c:choose>
												                    <c:when test="${localType eq item.code}">
												                        checked
												                    </c:when>
												                </c:choose>
												            </c:forEach>
												        />  ${item.name}
												    </label>
												</c:forEach>
												
											
												
											</div>
												
										</div>
										<br>
										<div class="filter-block">
											<h5 class="mb-3"><i class="bi bi-image-alt text-primary me-2"></i>카테고리</h5>
											
										
											<div>
												<c:forEach var="item" items="${categoryList}">
													<label class="form-check-label"  style="margin-right: 10px;">
														<input  class="form-check-input" type="checkbox" name="types" value="${item.code}"
															${fn:contains(typeList, item.code) ? 'checked' : ''} >
														${item.name}
													</label>
												</c:forEach>
											</div>
											
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>

			
                    
                    
                    </div>
                </div>
           <!--서치바 끝-->
        
        
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
		                <div class="col-4">
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