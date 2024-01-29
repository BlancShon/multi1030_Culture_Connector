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
    div#comment-container button#btn-insert{width:60px;height:50px; color:white; background-color:#3300FF;position:relative;top:-20px;}
    
    /*댓글테이블*/
    table#tbl-comment{width:580px; margin:0 auto; border-collapse:collapse; clear:both; } 
    table#tbl-comment tr td{border-bottom:1px solid; border-top:1px solid; padding:5px; text-align:left; line-height:120%;}
    table#tbl-comment tr td:first-of-type{padding: 5px 5px 5px 50px;}
    table#tbl-comment tr td:last-of-type {text-align:right; width: 100px;}
    table#tbl-comment button.btn-delete{display:none;}
    table#tbl-comment tr:hover {background:lightgray;}
    table#tbl-comment tr:hover button.btn-delete{display:inline;}
    table#tbl-comment sub.comment-writer {color:navy; font-size:14px}
    table#tbl-comment sub.comment-date {color:tomato; font-size:10px}
</style>

<jsp:include page="/WEB-INF/views/common/cultureheader.jsp">
	<jsp:param value="게시글 상세조회" name="title"/>
</jsp:include>

<!-- 배경 화면 -->

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
    <!-- 배경 끝 -->

<!--  배경 화면 끝 -->


<section id="board-write-container">
	<div class="container col-10 align-items-center mb-9 mt-5">
	    <div class="col-12 p-4">
	        <div class="bg-light p-4 align-items-center">
	        
	         <div class="card-header bg-light p-0 pb-3">
                <h2 class="mb-0"  align="center">글 상세 조회</h3>
            </div>
            
            
            <!-- Card body START -->
            <div class="card-body p-0 col-10 mx-auto">
                <form class="row g-4">
                    <!-- Name -->
                    <table>
                      <tbody><tr>
                        <th class="col-sm-3 p-1 align-middle font-size150">제목 : <c:out value="${board.title}"/></th>
                        <th class="col-4" rowspan="3">
                        </th>
                      </tr>
                      <tr>
                        <td class="p-1 text-custom-gray300">작성자 : <c:out value="${board.memberName}(${board.memberId})"/></td>
                        <td class="text-end p-1 text-custom-gray300"><fmt:formatDate type="both" value="${board.createDate}"/> </td>
                        <td class="text-end p-1 text-custom-gray300">조회수</td>
                        <td class="text-start p-1 text-custom-gray300"><c:out value="${board.readCount}"/></td>
                        <td class="text-end p-1 text-custom-gray300">댓글</td>
                        <td class="text-start p-1 text-custom-gray300">2</td>
                        <tr>
			<th>첨부 파일</th>
			<td>
				<c:if test="${empty board.attachFiles}">
					<span>-</span>
				</c:if>		
				<c:if test="${not empty board.attachFiles}">
					<c:forEach var="item" items="${board.attachFiles }">
						<div>
							<a href="javascript:fileDownload('${item.fno}');">
								<img src="${path}/resources/images/file.png" width="20" height="20"/>
								<c:out value="${item.originalFilename}"></c:out>		
							</a>
						</div>
					</c:forEach>
				</c:if>		
			</td>		
		</tr>
		<tr>
			<th>첨부파일(이미지)</th>
			<td>
				<c:if test="${not empty board.attachFiles}">
					<c:forEach var="item" items="${board.attachFiles}" >
					<c:if test="${fn:contains(item.originalFilename,'.jpg') 
								  or fn:contains(item.originalFilename,'.png')  
								  or fn:contains(item.originalFilename,'.jpeg')}">
					<div>
						<img src="${path}/resources/upload/board/${item.renamedFilename}"
																	width="100%" height="100%"/>
					</div>
					</c:if>
					</c:forEach>
				</c:if>
			</td>
		</tr>
                      </tr>
                    </tbody>
                  </table>
                   
                   
                    <!-- Message -->
                    <div class="col-12">

                        <div class="col-10  mx-auto">
                            <textarea class="form-control" rows="25" disabled readonly>
                            	<c:out value="${board.content}"/>
                            </textarea>
                        </div>
                    </div>
                   
                    <!-- Button -->
                    <div style="margin-left: 78%;">
                      <button class="btn btn-success" type="button" id="btnUpdate">수정</button>
                      <button class="btn btn-success" type="button" id="btnDelete">삭제</button>
                    </div>
                </form>
            </div>
            <br><hr>
            
            <!--  댓글 작성 -->
                <form class="row g-4">
						
				<!-- Message -->
				<div class="col-12">
					<label class="form-label">Message *</label>
					<textarea class="form-control" rows="3"></textarea>
				</div>
			
				<!-- Button -->
				<div class="col-12" style="margin-left: 78%;">
					<button class="btn btn-success mb-0" type="button">등록</button>
				</div>	
			</form>
			<!--  댓글 작성 끝 -->
			
			<c:if test="${not empty loginMember}">
				<div id="comment-container">
			    	<div class="comment-editor" align="center">
			    		<form action="${path}/board/reply" method="post">
			    			<input type="hidden" name="bno" value="${board.bno}" />
			    			<input type="hidden" name="memberId" value="${loginMember.id}" />
							<textarea name="content" id="replyContent" cols="55" rows="3"></textarea>
							<button type="submit" id="btn-insert">등록</button>	  	
			    		</form>
			    	</div>
			   	</div>
			</c:if>
			
			 <br><hr>
			 
			 <!--  댓글 보기 -->
			 
			<!-- Review item -->
				<div class="row g-3 g-lg-4">
					<div class="col-md-4 col-xxl-3">
						<!-- Avatar and info -->
						<div class="d-flex align-items-center">
							<!-- Info -->
							<div class="ms-2">
								<h5 class="mb-1">Dennis Barrett</h5>
								<p class="mb-0">Stayed 18 Dec 2022</p>
							</div>
						</div>
					</div>

					<div class="col-md-8 col-xxl-9">
						<h6><span class="text-body fw-light">Review on:</span> Superior Room</h6>
						<p>Delivered dejection necessary objection do Mr prevailed. Mr feeling chiefly cordial in doing. Water timed folly right aware if oh truth. Large above be to means. Dashwood does provide stronger is.</p>

						<!-- Button -->
						<div class="d-flex justify-content-between align-items-center">
							<a href="#" class="text-primary-hover"><i class="bi bi-trash3 me-1"></i>Delete</a>
						</div>
					</div>
				</div> 
            
            
			 <!--  댓글 보기  끝-->
			 
			 <!-- 리플 리스트 출력 -->
	<table id="tbl-comment">
		<c:if test="${empty board.replies }">
			<tr>
				<td style="text-align: center;">등록된 리플이 없습니다.</td>
			</tr>
		</c:if>
		
		
		<c:if test="${not empty board.replies}">
			<c:forEach var="reply" items="${board.replies}">
				<tr>
					<td>
						<sub class="comment-writer"><c:out value="${reply.memberName}(${reply.memberId})"/> </sub>
						<sub class="comment-date"><fmt:formatDate type="both" value="${reply.createDate}"/></sub>	
						<br>
						<c:out value="${reply.content}"/>
					</td>
					<td>
						<!-- 삭제버튼 -->
						<c:if test="${not empty loginMember && (loginMember.id == reply.memberId
																|| loginMember.role == 'ROLE_ADMIN') }">
							<button class="btn-delete" onclick="deleteReply('${reply.rno}','${board.bno}');" >삭제</button>
						</c:if>
					</td>
				</tr>
			</c:forEach>
		</c:if>
	</table>
	
            
            
	         </div>
    </div>
