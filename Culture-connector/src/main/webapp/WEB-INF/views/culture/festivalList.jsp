<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<style>
    /* 스타일은 필요에 따라 수정 가능 */
    table#tbl-festival {
        width: 100%;
        margin: 0 auto;
        border: 1px solid black;
        border-collapse: collapse;
        clear: both;
    }

    table#tbl-festival th, table#tbl-festival td {
        border: 1px solid;
        padding: 5px 0;
        text-align: center;
    }
</style>

<jsp:include page="/WEB-INF/views/common/header.jsp">
    <jsp:param value="축제 목록" name="title"/>
</jsp:include>

<section id="festival-list-container">
    <h2>Festival List</h2>

    <table id="tbl-festival">
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
            </tr>
        </thead>
        <tbody>
            <c:if test="${empty festivalList}">
                <tr>
                    <td colspan="24">조회된 축제 정보가 없습니다.</td>
                </tr>
            </c:if>

            <c:if test="${not empty festivalList}">
                <c:forEach var="item" items="${festivalList}">
                    <tr>
                        <td><c:out value="${item.fno}"/></td>
                        <td><c:out value="${item.addr1}"/></td>
                        <td><c:out value="${item.addr2}"/></td>
                        <td><c:out value="${item.booktour}"/></td>
                        <td><c:out value="${item.cat1}"/></td>
                        <td><c:out value="${item.cat2}"/></td>
                        <td><c:out value="${item.cat3}"/></td>
                        <td><c:out value="${item.contentid}"/></td>
                        <td><c:out value="${item.contenttypeid}"/></td>
                        <td><fmt:formatDate type="date" value="${item.createdtime}"/></td>
                        <td><c:out value="${item.eventstartdate}"/></td>
                        <td><c:out value="${item.eventenddate}"/></td>
                        <td><c:out value="${item.firstimage}"/></td>
                        <td><c:out value="${item.firstimage2}"/></td>
                        <td><c:out value="${item.cpyrhtDivCd}"/></td>
                        <td><c:out value="${item.mapx}"/></td>
                        <td><c:out value="${item.mapy}"/></td>
                        <td><c:out value="${item.mlevel}"/></td>
                        <td><fmt:formatDate type="date" value="${item.modifiedtime}"/></td>
                        <td><c:out value="${item.areacode}"/></td>
                        <td><c:out value="${item.sigungucode}"/></td>
                        <td><c:out value="${item.tel}"/></td>
                        <td><c:out value="${item.title}"/></td>
                    </tr>
                </c:forEach>
            </c:if>
        </tbody>
    </table>
</section>

<jsp:include page="/WEB-INF/views/common/footer.jsp"/>
