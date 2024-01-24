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
    <title>축제 목록</title>
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

    <h2>축제 목록</h2>

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
            <th>OVERVIEW</th>
            <th>SPONSOR1</th>
            <th>SPONSOR1TEL</th>
            <th>SPONSOR2</th>
            <th>SPONSOR2TEL</th>
            <th>EVENTENDDATE</th>
            <th>PLAYTIME</th>
            <th>EVENTPLACE</th>
            <th>EVENTHOMEPAGE</th>
            <th>AGELIMIT</th>
            <th>BOOKINGPLACE</th>
            <th>PLACEINFO</th>
            <th>SUBEVENT</th>
            <th>PROGRAM</th>
            <th>EVENTSTARTDATE</th>
            <th>USETIMEFESTIVAL</th>
            <th>DISCOUNTINFOFESTIVAL</th>
            <th>SPENDTIMEFESTIVAL</th>
            <th>FESTIVALGRADE</th>
            <th>IMAGE0</th>
            <th>IMAGE1</th>
            <th>IMAGE2</th>
            <th>IMAGE3</th>
            <th>IMAGE4</th>
            <th>IMAGE5</th>
            <th>IMAGE6</th>
            <th>IMAGE7</th>
            <th>IMAGE8</th>
            <th>IMAGE9</th>
            <th>IMAGE10</th>
            <th>IMAGE11</th>
            <th>IMAGE12</th>
            <th>IMAGE13</th>
            <th>IMAGE14</th>
            <th>IMAGE15</th>
            <th>IMAGE16</th>
            <th>IMAGE17</th>
            <th>IMAGE18</th>
            <th>IMAGE19</th>
            <th>IMAGE20</th>
            <th>IMGCOUNT</th>
           	<th>OVERVIEW</th>
            <th>HOMEPAGE</th>
        </tr>
    </thead>
    <tbody>
        <c:if test="${not empty list}">
            <c:forEach var="item" items="${list}">
                <tr>
                    <td><c:out value="${item.contentid}" /></td>
                    <td><c:out value="${item.contenttypeid}" /></td>
                    <td><c:out value="${item.addr1}" /></td>
                    <td><c:out value="${item.addr2}" /></td>
                    <td><c:out value="${item.areacode}" /></td>
                    <td><c:out value="${item.booktour}" /></td>
                    <td><c:out value="${item.cat1}" /></td>
                    <td><c:out value="${item.cat2}" /></td>
                    <td><c:out value="${item.cat3}" /></td>
                    <td><c:out value="${item.createdtime}" /></td>
                    <td><img src="<c:out value="${item.firstimage}" />" height="200px" alt="이미지 설명" /></td>
                    <td><img src="<c:out value="${item.firstimage2}" />" height="200px" alt="이미지 설명" /></td>
                    <td><c:out value="${item.cpyrhtDivCd}" /></td>
                    <td><c:out value="${item.mapx}" /></td>
                    <td><c:out value="${item.mapy}" /></td>
                    <td><c:out value="${item.mlevel}" /></td>
                    <td><c:out value="${item.modifiedtime}" /></td>
                    <td><c:out value="${item.sigungucode}" /></td>
                    <td><c:out value="${item.tel}" /></td>
                    <td><c:out value="${item.title}" /></td>
                    <td><c:out value="${item.zipcode}" /></td>
                    <td><c:out value="${item.overview}" /></td>
					<td><c:out value="${item.sponsor1}" /></td>
					<td><c:out value="${item.sponsor1tel}" /></td>
					<td><c:out value="${item.sponsor2}" /></td>
					<td><c:out value="${item.sponsor2tel}" /></td>
					<td><c:out value="${item.eventenddate}" /></td>
					<td><c:out value="${item.playtime}" /></td>
					<td><c:out value="${item.eventplace}" /></td>
					<td><c:out value="${item.eventhomepage}" /></td>
					<td><c:out value="${item.agelimit}" /></td>
					<td><c:out value="${item.bookingplace}" /></td>
					<td><c:out value="${item.placeinfo}" /></td>
					<td><c:out value="${item.subevent}" /></td>
					<td><c:out value="${item.program}" /></td>
					<td><c:out value="${item.eventstartdate}" /></td>
					<td><c:out value="${item.usetimefestival}" /></td>
					<td><c:out value="${item.discountinfofestival}" /></td>
					<td><c:out value="${item.spendtimefestival}" /></td>
					<td><c:out value="${item.festivalgrade}" /></td>
					<td><img src="<c:out value="${item.image0}" />" height="200px" alt="이미지 설명" /></td>
					<td><img src="<c:out value="${item.image1}" />" height="200px" alt="이미지 설명" /></td>
					<td><img src="<c:out value="${item.image2}" />" height="200px" alt="이미지 설명" /></td>
					<td><img src="<c:out value="${item.image3}" />" height="200px" alt="이미지 설명" /></td>
					<td><img src="<c:out value="${item.image4}" />" height="200px" alt="이미지 설명" /></td>
					<td><img src="<c:out value="${item.image5}" />" height="200px" alt="이미지 설명" /></td>
					<td><img src="<c:out value="${item.image6}" />" height="200px" alt="이미지 설명" /></td>
					<td><img src="<c:out value="${item.image7}" />" height="200px" alt="이미지 설명" /></td>
					<td><img src="<c:out value="${item.image8}" />" height="200px" alt="이미지 설명" /></td>
					<td><img src="<c:out value="${item.image9}" />" height="200px" alt="이미지 설명" /></td>
					<td><img src="<c:out value="${item.image10}" />" height="200px" alt="이미지 설명" /></td>
					<td><img src="<c:out value="${item.image11}" />" height="200px" alt="이미지 설명" /></td>
					<td><img src="<c:out value="${item.image12}" />" height="200px" alt="이미지 설명" /></td>
					<td><img src="<c:out value="${item.image13}" />" height="200px" alt="이미지 설명" /></td>
					<td><img src="<c:out value="${item.image14}" />" height="200px" alt="이미지 설명" /></td>
					<td><img src="<c:out value="${item.image15}" />" height="200px" alt="이미지 설명" /></td>
					<td><img src="<c:out value="${item.image16}" />" height="200px" alt="이미지 설명" /></td>
					<td><img src="<c:out value="${item.image17}" />" height="200px" alt="이미지 설명" /></td>
					<td><img src="<c:out value="${item.image18}" />" height="200px" alt="이미지 설명" /></td>
					<td><img src="<c:out value="${item.image19}" />" height="200px" alt="이미지 설명" /></td>
					<td><img src="<c:out value="${item.image20}" />" height="200px" alt="이미지 설명" /></td>
					<td><c:out value="${item.imgCount}" /></td>
					 <td class="table-cell"><c:out value="${item.overview}"/></td>
                    <td><c:out value="${item.homepage}"/></td>
				</tr>
			</c:forEach>
		</c:if>
	</tbody>
</table>
                    

      </body>
  </html>