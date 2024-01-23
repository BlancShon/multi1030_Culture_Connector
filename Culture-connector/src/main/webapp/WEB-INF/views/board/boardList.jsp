<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<style>
    section#board-list-container { width: 600px; margin: 0 auto; text-align: center; }
    section#board-list-container h2 { margin: 10px 0; }
    table#tbl-board { width: 100%; margin: 0 auto; border: 1px solid black; border-collapse: collapse; clear: both; }
    table#tbl-board th,
    table#tbl-board td { border: 1px solid; padding: 5px 0; text-align: center; }
    input#btn-add { float: right; margin: 0 0 15px; }
    div#pageBar { margin-top: 10px; text-align: center; background-color: rgba(0, 188, 212, 0.3); }
    .blue_window { display: inline-block; width: 366px; border: 3px solid #6ccaf5; }
    .input_text { width: calc(100% - 14px); margin: 6px 7px; border: 0; background: #007dd100; font-weight: bold; font-size: 16px; outline: none; }
    .sch_smit { width: 54px; height: 40px; margin: 0; border: 0; vertical-align: top; background: #007dd1; color: white; font-weight: bold; border-radius: 1px; cursor: pointer; }
    .sch_smit:hover { background: #007dd1; }
    #board-list-container h2 { text-align: center; margin-top: 5px; margin-bottom: 5px; }

    /* 추가한 스타일 */
    .search-container { text-align: center; }
    .search-container label { margin-right: 10px; } /* 라디오 버튼과 텍스트 간의 간격 조정 */
    .search-container .form-mix-icon-input { display: inline-block; margin-top: 10px; }
    .search-container button { margin-top: 10px; }
</style>


 <jsp:include page="/WEB-INF/views/common/cultureheader.jsp">
	<jsp:param value="게시판 목록" name="title"/>
</jsp:include>
<!-- 배경 -->
<div class="rounded-3 p-4 p-sm-5" style="background-image: url(${pageContext.request.contextPath}/resources/images/grass.jpg); background-position: center center; background-repeat: no-repeat; background-size: cover; height: 400px; position: relative; overflow: hidden;">

	<!-- 배너 제목 -->
	<div class="row justify-content-between pt-0 pb-5"> 
		<div class="col-md-7 col-lg-8 col-xxl-7 pb-5 mb-0 mb-lg-5"> 
			<h1 class="text-black">Community</h1>
			
			<p class="text-black mb-0">여행을 계획 중이신가요? 최고의 목적지로 오세요!</p>
			
		</div>
	</div>
</div>
<!-- 검색창 section -->
<div class="row mt-n7 bg-white">
	<div class="col-9 mx-auto z-index-1 rounded-box" style="height: 100px;">
<!-- 검색창 시작 -->
<form name="searchForm" action="${path}/board/list" method="get">
    <input type="hidden" name="page" value="1">

    <!-- 카테고리 checkbox -->    
    <div class="search-container">
        <c:forEach var="item" items="${categoryList}">
            <label>
                <input type="checkbox" name="types" value="${item.type}"
                        ${fn:contains(typeList, item.type) ? 'checked' : ''} >
                ${item.name}
            </label>
        </c:forEach>
    </div>

    <!-- 검색창 -->    
    <div class="search-container">
        <label><input type="radio" name="searchType" value="title" 
                    ${searchType == 'title' ? 'checked' : ''} />제목</label>
        <label><input type="radio" name="searchType" value="content"
                    ${searchType == 'content' ? 'checked' : ''} />내용</label>
        <label><input type="radio" name="searchType" value="writer"
                    ${searchType == 'writer' ? 'checked' : ''} />작성자</label>

        <div class="form-mix-icon-input form-size-lg">
            <input type="text" id="searchValue" name="searchValue" class="form-control" 
                    value="${param.searchValue}" />
        </div>

        <button type="submit" class="btn btn-lg btn-info mb-0">검색</button>
        <button type="reset" class="btn btn-lg btn-info mb-0">초기화</button>
    </div>
</form>
<!-- 검색창 끝 -->
		
		<!-- 글쓰기 버튼 -->
		<c:if test="${loginMember != null }">
			<button type="button" id="btn-add" style="margin-bottom: 3px;" 
							onclick="location.href='${path}/board/write'">글쓰기</button>
		</c:if>
</div>
</div>	
<!-- searchType이 비었을 경우 title로 초기화하는 코드  -->
<c:set var="searchType" value="${param.searchType}" />
<c:if test="${empty searchType}">
	<c:set var="searchType" value="title" />
</c:if>

<section id="content">
	<div id='board-list-container'>
		
		
		
		<!-- 게시판 목록 시작 -->
		<h2>리뷰게시판</h2>
		<table id="tbl-board">
		
			<tr>
				<th>번호</th>
				<th>타입</th>
				<th>제목</th>
				<th>작성자</th>
				<th>작성일</th>
				<th>첨부파일</th>
				<th>조회수</th>
			</tr>
			
			<c:if test="${empty list}">
				<tr>
					<td colspan="6">조회된 글이 없습니다.</td>
				</tr>
			</c:if>
			
			<c:if test="${not empty list}">
				<c:forEach var="item" items="${list}">
					<tr>
<%-- 					<td>${item.bno}</td> 이렇게 해도 되는데..... --%>
						<td><c:out value="${item.bno}"/></td>
						<td><c:out value="${typeMap[item.type]}"/></td>
						<td>
							<a href="${path}/board/view?no=${item.bno}">
								<c:out value="${item.title}"/>
							</a>
						</td>
						<td><c:out value="${item.memberName}(${item.memberId})"/></td>
						<td><fmt:formatDate type="date" value="${item.createDate}"/></td>
						<td>
							<c:if test="${item.attachCount > 0}">
								<img alt="" src="${path}/resources/images/file.png">					
							</c:if>						
							<c:if test="${item.attachCount == 0}">
								<span>-</span>				
							</c:if>						
						</td>
						<td><c:out value="${item.readCount}"/></td>
					</tr>
				</c:forEach>
			</c:if>
		</table>
		<!-- 게시판 목록 끝 -->

		<!-- page부 시작 -->
			<div align="center">
				<!-- 가장 단순화된 버전 = 검색어가 없는 경우 -->
<!-- 			처음 페이지로 이동하는 코드 -->
<%-- 	 			<button onclick="location.href='${path}/board/list?page=1'">&lt;&lt;</button>  --%>
<!-- 			이전 페이지로 이동하는 코드 -->
<%-- 	 			<button onclick="location.href='${path}/board/list?page=${pageInfo.prevPage}'">&lt;</button>  --%>
				
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
			</div>
		<!-- page부 끝 -->
	</div>
	

<div class="relative-container col-10">
  <div class="relative-item">
	<img src="${pageContext.request.contextPath}/resources/images/paintColor.png" width="200">
  </div>
</div>
</section>

<jsp:include page="/WEB-INF/views/common/footer.jsp"/>


<script type="text/javascript">
	function movePage(page){
		searchForm.page.value = page;
		searchForm.submit();
	}
</script>