<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<jsp:include page="/WEB-INF/views/common/cultureheader.jsp">
    <jsp:param value="Culture Connector" name="title"/>
</jsp:include>

<!--서치바-->
<section>
    <div class="container ">
        <h4 class="mx-4 text-primary">원하는 공연 찾아보기</h4>
        
        <form action="${path}/cultureTheme2Search" method="get" name="searchForm">
        <input type="hidden" name="page" value="1">
        <input type="hidden" id="selectedCheckBoxes" value='${selectedCheckBoxesJson}' />
            <div style="margin-top: 30px">
            <label style="margin-left: 40px">
                <input type="radio" name="searchType" value="title" ${param.searchType == 'title' ? 'checked' : ''} /> 제목
            <label style="">
                <input type="radio" name="searchType" value="address" ${param.searchType == 'address' ? 'checked' : ''} /> 주소
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
                        <c:set var="isSeoulChecked" value="${false}" scope="request"/>
                        <c:set var="isGyeonggiChecked" value="${false}" scope="request"/>
                        <c:set var="isChungnamChecked" value="${false}" scope="request"/>
                        <c:set var="isChugbukChecked" value="${false}" scope="request"/>
                        <c:set var="isKangwonChecked" value="${false}" scope="request"/>
                        <c:set var="isJeonbukChecked" value="${false}" scope="request"/>
                        <c:set var="isJeonnamChecked" value="${false}" scope="request"/>
                        <c:set var="isJejuChecked" value="${false}" scope="request"/>
                        
                        <c:forEach items="${selectedCheckBoxes}" var="checkedValue">
                            <c:if test="${checkedValue == 'seoul'}"><c:set var="isSeoulChecked" value="${true}" scope="request"/></c:if>
                            <c:if test="${checkedValue == 'gyeonggi'}"><c:set var="isGyeonggiChecked" value="${true}" scope="request"/></c:if>
                            <c:if test="${checkedValue == 'chungnam'}"><c:set var="isChungnamChecked" value="${true}" scope="request"/></c:if>
                            <c:if test="${checkedValue == 'chugbuk'}"><c:set var="isChugbukChecked" value="${true}" scope="request"/></c:if>
                            <c:if test="${checkedValue == 'kangwon'}"><c:set var="isKangwonChecked" value="${true}" scope="request"/></c:if>
                            <c:if test="${checkedValue == 'Jeonbuk'}"><c:set var="isJeonbukChecked" value="${true}" scope="request"/></c:if>
                            <c:if test="${checkedValue == 'Jeonnam'}"><c:set var="isJeonnamChecked" value="${true}" scope="request"/></c:if>
                            <c:if test="${checkedValue == 'jeju'}"><c:set var="isJejuChecked" value="${true}" scope="request"/></c:if>
                        </c:forEach>
                        <!-- Now use these flags to set the checkboxes -->
                        <li class="list-inline-item">
                            <div class="form-check">
                                <label><input class="form-check-input" type="checkbox" name="checkBox[]" value="seoul" ${isSeoulChecked ? 'checked' : ''} />서울</label>
                            </div>
                        </li>
                        <li class="list-inline-item">
                            <div class="form-check">
                                <label><input class="form-check-input" type="checkbox" name="checkBox[]" value="gyeonggi" ${isGyeonggiChecked ? 'checked' : ''} />경기</label>
                            </div>
                        </li>
                        <li class="list-inline-item">
                            <div class="form-check">
                                <label><input class="form-check-input" type="checkbox" name="checkBox[]" value="chungnam" ${isChungnamChecked ? 'checked' : ''}/>충남</label>
                            </div>
                        </li>
                        <li class="list-inline-item">
                            <div class="form-check">
                                <label><input class="form-check-input" type="checkbox" name="checkBox[]" value="chugbuk" ${isChugbukChecked ? 'checked' : ''} />충북</label>
                            </div>
                        </li>
                        <li class="list-inline-item">
                            <div class="form-check">
                                <label><input class="form-check-input" type="checkbox" name="checkBox[]" value="kangwon" ${isKangwonChecked ? 'checked' : ''} />강원</label>
                            </div>
                        </li>
                        <li class="list-inline-item">
                            <div class="form-check">
                                <label><input class="form-check-input" type="checkbox" name="checkBox[]" value="Jeonbuk" ${isJeonbukChecked ? 'checked' : ''} />전북</label>
                            </div>
                        </li>
                        <li class="list-inline-item">
                            <div class="form-check">
                                <label><input class="form-check-input" type="checkbox" name="checkBox[]" value="Jeonnam" ${isJeonnamChecked ? 'checked' : ''} />전남</label>
                            </div>
                        </li>
                        <li class="list-inline-item">
                            <div class="form-check">
                                <label><input class="form-check-input" type="checkbox" name="checkBox[]" value="jeju" ${isJejuChecked ? 'checked' : ''} />제주</label>
                            </div>
                        </li>
                    </ul> 
                </div>
            </div>
        </form>
    </div>
</section>
<!--서치바 끝-->



