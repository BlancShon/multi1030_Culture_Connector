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
    <div class="container bg-mode shadow rounded-3 p-4">
        <div class="row g-4 align-items-center">
           <form action="${path}/leports/list" method="get" name="searchForm">
                <input type="hidden" name="page" value="1">
                <div class="col-md-12 col-lg-12">
                    <label class="h6 fw-normal mb-0"><i class="bi bi-search text-primary me-1"></i>액티비티/원데이클래스</label>
                    <label style="margin-left: 40px"><input type="radio" name="searchType" value="title" ${ param.searchType == 'title' || empty param.searchType ? 'checked' : ''} /> 제목</label>
                    <label style=""><input type="radio" name="searchType" value="address" ${param.searchType == 'address' ? 'checked' : ''} /> 주소</label>
                     <label class="h6 fw-normal mb-0">(검색할 카테고리를 선택하세요.)</label>
                </div>
                
                <div class="mx-auto mt-3 search-bar input-group mb-3 z-index-1 px-4" style="font-family: 'SUIT-Medium'" id="search">
                    <input onkeyup="filter()" id="serchinput" type="text" name="searchValue" value="${param.searchValue}" class="form-control" placeholder="액티비티 제목을 입력하세요">
                    <div class="input-group-append">
                        <button class="btn btn-lg btn-dark mb-0" type="submit">검색</button>
                         <button type="reset" class="btn btn-dark rounded-pill h-100 px-5 ">초기화</button>     
                    </div>
                </div>
                <%-- <div class="container mx-4 mt-n1">
                    <div class="filter-block">
                        <h6 class="mb-3">지역</h6>
                        <ul class="list-inline mb-0">
                            <li class="list-inline-item">
                                <div class="form-check">
                                    <label><input class="form-check-input" type="checkbox" name="locations" value="서울" ${fn:contains(locationList, '서울') ? 'checked' : ''} />서울</label>
                                </div>
                            </li>
                            <li class="list-inline-item">
                                <div class="form-check">
                                    <label><input class="form-check-input" type="checkbox" name="locations" value="경기" ${fn:contains(locationList, '경기') ? 'checked' : ''} />경기</label>
                                </div>
                            </li>
                            <li class="list-inline-item">
                                <div class="form-check">
                                    <label><input class="form-check-input" type="checkbox" name="locations" value="충남" ${fn:contains(locationList, '충남') ? 'checked' : ''} />충남</label>
                                </div>
                            </li>
                            <li class="list-inline-item">
                                <div class="form-check">
                                     <label><input class="form-check-input" type="checkbox" name="locations" value="충북" ${fn:contains(locationList, '충북') ? 'checked' : ''} />충북</label>
                                </div>
                            </li>
                            <li class="list-inline-item">
                                <div class="form-check">
                                    <label><input class="form-check-input" type="checkbox" name="locations" value="강원" ${fn:contains(locationList, '강원') ? 'checked' : ''}  />강원</label>
                                </div>
                            </li>
                            <li class="list-inline-item">
                                <div class="form-check">
                                      <label><input class="form-check-input" type="checkbox" name="locations" value="전북" ${fn:contains(locationList, '전북') ? 'checked' : ''} />전북</label>
                                </div>
                            </li>

                            <li class="list-inline-item">
                                <div class="form-check">
                                    <label><input class="form-check-input" type="checkbox" name="locations" value="전남" ${fn:contains(locationList, '전남') ? 'checked' : ''}  />전남</label>
                                </div>
                            </li>

                            <li class="list-inline-item">
                                <div class="form-check">
                                   <label><input class="form-check-input" type="checkbox" name="locations" value="제주" ${fn:contains(locationList, '제주') ? 'checked' : ''} />제주</label>
                                </div>
                            </li>
                        </ul> 
                         
                    </div> --%>
                    
                    <c:forEach var="item" items="${areaList}">
					    <label class="form-check-label" style="margin-right: 10px;">
					        <input class="form-check-input" type="checkbox" name=locations value="${item.code}"
					            <c:forEach var="localType" items="${locationList}">
					                <c:choose>
					                    <c:when test="${localType eq item.code}">
					                        checked
					                    </c:when>
					                </c:choose>
					            </c:forEach>
					        />  ${item.name}
					    </label>
					</c:forEach>
                    
                    <hr>
                    
                    <div class="filter-block">
                    	<b style="font-weight: bold; margin-right: 20px; margin-bottom: 10px;">레포츠 소개</b> 
						<c:forEach var="item" items="${categoryMap['레포츠소개']}">
							<label class="form-check-label"  style="margin-right: 10px; margin-bottom: 5px">
								<input  class="form-check-input" type="checkbox" name="leportsTypes" value="${item.code}"
									${fn:contains(leportsTypeList, item.code) ? 'checked' : ''} >
								${item.name}
							</label>
						</c:forEach>
						<br> 
						
                    	<b style="font-weight: bold; margin-right: 20px; margin-bottom: 10px;">육상 레포츠</b> 
						<c:forEach var="item" items="${categoryMap['육상레포츠']}">
							<label class="form-check-label"  style="margin-right: 10px; margin-bottom: 5px">
								<input  class="form-check-input" type="checkbox" name="leportsTypes" value="${item.code}"
									${fn:contains(leportsTypeList, item.code) ? 'checked' : ''} >
								${item.name}
							</label>
						</c:forEach>
						<br>
						
                    	<b style="font-weight: bold; margin-right: 20px; margin-bottom: 10px;">수상 레포츠</b> 
						<c:forEach var="item" items="${categoryMap['수상레포츠']}">
							<label class="form-check-label"  style="margin-right: 10px; margin-bottom: 5px">
								<input  class="form-check-input" type="checkbox" name="leportsTypes" value="${item.code}"
									${fn:contains(leportsTypeList, item.code) ? 'checked' : ''} >
								${item.name}
							</label>
						</c:forEach>
						<br>
						
                    	<b style="font-weight: bold; margin-right: 20px; margin-bottom: 10px;">항공 레포츠</b> 
						<c:forEach var="item" items="${categoryMap['항공레포츠']}">
							<label class="form-check-label"  style="margin-right: 10px; margin-bottom: 5px">
								<input  class="form-check-input" type="checkbox" name="leportsTypes" value="${item.code}"
									${fn:contains(leportsTypeList, item.code) ? 'checked' : ''} >
								${item.name}
							</label>
						</c:forEach>
						<br>
						
                    	<b style="font-weight: bold; margin-right: 20px; margin-bottom: 10px;">복합 레포츠</b> 
						<c:forEach var="item" items="${categoryMap['복합레포츠']}">
							<label class="form-check-label"  style="margin-right: 10px; margin-bottom: 5px">
								<input  class="form-check-input" type="checkbox" name="leportsTypes" value="${item.code}"
									${fn:contains(leportsTypeList, item.code) ? 'checked' : ''} >
								${item.name}
							</label>
						</c:forEach>
						<br>
						
                    	
						
						
					</div>
                 
                </div>
            </form>
        </div>
        <!--서치바 끝-->

	</div>

	<!-- Booking from END -->
