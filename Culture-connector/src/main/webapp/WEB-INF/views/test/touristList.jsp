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
    <title>문화시설 목록</title>
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
    </style>
</head>
<body>
	<h3><a href="${path}/">홈</a></h3>
         <h3><a href="${path}/dbsave">데이터베이스 저장</a></h3>

    <h2>관광지 목록</h2>

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
            <th>ACCOMCOUNT</th>
            <th>CHKBABYCARRIAGE</th>
            <th>CHKCREDITCARD</th>
            <th>CHKPET</th>
            <th>EXPAGERANGE</th>
            <th>EXPGUIDE</th>
            <th>HERITAGE1</th>
            <th>HERITAGE2</th>
            <th>HERITAGE3</th>
            <th>INFOCENTER</th>
            <th>OPENDATE</th>
            <th>PARKING</th>
            <th>RESTDATE</th>
            <th>USESEASON</th>
            <th>USETIME</th>
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
                    <td><c:out value="${item.accomcount}"/></td>
                    <td><c:out value="${item.chkbabycarriage}"/></td>
                    <td><c:out value="${item.chkcreditcard}"/></td>
                    <td><c:out value="${item.chkpet}"/></td>
                    <td><c:out value="${item.expagerange}"/></td>
                    <td><c:out value="${item.expguide}"/></td>
                    <td><c:out value="${item.heritage1}"/></td>
                    <td><c:out value="${item.heritage2}"/></td>
                    <td><c:out value="${item.heritage3}"/></td>
                    <td><c:out value="${item.infocenter}"/></td>
                    <td><c:out value="${item.opendate}"/></td>
                    <td><c:out value="${item.parking}"/></td>
                    <td><c:out value="${item.restdate}"/></td>
                    <td><c:out value="${item.useseason}"/></td>
                    <td><c:out value="${item.usetime}"/></td>
                    <td><img src="<c:out value="${item.image0}"/>" height="200px" alt="이미지 설명"/></td>
			        <td><img src="<c:out value="${item.image1}"/>" height="200px" alt="이미지 설명"/></td>
			        <td><img src="<c:out value="${item.image2}"/>" height="200px" alt="이미지 설명"/></td>
			        <td><img src="<c:out value="${item.image3}"/>" height="200px" alt="이미지 설명"/></td>
			        <td><img src="<c:out value="${item.image4}"/>" height="200px" alt="이미지 설명"/></td>
			        <td><img src="<c:out value="${item.image5}"/>" height="200px" alt="이미지 설명"/></td>
			        <td><img src="<c:out value="${item.image6}"/>" height="200px" alt="이미지 설명"/></td>
			        <td><img src="<c:out value="${item.image7}"/>" height="200px" alt="이미지 설명"/></td>
			        <td><img src="<c:out value="${item.image8}"/>" height="200px" alt="이미지 설명"/></td>
			        <td><img src="<c:out value="${item.image9}"/>" height="200px" alt="이미지 설명"/></td>
			        <td><img src="<c:out value="${item.image10}"/>" height="200px" alt="이미지 설명"/></td>
			        <td><img src="<c:out value="${item.image11}"/>" height="200px" alt="이미지 설명"/></td>
			        <td><img src="<c:out value="${item.image12}"/>" height="200px" alt="이미지 설명"/></td>
			        <td><img src="<c:out value="${item.image13}"/>" height="200px" alt="이미지 설명"/></td>
			        <td><img src="<c:out value="${item.image14}"/>" height="200px" alt="이미지 설명"/></td>
			        <td><img src="<c:out value="${item.image15}"/>" height="200px" alt="이미지 설명"/></td>
			        <td><img src="<c:out value="${item.image16}"/>" height="200px" alt="이미지 설명"/></td>
			        <td><img src="<c:out value="${item.image17}"/>" height="200px" alt="이미지 설명"/></td>
			        <td><img src="<c:out value="${item.image18}"/>" height="200px" alt="이미지 설명"/></td>
			        <td><img src="<c:out value="${item.image19}"/>" height="200px" alt="이미지 설명"/></td>
			        <td><img src="<c:out value="${item.image20}"/>" height="200px" alt="이미지 설명"/></td>
                    <td><c:out value="${item.imgCount}"/></td>
                    <td><c:out value="${item.overview}"/></td>
                    <td><c:out value="${item.homepage}"/></td>
                </tr>
            </c:forEach>
        </c:if>
    </tbody>
</table>
                    

      </body>
  </html>