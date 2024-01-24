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
    <title>레저스포츠 목록</title>
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

    <h2>레포츠</h2>

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
            <th>OPENPERIOD</th>
            <th>RESERVATION</th>
            <th>INFOCENTERLEPORTS</th>
            <th>SCALELEPORTS</th>
            <th>ACCOMCOUNTLEPORTS</th>
            <th>RESTDATELEPORTS</th>
            <th>USETIMELEPORTS</th>
            <th>USEFEELEPORTS</th>
            <th>EXPAGERANGELEPORTS</th>
            <th>PARKINGLEPORTS</th>
            <th>PARKINGFEELEPORTS</th>
            <th>CHKBABYCARLEPORTS</th>
            <th>CHKPETLEPORTS</th>
            <th>CHKCREDITCARDLEPORTS</th>
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
        <c:if test="${not empty leportsList}">
            <c:forEach var="leportsItem" items="${leportsList}">
                <tr>
                    <td><c:out value="${leportsItem.contentid}"/></td>
                    <td><c:out value="${leportsItem.contenttypeid}"/></td>
                    <td><c:out value="${leportsItem.addr1}"/></td>
                    <td><c:out value="${leportsItem.addr2}"/></td>
                    <td><c:out value="${leportsItem.areacode}"/></td>
                    <td><c:out value="${leportsItem.booktour}"/></td>
                    <td><c:out value="${leportsItem.cat1}"/></td>
                    <td><c:out value="${leportsItem.cat2}"/></td>
                    <td><c:out value="${leportsItem.cat3}"/></td>
                    <td><c:out value="${leportsItem.createdtime}"/></td>
                    <td><c:out value="${leportsItem.firstimage}"/></td>
                    <td><c:out value="${leportsItem.firstimage2}"/></td>
                    <td><c:out value="${leportsItem.cpyrhtDivCd}"/></td>
                    <td><c:out value="${leportsItem.mapx}"/></td>
                    <td><c:out value="${leportsItem.mapy}"/></td>
                    <td><c:out value="${leportsItem.mlevel}"/></td>
                    <td><c:out value="${leportsItem.modifiedtime}"/></td>
                    <td><c:out value="${leportsItem.sigungucode}"/></td>
                    <td><c:out value="${leportsItem.tel}"/></td>
                    <td><c:out value="${leportsItem.title}"/></td>
                    <td><c:out value="${leportsItem.zipcode}"/></td>
                    <td><c:out value="${leportsItem.openperiod}"/></td>
                    <td><c:out value="${leportsItem.reservation}"/></td>
                    <td><c:out value="${leportsItem.infocenterleports}"/></td>
                    <td><c:out value="${leportsItem.scaleleports}"/></td>
                    <td><c:out value="${leportsItem.accomcountleports}"/></td>
                    <td><c:out value="${leportsItem.restdatleports}"/></td>
                    <td><c:out value="${leportsItem.usetimeleports}"/></td>
                    <td><c:out value="${leportsItem.usefeeleports}"/></td>
                    <td><c:out value="${leportsItem.expagerangleports}"/></td>
                    <td><c:out value="${leportsItem.parkingleports}"/></td>
                    <td><c:out value="${leportsItem.parkingfeeleports}"/></td>
                    <td><c:out value="${leportsItem.chkbabycarriageleports}"/></td>
                    <td><c:out value="${leportsItem.chkpetleports}"/></td>
                    <td><c:out value="${leportsItem.chkcreditcardleports}"/></td>
                    <td><img src="<c:out value="${leportsItem.image0}"/>" height="200px" alt="이미지 설명"/></td>
                    <td><img src="<c:out value="${leportsItem.image1}"/>" height="200px" alt="이미지 설명"/></td>
                    <td><img src="<c:out value="${leportsItem.image2}"/>" height="200px" alt="이미지 설명"/></td>
                    <td><img src="<c:out value="${leportsItem.image3}"/>" height="200px" alt="이미지 설명"/></td>
                    <td><img src="<c:out value="${leportsItem.image4}"/>" height="200px" alt="이미지 설명"/></td>
                    <td><img src="<c:out value="${leportsItem.image5}"/>" height="200px" alt="이미지 설명"/></td>
                    <td><img src="<c:out value="${leportsItem.image6}"/>" height="200px" alt="이미지 설명"/></td>
                    <td><img src="<c:out value="${leportsItem.image7}"/>" height="200px" alt="이미지 설명"/></td>
                    <td><img src="<c:out value="${leportsItem.image8}"/>" height="200px" alt="이미지 설명"/></td>
                    <td><img src="<c:out value="${leportsItem.image9}"/>" height="200px" alt="이미지 설명"/></td>
                    <td><img src="<c:out value="${leportsItem.image10}"/>" height="200px" alt="이미지 설명"/></td>
                    <td><img src="<c:out value="${leportsItem.image11}"/>" height="200px" alt="이미지 설명"/></td>
                    <td><img src="<c:out value="${leportsItem.image12}"/>" height="200px" alt="이미지 설명"/></td>
                    <td><img src="<c:out value="${leportsItem.image13}"/>" height="200px" alt="이미지 설명"/></td>
                    <td><img src="<c:out value="${leportsItem.image14}"/>" height="200px" alt="이미지 설명"/></td>
                    <td><img src="<c:out value="${leportsItem.image15}"/>" height="200px" alt="이미지 설명"/></td>
                    <td><img src="<c:out value="${leportsItem.image16}"/>" height="200px" alt="이미지 설명"/></td>
                    <td><img src="<c:out value="${leportsItem.image17}"/>" height="200px" alt="이미지 설명"/></td>
                    <td><img src="<c:out value="${leportsItem.image18}"/>" height="200px" alt="이미지 설명"/></td>
                    <td><img src="<c:out value="${leportsItem.image19}"/>" height="200px" alt="이미지 설명"/></td>
                    <td><img src="<c:out value="${leportsItem.image20}"/>" height="200px" alt="이미지 설명"/></td>
                    <td><c:out value="${leportsItem.imgCount}"/></td>
                    <td class="table-cell"><c:out value="${leportsItem.overview}"/></td>
                    <td><c:out value="${leportsItem.homepage}"/></td>
                </tr>
            </c:forEach>
        </c:if>
    </tbody>
</table>

      </body>
  </html>