</div>



<!-- Search END -->
<br>




				<section class="pt-0">
					<div class="container">

						<!-- Filter and content START -->
							<div class="row g-4 align-items-center justify-content-between mb-4">
    							<!-- Content -->
    						<div class="col-12 col-xl-6 order-xl-1">
    						  
    						  
   						 </div>

    			<!-- Select option -->
    				<div class="col-12 col-xl-2 order-xl-2 mt-3 mt-xl-0 ">
        			 <form action="${path}/leports/list" method="get">
      
      						
        <br>
      
        			
            	
        		</form>
    		</div>
			</div>
    	 	
    		 <div class="row g-4 back">
                <!-- Destination item START -->
                <c:if test="${empty list}">
                <br>
					<tr>
						<td colspan="6">조회된 글이 없습니다.</td>
					</tr>
				</c:if>
                				<c:if test="${not empty list}">
                				 <h5>${ leisureCount} 개의 결과</h5>
    <c:forEach var="item" items="${list}">
        <!-- Your card structure goes here -->
        <div class="col-md-6 col-xl-4">
            <div class="card card-hover-shadow pb-0 h-100">
                <!-- Overlay item -->
                <div class="position-relative">
                    <!-- Image -->
                    <img src="${item.firstimage}" class="card-img-top" alt="Card image">
                    <!-- Overlay -->
                    <div class="card-img-overlay d-flex flex-column p-4 z-index-1">
                        <!-- Card overlay top -->
                        <div>
                            <span class="badge text-bg-dark">사용가능</span>
                        </div>
                        <!-- Card overlay bottom -->
                    </div>
                </div>
                <!-- Image -->
                <!-- Card body START -->
                <div class="card-body px-3">
                    <!-- Title -->
                    <h5 class="card-title mb-2"><a href="${path}/leports/detail?contentid=${item.contentid}"class="stretched-link">${item.title}</a></h5>
                    <h6><c:out value="${categoryCodeMap[item.cat3]}"></c:out></h6>
                    <h7><c:out value="${item.addr1 }"/><br></h7>
                    <span class="small"><i class="far fa-calendar-alt me-2"></i>${item.restdateleports}</span>
					
                </div>
                <!-- Card body END -->
                <!-- Card footer START-->
                <div class="card-footer pt-0">
                    <!-- Price -->
                    <div class="hstack gap-2">
                         <div class="mt-2"><a href="${path}/leports/detail?contentid=${item.contentid}" class="btn btn-sm btn-dark mb-0">자세히</a></div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Your card structure ends here -->
    </c:forEach>
