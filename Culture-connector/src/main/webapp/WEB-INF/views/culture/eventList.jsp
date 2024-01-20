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
	<jsp:param value="공연 행사 목록" name="title"/>
</jsp:include>

		
		<table border="1">
		    <thead>
		        <tr>
		            <th>번호</th>
		            <th>주소1</th>
		            <th>주소2</th>
		            <th>예약여부</th>
		            <th>카테고리1</th>
		            <th>카테고리2</th>
		            <th>카테고리3</th>
		            <th>컨텐츠 ID</th>
		            <th>컨텐츠 타입 ID</th>
		            <th>생성 시간</th>
		            <th>이벤트 시작 일자</th>
		            <th>이벤트 종료 일자</th>
		            <th>첫 번째 이미지</th>
		            <th>두 번째 이미지</th>
		            <th>저작권 구분 코드</th>
		            <th>지도 X 좌표</th>
		            <th>지도 Y 좌표</th>
		            <th>M 레벨</th>
		            <th>수정 시간</th>
		            <th>지역 코드</th>
		            <th>시군구 코드</th>
		            <th>전화번호</th>
		            <th>제목</th>
		            <th>우편번호</th>
		            <th>주최기관1</th>
		            <th>주최기관1 전화번호</th>
		            <th>주최기관2</th>
		            <th>주최기관2 전화번호</th>
		            <th>이벤트 종료 일자</th>
		            <th>플레이타임</th>
		            <th>이벤트 장소</th>
		            <th>이벤트 홈페이지</th>
		            <th>연령 제한</th>
		            <th>예매처</th>
		            <th>장소 정보</th>
		            <th>서브 이벤트</th>
		            <th>프로그램</th>
		            <th>이벤트 시작 일자</th>
		            <th>이용 시간 페스티벌</th>
		            <th>할인 정보 페스티벌</th>
		            <th>지출 시간 페스티벌</th>
		            <th>페스티벌 등급</th>
		        </tr>
		    </thead>
		    <tbody>
		        <c:forEach var="item" items="${eventList}">
		            <tr>
		                <td>${item.eno}</td>
		                <td>${item.addr1}</td>
		                <td>${item.addr2}</td>
		                <td>${item.booktour}</td>
		                <td>${item.cat1}</td>
		                <td>${item.cat2}</td>
		                <td>${item.cat3}</td>
		                <td>${item.contentid}</td>
		                <td>${item.contenttypeid}</td>
		                <td><fmt:formatDate type="date" value="${item.createdtime}"/></td>
		                <td>${item.eventStartDate}</td>
		                <td>${item.eventEndDate}</td>
		                <td>${item.firstimage}</td>
		                <td>${item.firstimage2}</td>
		                <td>${item.cpyrhtDivCd}</td>
		                <td>${item.mapx}</td>
		                <td>${item.mapy}</td>
		                <td>${item.mlevel}</td>
		                <td><fmt:formatDate type="date" value="${item.modifiedtime}"/></td>
		                <td>${item.areacode}</td>
		                <td>${item.sigungucode}</td>
		                <td>${item.tel}</td>
		                <td>${item.title}</td>
		                <td>${item.zipcode}</td>
		                <td>${item.sponsor1}</td>
		                <td>${item.sponsor1tel}</td>
		                <td>${item.sponsor2}</td>
		                <td>${item.sponsor2tel}</td>
		                <td>${item.eventEndDate}</td>
		                <td>${item.playtime}</td>
		                <td>${item.eventPlace}</td>
		                <td>${item.eventHomepage}</td>
		                <td>${item.agelimit}</td>
		                <td>${item.bookingplace}</td>
		                <td>${item.placeinfo}</td>
		                <td>${item.subevent}</td>
		                <td>${item.program}</td>
		                <td>${item.eventStartDate}</td>
		                <td>${item.usetimefestival}</td>
		                <td>${item.discountinfofestival}</td>
		                <td>${item.spendtimefestival}</td>
		                <td>${item.festivalgrade}</td>
		            </tr>
		        </c:forEach>
		    </tbody>
		</table>
		
	


<jsp:include page="/WEB-INF/views/common/footer.jsp"/>



