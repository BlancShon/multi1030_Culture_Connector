<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<style>
    section>div#board-write-container{width:600px; margin:0 auto; text-align:center;}
    section>div#board-write-container h2{margin:10px 0;}
    table#tbl-board{width:500px; margin:0 auto; border:1px solid black; border-collapse:collapse; clear:both; }
    table#tbl-board th {width: 125px; border:1px solid; padding: 5px 0; text-align:center;} 
    table#tbl-board td {border:1px solid; padding: 5px 0 5px 10px; text-align:left;}
    .input-text {width: 350px;}
</style>



    <!-- 썸머노트-->
<script src="https://code.jquery.com/jquery-3.5.1.min.js" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.js"></script>





<jsp:include page="/WEB-INF/views/common/cultureheader.jsp">
	<jsp:param value="게시글 작성" name="title"/>
</jsp:include>



<!-- 글쓰기 에디터 추천 : https://summernote.org/ , https://naver.github.io/smarteditor2/user_guide/ -->


<div class="container col-10 align-items-center mb-9">
    <div class="col-12 p-4">
        <div class="card bg-light p-4 align-items-center align-content-center">
            <!-- Svg decoration -->
            <figure class="position-absolute end-0 bottom-0 mb-n4 me-n2">
                <svg class="fill-orange" width="104.2px" height="95.2px">
                </svg>
            </figure>

            <!-- Card header -->
            <div class="card-header bg-light p-0 pb-3">
                <h3 class="mb-0">글 작성 하기</h3>
            </div>
            
           <%--  <select name="type">
				<c:forEach var="item" items="${categoryList}" varStatus="status">
					<c:if test="${status.first and loginMember.role == 'ROLE_ADMIN'}">
						<option value="${item.type}">${item.name}</option>
					</c:if>
					<c:if test="${not status.first and not status.last}">
						<option value="${item.type}">${item.name}</option>
					</c:if>
					<c:if test="${status.last and loginMember.role == 'ROLE_ADMIN'}">
						<option value="${item.type}">${item.name}</option>
					</c:if>
				</c:forEach>
			</select> --%>
			

            <!-- Card body START -->
            <div class="card-body p-0 mx-auto">
                <form class="row g-4">
                    <!-- Name -->
                    <div class="col-12">
                    	 <label class="form-label"><h5>작성자</h5></label>
                      <input type="text" name="memberId" value="${loginMember.id}" readonly class="input-text">
                    </div>
                    <div class="col-12">
                        <label class="form-label"><h5>제목</h5></label>
                        <input type="text" class="form-control">
                    </div>
                   
                    <!-- Mobile number -->
                    <div class="col-12">
                       
                        <div class="mb-3">
                          <label class="form-label">첨부파일</label>
                          <input class="form-control" type="file" id="formFile">
                        </div>
                    </div>
                    <!-- Message -->
                    <div class="col-12 mx-auto">

                       <!-- 썸머 노트 -->
                        <div id="summernote"></div>
                        <textarea name="content" rows="30" cols="113"></textarea>
                    </div>
                   
                    <!-- Button -->
                    <div class="col-12 text-center">
                        <a href="./review-talk1.html"><button class="btn btn-success mb-0 align-content-center col-3" type="button">글 작성</button></a>
                    </div>	
                </form>
            </div>
            <!-- Card body END -->
        </div>
    </div>
</div>
<!-- 글쓰기 끝-->


<jsp:include page="/WEB-INF/views/common/footer.jsp"/>