</c:if>
                				
                
     
            </div> <!-- Row END -->
        </div>
     
  </section>










    

    <!-- Pagination -->
    
    
                   
                    
        

                	<!-- page부 시작 -->
                	
                	 <nav class="d-flex justify-content-center mt-3" aria-label="navigation">
                        <ul class="pagination pagination-primary-soft d-inline-block d-md-flex rounded mb-0">
                            <li class="page-item mb-0"><a class="page-link" onclick="movePage(${pageInfo.prevPage});" tabindex="-1">
                                    <button style="border: none; background: none;" onclick="movePage(${pageInfo.prevPage});"><img src="${pageContext.request.contextPath}/resources/images/arrow-prev-svgrepo-com.svg" style="width: 25px"></button>
                                    </a>
                            </li>
                             <c:forEach begin="${pageInfo.startPage}" end="${pageInfo.endPage}" varStatus="status" step="1" >
                             <c:if test="${status.current == pageInfo.currentPage}">
								<li class="page-item active"><a class="page-link" ><button style="border: none; background: none;">${status.current}</button></a></li>
						    </c:if> 
						    <c:if test="${status.current != pageInfo.currentPage}">
							<li class="page-item " aria-current="page"> <a class="page-link" ><button style="border: none; background: none;" onclick="movePage(${status.current});"> ${status.current}</button></a></li>
							</c:if>
                            </c:forEach>
                             <li class="page-item mb-0"><a class="page-link" onclick="movePage(${pageInfo.nextPage});" tabindex="-1">
                           		 <button style="border: none; background: none;" onclick="movePage(${pageInfo.nextPage});"><img src="${pageContext.request.contextPath}/resources/images/arrow-next.svg" style="width: 25px"></button>
                             	</a>
                           	</li>
                                        
                      
                        </ul>
                    </nav>
			<br><br>
   





</body>
		 
		 



<jsp:include page="/WEB-INF/views/common/footer.jsp"/>


<script type="text/javascript">
    function movePage(page){
        searchForm.page.value = page;
        searchForm.submit();
    }
</script>

<script type="text/javascript">
// $(".form-check-input").change(function(){
//     if($(this).prop('checked') == true){
//         searchForm.submit();
//         $(".form-check-input").prop('selected', true);
//     }
// });

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