</div>
	<!-- 게시글 -->
	
	

      <!-- 내 댓글 작성-->
            <br><hr>
           
        
      <!-- 내 댓글 끝-->
	
	
	
	
	<!-- 리플 작성 Form -->
	<c:if test="${not empty loginMember}">
		<div id="comment-container">
	    	<div class="comment-editor" align="center">
	    		<form action="${path}/board/reply" method="post">
	    			<input type="hidden" name="bno" value="${board.bno}" />
	    			<input type="hidden" name="memberId" value="${loginMember.id}" />
					<textarea name="content" id="replyContent" cols="55" rows="3"></textarea>
					<button type="submit" id="btn-insert">등록</button>	  	
	    		</form>
	    	</div>
	   	</div>
	</c:if>
	
	<!-- 리플 리스트 출력 -->
	<table id="tbl-comment">
		<c:if test="${empty board.replies }">
			<tr>
				<td style="text-align: center;">등록된 리플이 없습니다.</td>
			</tr>
		</c:if>
		
		
		<c:if test="${not empty board.replies}">
			<c:forEach var="reply" items="${board.replies}">
				<tr>
					<td>
						<sub class="comment-writer"><c:out value="${reply.memberName}(${reply.memberId})"/> </sub>
						<sub class="comment-date"><fmt:formatDate type="both" value="${reply.createDate}"/></sub>	
						<br>
						<c:out value="${reply.content}"/>
					</td>
					<td>
						<!-- 삭제버튼 -->
						<c:if test="${not empty loginMember && (loginMember.id == reply.memberId
																|| loginMember.role == 'ROLE_ADMIN') }">
							<button class="btn-delete" onclick="deleteReply('${reply.rno}','${board.bno}');" >삭제</button>
						</c:if>
					</td>
				</tr>
			</c:forEach>
		</c:if>
	</table>
	
	<br>

</section>


<jsp:include page="/WEB-INF/views/common/footer.jsp"/>


<script type="text/javascript">

	$(document).ready(() => {
		$("#btnUpdate").click((e) => {
			location.href = "${path}/board/update?no=${board.bno}";
		});
		
		$("#btnDelete").click((e) => {
			if(confirm("정말로 게시글을 삭제 하시겠습니까?")) {
				location.replace("${path}/board/delete?no=${board.bno}");
			}
		});
	});

	function fileDownload(fno) {
		const url = '${path}/board/fileDown?fno=' + fno;
		location.href = url;
	}

	function deleteReply(rno, bno) {
		const url = '${path}/board/replyDel?rno=' + rno + '&bno=' + bno;
		location.href = url;
	}

</script>


















