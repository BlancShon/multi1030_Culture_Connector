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
	<jsp:param value="문화시설 목록" name="title"/>
</jsp:include>



		
		<form name="cultureList" action="${path}/culture/list" method="get">
		<table id="tbl-board">
			<tr>
				<th>번호</th>
				<th>주소1</th>
				<th>주소2</th>
				<th>지역코드</th>
				<th>예약여부</th>
				<th>cat1</th>
				<th>cat2</th>
				<th>cat3</th>
				<th>contentid</th>
				<th>contenttypeid</th>
				<th>createdtime</th>
				<th>firstimage</th>
				<th>firstimage2</th>
				<th>cpyrhtDivCd</th>
				<th>mapx</th>
				<th>mapy</th>
				<th>mlevel</th>
				<th>modifiedtime</th>
				<th>sigungucode</th>
				<th>tel</th>
				<th>title</th>
				<th>zipcode</th>
			</tr>
			
			<c:if test="${empty list}">
				<tr>
					<td colspan="6">조회된 글이 없습니다.</td>
				</tr>
			</c:if>
			
			<c:if test="${not empty list}">
				<c:forEach var="item" items="${list}">
					<tr>
						<td><c:out value="${item.cno}"/></td>
						
						<td><c:out value="${item.addr1}"/></td>
						<td><c:out value="${item.addr2}"/></td>
						<td><c:out value="${item.areacode}"/></td>
					<td><c:out value="${item.booktour}"/></td>
						<td><c:out value="${item.cat1}"/></td>
						<td><c:out value="${item.cat2}"/></td>
						<td><c:out value="${item.cat3}"/></td>
						<td><c:out value="${item.contentid}"/></td>
						<td><c:out value="${item.contenttypeid}"/></td>
						<td><fmt:formatDate type="date" value="${item.createdtime}"/></td>
						<td><c:out value="${item.firstimage}"/></td>
						<td><c:out value="${item.firstimage2}"/></td>
						<td><c:out value="${item.cpyrhtDivCd}"/></td>
						<td><c:out value="${item.mapx}"/></td>
						<td><c:out value="${item.mapy}"/></td>
						<td><fmt:formatDate type="date" value="${item.modifiedtime}"/></td>
						<td><c:out value="${item.sigungucode}"/></td>
						<td><c:out value="${item.tel}"/></td>
						<td><c:out value="${item.title}"/></td>
						<td><c:out value="${item.zipcode}"/></td>
						
						
					
					</tr>
				</c:forEach>
			</c:if>
		</table>
		</form>
		
	


<jsp:include page="/WEB-INF/views/common/footer.jsp"/>






