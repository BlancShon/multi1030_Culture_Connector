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
                    <div class="col-11 mx-auto">				
                        <!-- Booking from START -->
                        <form class="bg-mode shadow rounded-3 p-4">
                            <div class="row g-4 align-items-center">
    
                              
                              <!-- 설렉트 + 검색창-->
                                <div class="col-xl-10">
                                  <div class="row g-4">
                                      <!-- Location -->
                                      <div class="col-md-6 col-lg-6">
                                          <label class="h6 fw-normal mb-0"><i class="bi bi-geo-alt text-primary me-1"></i>여행 지역</label>
                                          <div class="form-border-bottom form-control-transparent form-fs-lg mt-2">
                                            <!-- Input field -->
                                            <select class="form-select js-choice" data-search-enabled="true">
                                              <option value="">지역을 선택해주세요</option>
                                              <option>서울</option>
                                              <option>경기</option>
                                              <option>인천</option>
                                              <option>대전</option>
                                              <option>대구</option>
                                              <option>전북</option>
                                              <option>경북</option>
                                              <option>충북</option>
                                              <option>전남</option>
                                              <option>경남</option>
                                              <option>충남</option>
                                              <option>강원</option>
                                              <option>울산</option>
                                              <option>부산</option>
                                              <option>제주</option>
                                            </select>
                                          </div>
                                      </div>
      
                                      <!-- Check in -->
                                      <div class="col-md-6 col-lg-6">
                                          <label class="h6 fw-normal mb-0"><i class="bi bi-calendar text-primary me-1"></i>여행 날짜</label>
                                          <!-- Input field -->
                                          <div class="form-border-bottom form-control-transparent form-fs-lg mt-2">
                                              <input type="text" class="form-control flatpickr py-2 flatpickr-input" data-date-format="Y년 M월 d일" placeholder="날짜를 선택해주세요" readonly="readonly">
                                          </div>
                                      </div>
      
                                      <!-- Guest -->
                                  </div>
                              </div>
                              
                              <div class="container mx-4 mt-n1">
                              
                              <br>
                    <div style="text-align: center;">
						<c:forEach var="item" items="${categoryList}">
							<label>
								<input type="checkbox" name="types" value="${item.type}"
									${fn:contains(typeList, item.type) ? 'checked' : ''} >
								${item.name}
							</label>
						</c:forEach>
					</div>
                    
                    
                    <br>
                 
                </div>
                              
    
                              <!-- 셀렉트 + 검색창 끝-->
    
                                <!-- Button -->
                                <div class="col-xl-2">
                                    <div class="d-grid">
                                        <a href="#" class="btn btn-lg btn-dark mb-0">검색</a>
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
                <div class="col-12 text-center">
                    <h2 class="mb-0">추천 코스</h2>
            <br>
                </div>
            </div>
    
            <div class="row g-4 back">
                <!-- Destination item START -->
                <div class="col-sm-6 col-lg-3">
                    <!-- Card START -->
                    <div class="card card-img-scale overflow-hidden bg-transparent">	
                        <!-- Image -->
                        <div class="card-img-scale-wrapper rounded-3">
                            <img src="http://tong.visitkorea.or.kr/cms/resource/32/1510932_image2_1.JPG" class="card-img" alt="hotel image">
                        </div>
    
                        <!-- Card body -->
                        <div class="card-body px-2">
                            <!-- Title -->
                            <div class="d-flex justify-content-between align-items-center">
                                <h6 class="card-title"><a href="flight-list.html" class="stretched-link">타조와 동식물을 모두 체험할 수 있는 코스</a></h6>
                                
                            </div>
                        </div>
                    </div>
                    <!-- Card END -->
                </div>
                <!-- Destination item END -->
    
                <!-- Destination item START -->
                <div class="col-sm-6 col-lg-3">
                    <!-- Card START -->
                    <div class="card card-img-scale overflow-hidden bg-transparent">
                        <!-- Image -->
                        <div class="card-img-scale-wrapper rounded-3">
                            <img src="http://tong.visitkorea.or.kr/cms/resource/63/1591163_image2_1.jpg" class="card-img" alt="">
                        </div>
                        
                        <!-- Card body -->
                        <div class="card-body px-2">
                            <!-- Title -->
                            <div class="d-flex justify-content-between align-items-center">
                                <h6 class="card-title"><a href="flight-list.html" class="stretched-link">아이와 함께하는 파주의 체험코스</a></h6>
                            </div>
                        </div>
                    </div>
                    <!-- Card END -->
                </div>
                <!-- Destination item END -->
    
                <!-- Destination item START -->
                <div class="col-sm-6 col-lg-3">
                    <!-- Card START -->
                    <div class="card card-img-scale overflow-hidden bg-transparent">
    
                        <!-- Image -->
                        <div class="card-img-scale-wrapper rounded-3">
                            <img src="http://tong.visitkorea.or.kr/cms/resource/50/2040450_image2_1.jpg" class="card-img" alt="hotel image">
                        </div>
    
                        <!-- Card body -->
                        <div class="card-body px-2">
                            <!-- Title -->
                            <div class="d-flex justify-content-between align-items-center">
                                <h6 class="card-title"><a href="flight-list.html" class="stretched-link">책과 함께하는 특별한 체험여행</a></h6>
                            </div>
                        </div>
                    </div>
                    <!-- Card END -->
                </div>
                <!-- Destination item END -->
    
                <!-- Destination item START -->
                <div class="col-sm-6 col-lg-3">
                    <!-- Card START -->
                    <div class="card card-img-scale overflow-hidden bg-transparent">
                        <!-- Image -->
                        <div class="card-img-scale-wrapper rounded-3">
                            <img src="http://tong.visitkorea.or.kr/cms/resource/15/1954915_image2_1.jpg" class="card-img" alt="">
                        </div>
                        
                        <!-- Card body -->
                        <div class="card-body px-2">
                            <!-- Title -->
                            <div class="d-flex justify-content-between align-items-center">
                                <h6 class="card-title"><a href="flight-list.html" class="stretched-link">태양의 후예' 촬영지 여행 코스</a></h6>
                            </div>
                        </div>
                    </div>
                    <!-- Card END -->
                </div>
                <div class="col-sm-6 col-lg-3">
                    <!-- Card START -->
                    <div class="card card-img-scale overflow-hidden bg-transparent">	
    
                        <!-- Image -->
                        <div class="card-img-scale-wrapper rounded-3">
                            <img src="http://tong.visitkorea.or.kr/cms/resource/93/2823293_image2_1.jpg" class="card-img" alt="hotel image">
                        </div>
    
                        <!-- Card body -->
                        <div class="card-body px-2">
                            <!-- Title -->
                            <div class="d-flex justify-content-between align-items-center">
                                <h5 class="card-title"><a href="flight-list.html" class="stretched-link">예술과 역사를 모두 만나는 광주 전남 여행 코스</a></h5>
                            </div>
                        </div>
                    </div>
                    <!-- Card END -->
                </div>
                <!-- Destination item END -->
    
                <!-- Destination item START -->
                <div class="col-sm-6 col-lg-3">
                    <!-- Card START -->
                    <div class="card card-img-scale overflow-hidden bg-transparent">
                        <!-- Image -->
                        <div class="card-img-scale-wrapper rounded-3">
                            <img src="http://tong.visitkorea.or.kr/cms/resource/57/2706257_image2_1.jpg" class="card-img" alt="">
                        </div>
                        
                        <!-- Card body -->
                        <div class="card-body px-2">
                            <!-- Title -->
                            <div class="d-flex justify-content-between align-items-center">
                                <h6 class="card-title"><a href="flight-list.html" class="stretched-link">낮에 보아도 밤에 보아도 아름다운 남원 1박2일 코스</a></h6>
                            </div>
                        </div>
                    </div>
                    <!-- Card END -->
                </div>
                <!-- Destination item END -->
    
                <!-- Destination item START -->
                <div class="col-sm-6 col-lg-3">
                    <!-- Card START -->
                    <div class="card card-img-scale overflow-hidden bg-transparent">
    
                        <!-- Image -->
                        <div class="card-img-scale-wrapper rounded-3">
                            <img src="http://tong.visitkorea.or.kr/cms/resource/84/2675084_image2_1.jpg" class="card-img" alt="hotel image">
                        </div>
    
                        <!-- Card body -->
                        <div class="card-body px-2">
                            <!-- Title -->
                            <div class="d-flex justify-content-between align-items-center">
                                <h6 class="card-title"><a href="flight-list.html" class="stretched-link">거제도 일상 회복 청춘 투어, 지친 나를 위로하고 치유하는 여행</a></h6>
                            </div>
                        </div>
                    </div>
                    <!-- Card END -->
                </div>
                <!-- Destination item END -->
    
                <!-- Destination item START -->
                <div class="col-sm-6 col-lg-3">
                    <!-- Card START -->
                    <div class="card card-img-scale overflow-hidden bg-transparent">
                        <!-- Image -->
                        <div class="card-img-scale-wrapper rounded-3">
                            <img src="http://tong.visitkorea.or.kr/cms/resource/36/2715736_image2_1.JPG" class="card-img" alt="">
                        </div>
                        
                        <!-- Card body -->
                        <div class="card-body px-2">
                            <!-- Title -->
                            <div class="d-flex justify-content-between align-items-center">
                                <h6 class="card-title"><a href="flight-list.html" class="stretched-link">남파랑길(남해 구간)</a></h6>
                            </div>
                        </div>
                    </div>
                    <!-- Card END -->
                </div>
                <div class="col-sm-6 col-lg-3">
                    <!-- Card START -->
                    <div class="card card-img-scale overflow-hidden bg-transparent">	
    
                        <!-- Image -->
                        <div class="card-img-scale-wrapper rounded-3">
                            <img src="http://tong.visitkorea.or.kr/cms/resource/96/2716496_image2_1.jpg" class="card-img" alt="hotel image">
                        </div>
    
                        <!-- Card body -->
                        <div class="card-body px-2">
                            <!-- Title -->
                            <div class="d-flex justify-content-between align-items-center">
                                <h6 class="card-title"><a href="flight-list.html" class="stretched-link">해파랑길(고성, 속초 구간)</a></h6>
                            </div>
                        </div>
                    </div>
                    <!-- Card END -->
                </div>
                <!-- Destination item END -->
    
                <!-- Destination item START -->
                <div class="col-sm-6 col-lg-3">
                    <!-- Card START -->
                    <div class="card card-img-scale overflow-hidden bg-transparent">
                        <!-- Image -->
                        <div class="card-img-scale-wrapper rounded-3">
                            <img src="http://tong.visitkorea.or.kr/cms/resource/40/2737440_image2_1.JPG" class="card-img" alt="">
                        </div>
                        
                        <!-- Card body -->
                        <div class="card-body px-2">
                            <!-- Title -->
                            <div class="d-flex justify-content-between align-items-center">
                                <h6 class="card-title"><a href="flight-list.html" class="stretched-link">서해랑길 (고창, 군산 구간)</a></h6>
                            </div>
                        </div>
                    </div>
                    <!-- Card END -->
                </div>
                <!-- Destination item END -->
    
                <!-- Destination item START -->
                <div class="col-sm-6 col-lg-3">
                    <!-- Card START -->
                    <div class="card card-img-scale overflow-hidden bg-transparent">
    
                        <!-- Image -->
                        <div class="card-img-scale-wrapper rounded-3">
                            <img src="http://tong.visitkorea.or.kr/cms/resource/20/1602720_image2_1.jpg" class="card-img" alt="hotel image">
                        </div>
    
                        <!-- Card body -->
                        <div class="card-body px-2">
                            <!-- Title -->
                            <div class="d-flex justify-content-between align-items-center">
                                <h6 class="card-title"><a href="flight-list.html" class="stretched-link">서해랑길(서천, 보령 구간)</a></h6>
                            </div>
                        </div>
                    </div>
                    <!-- Card END -->
                </div>
                <!-- Destination item END -->
    
                <!-- Destination item START -->
                <div class="col-sm-6 col-lg-3">
                    <!-- Card START -->
                    <div class="card card-img-scale overflow-hidden bg-transparent">
                        <!-- Image -->
                        <div class="card-img-scale-wrapper rounded-3">
                            <img src="http://tong.visitkorea.or.kr/cms/resource/56/1613356_image2_1.jpg" class="card-img" alt="">
                        </div>
                        
                        <!-- Card body -->
                        <div class="card-body px-2">
                            <!-- Title -->
                            <div class="d-flex justify-content-between align-items-center">
                                <h6 class="card-title"><a href="flight-list.html" class="stretched-link">해파랑길(경주, 포항, 영덕 구간)</a></h6>
                            </div>
                        </div>
                    </div>
                    <!-- Card END -->
                </div>
                <div class="col-sm-6 col-lg-3">
                    <!-- Card START -->
                    <div class="card card-img-scale overflow-hidden bg-transparent">	
    
                        <!-- Image -->
                        <div class="card-img-scale-wrapper rounded-3">
                            <img src="http://tong.visitkorea.or.kr/cms/resource/49/2617849_image2_1.jpg" class="card-img" alt="hotel image">
                        </div>
    
                        <!-- Card body -->
                        <div class="card-body px-2">
                            <!-- Title -->
                            <div class="d-flex justify-content-between align-items-center">
                                <h6 class="card-title"><a href="flight-list.html" class="stretched-link">남파랑길(여수 구간)</a></h6>
                            </div>
                        </div>
                    </div>
                    <!-- Card END -->
                </div>
                <!-- Destination item END -->
    
                <!-- Destination item START -->
                <div class="col-sm-6 col-lg-3">
                    <!-- Card START -->
                    <div class="card card-img-scale overflow-hidden bg-transparent">
                        <!-- Image -->
                        <div class="card-img-scale-wrapper rounded-3">
                            <img src="http://tong.visitkorea.or.kr/cms/resource/69/2355069_image2_1.JPG" class="card-img" alt="">
                        </div>
                        
                        <!-- Card body -->
                        <div class="card-body px-2">
                            <!-- Title -->
                            <div class="d-flex justify-content-between align-items-center">
                                <h6 class="card-title"><a href="flight-list.html" class="stretched-link">남파랑길(고성,통영 구간)</a></h6>
                            </div>
                        </div>
                    </div>
                    <!-- Card END -->
                </div>
                <!-- Destination item END -->
    
                <!-- Destination item START -->
                <div class="col-sm-6 col-lg-3">
                    <!-- Card START -->
                    <div class="card card-img-scale overflow-hidden bg-transparent">
    
                        <!-- Image -->
                        <div class="card-img-scale-wrapper rounded-3">
                            <img src="http://tong.visitkorea.or.kr/cms/resource/53/2740453_image2_1.jpg" class="card-img" alt="hotel image">
                        </div>
    
                        <!-- Card body -->
                        <div class="card-body px-2">
                            <!-- Title -->
                            <div class="d-flex justify-content-between align-items-center">
                                <h6 class="card-title"><a href="flight-list.html" class="stretched-link">제주올레길</a></h6>
                            </div>
                        </div>
                    </div>
                    <!-- Card END -->
                </div>
                <!-- Destination item END -->
    
                <!-- Destination item START -->
                <div class="col-sm-6 col-lg-3">
                    <!-- Card START -->
                    <div class="card card-img-scale overflow-hidden bg-transparent">
                        <!-- Image -->
                        <div class="card-img-scale-wrapper rounded-3">
                            <img src="http://tong.visitkorea.or.kr/cms/resource/82/1970982_image2_1.jpg" class="card-img" alt="">
                        </div>
                        
                        <!-- Card body -->
                        <div class="card-body px-2">
                            <!-- Title -->
                            <div class="d-flex justify-content-between align-items-center">
                                <h6 class="card-title"><a href="flight-list.html" class="stretched-link">서해랑길(진도, 목포구간)</a></h6>
                            </div>
                        </div>
                    </div>
                    <!-- Card END -->
                </div>
                <div class="col-sm-6 col-lg-3">
                    <!-- Card START -->
                    <div class="card card-img-scale overflow-hidden bg-transparent">	
    
                        <!-- Image -->
                        <div class="card-img-scale-wrapper rounded-3">
                            <img src="http://tong.visitkorea.or.kr/cms/resource/46/2653346_image2_1.jpg" class="card-img" alt="hotel image">
                        </div>
    
                        <!-- Card body -->
                        <div class="card-body px-2">
                            <!-- Title -->
                            <div class="d-flex justify-content-between align-items-center">
                                <h6 class="card-title"><a href="flight-list.html" class="stretched-link">해파랑길(부산,울산 구간)</a></h6>
                            </div>
                        </div>
                    </div>
                    <!-- Card END -->
                </div>
                <!-- Destination item END -->
    
                <!-- Destination item START -->
                <div class="col-sm-6 col-lg-3">
                    <!-- Card START -->
                    <div class="card card-img-scale overflow-hidden bg-transparent">
                        <!-- Image -->
                        <div class="card-img-scale-wrapper rounded-3">
                            <img src="http://tong.visitkorea.or.kr/cms/resource/90/2492590_image2_1.JPG" class="card-img" alt="">
                        </div>
                        
                        <!-- Card body -->
                        <div class="card-body px-2">
                            <!-- Title -->
                            <div class="d-flex justify-content-between align-items-center">
                                <h6 class="card-title"><a href="flight-list.html" class="stretched-link">자전거와 함께하는 풍경여행!</a></h6>
                            </div>
                        </div>
                    </div>
                    <!-- Card END -->
                </div>
                <!-- Destination item END -->
    
                <!-- Destination item START -->
                <div class="col-sm-6 col-lg-3">
                    <!-- Card START -->
                    <div class="card card-img-scale overflow-hidden bg-transparent">
    
                        <!-- Image -->
                        <div class="card-img-scale-wrapper rounded-3">
                            <img src="http://tong.visitkorea.or.kr/cms/resource/27/2921627_image2_1.jpg" class="card-img" alt="hotel image">
                        </div>
    
                        <!-- Card body -->
                        <div class="card-body px-2">
                            <!-- Title -->
                            <div class="d-flex justify-content-between align-items-center">
                                <h6 class="card-title"><a href="flight-list.html" class="stretched-link">숲의 속삭임, 바다의 읊조림에 귀기울여 보는 감성 충만 코스!</a></h6>
                            </div>
                        </div>
                    </div>
                    <!-- Card END -->
                </div>
                <!-- Destination item END -->
    
                <!-- Destination item START -->
                <div class="col-sm-6 col-lg-3">
                    <!-- Card START -->
                    <div class="card card-img-scale overflow-hidden bg-transparent">
                        <!-- Image -->
                        <div class="card-img-scale-wrapper rounded-3">
                            <img src="http://tong.visitkorea.or.kr/cms/resource/07/190607_image2_1.jpg" class="card-img" alt="">
                        </div>
                        
                        <!-- Card body -->
                        <div class="card-body px-2">
                            <!-- Title -->
                            <div class="d-flex justify-content-between align-items-center">
                                <h6 class="card-title"><a href="flight-list.html" class="stretched-link">자연과 예술, 평화의 바람을 담은 문화예술 여행코스</a></h6>
                            </div>
                        </div>
                    </div>
                    <!-- Card END -->
                </div>
                <!-- Destination item END -->
            </div> <!-- Row END -->
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
    </section>
    
    
    
    
    
    
    <!-- 검색결과 뿌리기 끝-->
    
    




<jsp:include page="/WEB-INF/views/common/footer.jsp"/>