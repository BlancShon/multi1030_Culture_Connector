<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>코스 목록</title>
    <style>
        table {
            border-collapse: collapse;
            width: 100%;
        }
        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }
        th {
            background-color: #f2f2f2;
        }
        .table-cell {
		  white-space: nowrap;
		  overflow: hidden;
		  text-overflow: ellipsis; /* 텍스트가 너무 길면 생략 (...) 표시 */
    </style>
</head>
<body>
	<h3><a href="${path}/">홈</a></h3>
         <h3><a href="${path}/dbsave">데이터베이스</a></h3>

    <h2>코스 목록</h2>

    <table>
    <thead>
        <tr>
            <th>CONTENTID</th>
            <th>CONTENTTYPEID</th>
            <th>ADDR1</th>
            <th>ADDR2</th>
            <th>AREACODE</th>
            <th>BOOKTOUR</th>
            <th>CAT1</th>
            <th>CAT2</th>
            <th>CAT3</th>
            <th>CREATEDTIME</th>
            <th>FIRSTIMAGE</th>
            <th>FIRSTIMAGE2</th>
            <th>CPYRHTDIVCD</th>
            <th>MAPX</th>
            <th>MAPY</th>
            <th>MLEVEL</th>
            <th>MODIFIEDTIME</th>
            <th>SIGUNGUCODE</th>
            <th>TEL</th>
            <th>TITLE</th>
            <th>ZIPCODE</th>
            <th>INFOCENTERTOURCOURSE</th>
            <th>SCHEDULE</th>
            <th>TAKETIME</th>
            <th>THEME</th>
            <th>DISTANCE</th>
            <th>OVERVIEW</th>
            <th>HOMEPAGE</th>
            
             <!-- 추가된 부분 시작 -->
            <th>SUBCONTENTID0</th>
            <th>SUBCONTENTTYPEID0</th>
            <th>SUBCONTENTTITLE0</th>
            <th>SUBCONTENTFIRSTIMAGE0</th>
            <th>SUBCONTENTADD10</th>
            <th>SUBCONTENTADD20</th>
            <th>SUBCONTENTADDMAPX0</th>
            <th>SUBCONTENTADDMAPY0</th>
            <th>SUBCONTENTADDOVERVIEW0</th>
            <th>SUBCONTENTADDHOMEPAGE0</th>
            
            <!-- 추가된 부분 시작 -->
            <th>SUBCONTENTID1</th>
            <th>SUBCONTENTTYPEID1</th>
            <th>SUBCONTENTTITLE1</th>
            <th>SUBCONTENTFIRSTIMAGE1</th>
            <th>SUBCONTENTADD11</th>
            <th>SUBCONTENTADD21</th>
            <th>SUBCONTENTADDMAPX1</th>
            <th>SUBCONTENTADDMAPY1</th>
            <th>SUBCONTENTADDOVERVIEW1</th>
            <th>SUBCONTENTADDHOMEPAGE1</th>
            
             <th>SUBCONTENTID2</th>
            <th>SUBCONTENTTYPEID2</th>
            <th>SUBCONTENTTITLE2</th>
            <th>SUBCONTENTFIRSTIMAGE2</th>
            <th>SUBCONTENTADD12</th>
            <th>SUBCONTENTADD22</th>
            <th>SUBCONTENTADDMAPX2</th>
            <th>SUBCONTENTADDMAPY2</th>
            <th>SUBCONTENTADDOVERVIEW2</th>
            <th>SUBCONTENTADDHOMEPAGE2</th>
            
              <th>SUBCONTENTID3</th>
            <th>SUBCONTENTTYPEID3</th>
            <th>SUBCONTENTTITLE3</th>
            <th>SUBCONTENTFIRSTIMAGE3</th>
            <th>SUBCONTENTADD13</th>
            <th>SUBCONTENTADD23</th>
            <th>SUBCONTENTADDMAPX3</th>
            <th>SUBCONTENTADDMAPY3</th>
            <th>SUBCONTENTADDOVERVIEW3</th>
            <th>SUBCONTENTADDHOMEPAGE3</th>
            
             <th>SUBCONTENTID4</th>
            <th>SUBCONTENTTYPEID4</th>
            <th>SUBCONTENTTITLE4</th>
            <th>SUBCONTENTFIRSTIMAGE4</th>
            <th>SUBCONTENTADD14</th>
            <th>SUBCONTENTADD24</th>
            <th>SUBCONTENTADDMAPX4</th>
            <th>SUBCONTENTADDMAPY4</th>
            <th>SUBCONTENTADDOVERVIEW4</th>
            <th>SUBCONTENTADDHOMEPAGE4</th>
            
            
            
        </tr>
    </thead>
    <tbody>
        <c:if test="${not empty list}">
            <c:forEach var="item" items="${list}">
                <tr>
                    <td><c:out value="${item.contentid}"/></td>
                    <td><c:out value="${item.contenttypeid}"/></td>
                    <td><c:out value="${item.addr1}"/></td>
                    <td><c:out value="${item.addr2}"/></td>
                    <td><c:out value="${item.areacode}"/></td>
                    <td><c:out value="${item.booktour}"/></td>
                    <td><c:out value="${item.cat1}"/></td>
                    <td><c:out value="${item.cat2}"/></td>
                    <td><c:out value="${item.cat3}"/></td>
                    <td><c:out value="${item.createdtime}"/></td>
                    <td><c:out value="${item.firstimage}"/></td>
                    <td><c:out value="${item.firstimage2}"/></td>
                    <td><c:out value="${item.cpyrhtDivCd}"/></td>
                    <td><c:out value="${item.mapx}"/></td>
                    <td><c:out value="${item.mapy}"/></td>
                    <td><c:out value="${item.mlevel}"/></td>
                    <td><c:out value="${item.modifiedtime}"/></td>
                    <td><c:out value="${item.sigungucode}"/></td>
                    <td><c:out value="${item.tel}"/></td>
                    <td><c:out value="${item.title}"/></td>
                    <td><c:out value="${item.zipcode}"/></td>
                    <td><c:out value="${item.infocentertourcourse}"/></td>
                    <td><c:out value="${item.schedule}"/></td>
                    <td><c:out value="${item.taketime}"/></td>
                    <td><c:out value="${item.theme}"/></td>
                    <td><c:out value="${item.distance}"/></td>
                    <td class="table-cell"><c:out value="${item.overview}"/></td>
                    <td><c:out value="${item.homepage}"/></td>
                    
                     <td><c:out value="${item.subcontentid0}"/></td>
		            <td><c:out value="${item.subcontenttypeid0}"/></td>
		            <td><c:out value="${item.subcontenttitle0}"/></td>
		            <td><c:out value="${item.subcontentfirstimage0}"/></td>
		            <td><c:out value="${item.subcontentadd10}"/></td>
		            <td><c:out value="${item.subcontentadd20}"/></td>
		            <td><c:out value="${item.subcontentaddmapx0}"/></td>
		            <td><c:out value="${item.subcontentaddmapy0}"/></td>
		            <td><c:out value="${item.subcontentaddoverview0}"/></td>
		            <td><c:out value="${item.subcontentaddhomepage0}"/></td>
		            
		             <td><c:out value="${item.subcontentid1}"/></td>
		          <td><c:out value="${item.subcontenttypeid1}"/></td>
		          <td><c:out value="${item.subcontenttitle1}"/></td>
		          <td><c:out value="${item.subcontentfirstimage1}"/></td>
		          <td><c:out value="${item.subcontentadd11}"/></td>
		          <td><c:out value="${item.subcontentadd21}"/></td>
		          <td><c:out value="${item.subcontentaddmapx1}"/></td>
		          <td><c:out value="${item.subcontentaddmapy1}"/></td>
		          <td><c:out value="${item.subcontentaddoverview1}"/></td>
		          <td><c:out value="${item.subcontentaddhomepage1}"/></td>
		            
		             <td><c:out value="${item.subcontentid2}"/></td>
		            <td><c:out value="${item.subcontenttypeid2}"/></td>
		            <td><c:out value="${item.subcontenttitle2}"/></td>
		            <td><c:out value="${item.subcontentfirstimage2}"/></td>
		            <td><c:out value="${item.subcontentadd12}"/></td>
		            <td><c:out value="${item.subcontentadd22}"/></td>
		            <td><c:out value="${item.subcontentaddmapx2}"/></td>
		            <td><c:out value="${item.subcontentaddmapy2}"/></td>
		            <td><c:out value="${item.subcontentaddoverview2}"/></td>
		            <td><c:out value="${item.subcontentaddhomepage2}"/></td>
		
		            <!-- 필요한 만큼 SUBCONTENT 변수들 추가 -->
		
		            <td><c:out value="${item.subcontentid3}"/></td>
		            <td><c:out value="${item.subcontenttypeid3}"/></td>
		            <td><c:out value="${item.subcontenttitle3}"/></td>
		            <td><c:out value="${item.subcontentfirstimage3}"/></td>
		            <td><c:out value="${item.subcontentadd13}"/></td>
		            <td><c:out value="${item.subcontentadd23}"/></td>
		            <td><c:out value="${item.subcontentaddmapx3}"/></td>
		            <td><c:out value="${item.subcontentaddmapy3}"/></td>
		            <td><c:out value="${item.subcontentaddoverview3}"/></td>
		            <td><c:out value="${item.subcontentaddhomepage3}"/></td>
		
		            <!-- 필요한 만큼 SUBCONTENT 변수들 추가 -->
		
		            <td><c:out value="${item.subcontentid4}"/></td>
		            <td><c:out value="${item.subcontenttypeid4}"/></td>
		            <td><c:out value="${item.subcontenttitle4}"/></td>
		            <td><c:out value="${item.subcontentfirstimage4}"/></td>
		            <td><c:out value="${item.subcontentadd14}"/></td>
		            <td><c:out value="${item.subcontentadd24}"/></td>
		            <td><c:out value="${item.subcontentaddmapx4}"/></td>
		            <td><c:out value="${item.subcontentaddmapy4}"/></td>
		            <td><c:out value="${item.subcontentaddoverview4}"/></td>
		            <td><c:out value="${item.subcontentaddhomepage4}"/></td>
                </tr>
            </c:forEach>
        </c:if>
    </tbody>
</table>
					
      </body>
  </html>