<section class="pt-0 container">
    <!-- Main content START -->
    <div class="" data-sticky-container>
        <div class="row">
            <hr>
            <!-- Main content START -->
            <form name="cultureTheme2SearchList" action="${path}/cultureTheme2Search" method="get">
            <c:if test="${not empty list8}">
            
            <div class="row mt-5">
                <!-- Card item START -->
                <c:forEach var="item" items="${list8}">
                    <div class="col-6">
                        <div class="card">
                            <div class="card-body pt-2">
                                <div class="row g-0 g-sm-0 ">
                                    <!-- Card image -->
                                    <div class="col-md-6 col-xl-6">
                                        <a href="${path}/cultureTheme2Detail?contentid=${item.contentid}" style="text-decoration: none; color: inherit;">
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
                                        </a>
                                    </div>

                                <!-- Card title and rating -->
                                <div class="col-sm-6 col-md-4 col-xl-6">
                                    <a href="${path}/cultureTheme2Detail?contentid=${item.contentid}" style="text-decoration: none; color: inherit;">
                                        <h5 class="card-title mb-2">
                                        <c:out value="${item.title}"/></a>
                                        </h5>
                                        <!-- Nav divider -->
                                    </a>
                                
                                    <ul class="nav nav-divider h6 fw-normal mb-2">
                                        <li>${item.addr1}&nbsp</li>
                                        <li>#문화#예술#공연</li>
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
            
            </c:if>
            </form>
        </div>
        <!-- Main content END -->
    </div> <!-- Row END -->

    <!-- page부 시작 -->
    <nav class="d-flex justify-content-center mt-3" aria-label="navigation">
        <ul class="pagination pagination-primary-soft d-inline-block d-md-flex rounded mb-0">
            <li class="page-item mb-0">
                <a class="page-link" href="javascript:void(0);" onclick="movePage(${pageInfo.prevPage});">
                    <img src="${pageContext.request.contextPath}/resources/images/arrow-prev-svgrepo-com.svg" style="width: 25px">
                </a>
            </li>
            <c:forEach begin="${pageInfo.startPage}" end="${pageInfo.endPage}" varStatus="status">
                <li class="page-item ${status.current == pageInfo.currentPage ? 'active' : ''}" aria-current="page">
                    <a class="page-link" href="javascript:void(0);" onclick="movePage(${status.current});">${status.current}</a>
                </li>
            </c:forEach>
            <li class="page-item mb-0">
                <a class="page-link" href="javascript:void(0);" onclick="movePage(${pageInfo.nextPage});">
                    <img src="${pageContext.request.contextPath}/resources/images/arrow-next.svg" style="width: 25px">
                </a>
            </li>
        </ul>
    </nav>
    <!-- <nav class="d-flex justify-content-center mt-3" aria-label="navigation">
        <ul class="pagination pagination-primary-soft d-inline-block d-md-flex rounded mb-0">
            <li class="page-item mb-0">
                <a class="page-link" href="#" tabindex="-1">
                    <button style="border: none; background: none;" onclick="movePage(${pageInfo.prevPage});">
                        <img src="${pageContext.request.contextPath}/resources/images/arrow-prev-svgrepo-com.svg" style="width: 25px">
                    </button>
                </a>
            </li>
            <c:forEach begin="${pageInfo.startPage}" end="${pageInfo.endPage}" varStatus="status" step="1" >
                <c:if test="${status.current == pageInfo.currentPage}">
                    <li class="page-item active">
                        <a class="page-link" href="">
                            <button style="border: none; background: none;">${status.current}</button>
                        </a>
                    </li>
                </c:if> 
                <c:if test="${status.current != pageInfo.currentPage}">
                    <li class="page-item " aria-current="page"> 
                        <a class="page-link" href="#">
                            <button style="border: none; background: none;" onclick="movePage(${status.current});"> ${status.current}</button>
                        </a>
                    </li>
                </c:if>
            </c:forEach>
            <li class="page-item mb-0">
                <a class="page-link" href="#" tabindex="-1">
                    <button style="border: none; background: none;" onclick="movePage(${pageInfo.nextPage});">
                        <img src="${pageContext.request.contextPath}/resources/images/arrow-next.svg" style="width: 25px">
                    </button>
                </a>
            </li>
        </ul>
    </nav> -->
    <!-- page부 끝 -->
</section>



<script type="text/javascript">
    function movePage(page){
        document.searchForm.page.value = page;
        document.searchForm.submit();
    }
</script>

<script>
    document.addEventListener('DOMContentLoaded', function() {
        // 숨겨진 필드에서 selectedCheckBoxes JSON 문자열을 읽어와서 배열로 변환
        var selectedCheckBoxes = JSON.parse(document.getElementById('selectedCheckBoxes').value || '[]');

        console.log(selectedCheckBoxes); // 콘솔에서 확인

        document.querySelectorAll('.form-check-input').forEach(function(checkbox) {
            if (selectedCheckBoxes.includes(checkbox.value)) {
                checkbox.checked = true;
            }
        });
    });
</script>

<jsp:include page="/WEB-INF/views/common/footer.jsp"/>