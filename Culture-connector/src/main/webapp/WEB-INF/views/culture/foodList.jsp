<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<style>
	section#board-list-container{width:600px; margin:0 auto; text-align:center;}
	section#board-list-container h2{margin:10px 0;}
	table#tbl-board{width:100%; margin:0 auto; border:1px solid black; border-collapse:collapse; clear:both; }
	table#tbl-board th, table#tbl-board td {border:1px solid; padding: 5px 0; text-align:center;} 
	input#btn-add{float:right; margin: 0 0 15px;}
	div#pageBar{margin-top:10px; text-align:center; background-color:rgba(0, 188, 212, 0.3);}
    .blue_window { display: inline-block; width: 366px;  border: 3px solid #6ccaf5; }
    .input_text { width: calc( 100% - 14px); margin: 6px 7px; border: 0;  background: #007dd100; font-weight: bold;font-size: 16px; outline: none;}
    .sch_smit {width: 54px; height: 40px; margin: 0; border: 0; vertical-align: top; background: #007dd1; color: white; font-weight: bold; border-radius: 1px; cursor: pointer;}
    .sch_smit:hover {background: #007dd1;}
    #board-list-container h2{text-align: center; margin-top: 5px; margin-bottom: 5px}
</style>

<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param value="음식점 목록" name="title"/>
</jsp:include>



		
		<form name="foodList" action="${path}/food/list" method="get">
		<table id="tbl-board">
			<tr>
				<th>컨텐츠아이디</th>
				<th>컨텐츠 구분</th>
				<th>홈페이지</th>
				<th>연락처</th>
				<th>음식점이름</th>
				<th>대표이미지</th>
				<th>썸네일</th>
				<th>지역코드</th>
				<th>시군구코드</th>
				<th>카테고리1</th>
				<th>카테고리2</th>
				<th>카테고리3</th>
				<th>주소</th>
				<th>주소2</th>
				<th>우편번호</th>
				<th>좌표X</th>
				<th>좌표Y</th>
				<th>업장 소개</th>
				<th>mLevel</th>
				<th>신용카드 정보</th>
				<th>할인 음식</th>
				<th>대표메뉴</th>
				<th>문의 안내</th>
				<th>어린이시설</th>
				<th>개업일</th>
				<th>그뒤는 아무것도 없음</th>
			</tr>
			
			<c:if test="${empty FoodList}">
				<tr>
					<td colspan="26">조회된 글이 없습니다.</td>
				</tr>
			</c:if>
			
			<c:if test="${not empty FoodList}">	
				<c:forEach var="item" items="${FoodList}">
					<tr>
						<td><c:out value="${item.contentId}"/></td>
						<td><c:out value="${item.contentTypeId}"/></td>
						<td><c:out value="${item.homePage}}"/></td>
						<td><c:out value="${item.tel}"/></td>
						<td><c:out value="${item.title}"/></td>
						<td><c:out value="${item.firstImage}"/></td>
						<td><c:out value="${item.firstImage2}"/></td>
						<td><c:out value="${item.areaCode}"/></td>
						<td><c:out value="${item.siGunGuCode}"/></td>
						<td><c:out value="${item.cat1}"/></td>
						<td><c:out value="${item.cat2}"/></td>
						<td><c:out value="${item.cat3}"/></td>
						<td><c:out value="${item.addr1}"/></td>
						<td><c:out value="${item.addr2}"/></td>
						<td><c:out value="${item.zipCode}"/></td>
						<td><c:out value="${item.mapX}"/></td>
						<td><c:out value="${item.mapY}"/></td>
						<td><c:out value="${item.overView}"/></td>
						<td><c:out value="${item.mlevel}"/></td>
						<td><c:out value="${item.chkcreditcardFood}"/></td>
						<td><c:out value="${item.discountinfoFood}"/></td>
						<td><c:out value="${item.firstMenu}"/></td>
						<td><c:out value="${item.infocenterFood}"/></td>
						<td><c:out value="${item.kidsFacility}"/></td>
						<td><fmt:formatDate type="date" value="${item.opendateFood}"/></td>
						
					
					</tr>
				</c:forEach>
			</c:if>
		</table>
		</form>
		
	


<jsp:include page="/WEB-INF/views/common/footer.jsp"/>






