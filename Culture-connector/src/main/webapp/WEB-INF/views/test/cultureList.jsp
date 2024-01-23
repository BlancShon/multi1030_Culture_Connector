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
	<h3><a href="${path}/mvc">홈</a></h3>
         <h3><a href="${path}/mvc/dbsave">데이터베이스 저장</a></h3>

    <h2>문화시설 목록</h2>

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
                <th>SCALE</th>
                <th>USEFEE</th>
                <th>DISCOUNTINFO</th>
                <th>SPENDTIME</th>
                <th>PARKINGFEE</th>
                <th>INFOCENTERCULTURE</th>
                <th>ACCOMCOUNTCULTURE</th>
                <th>USETIMECULTURE</th>
                <th>RESTDATECULTURE</th>
                <th>PARKINGCULTURE</th>
                <th>CHKBABYCARRIAGECULTURE</th>
                <th>CHKPETCULTURE</th>
                <th>CHKCREDITCARDCULTURE</th>
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
            </tr>
        </thead>
        <tbody>
           <c:if test="${not empty list}">
	            <c:forEach var="culture" items="${list}">
	                <tr>
	                    <td><c:out value="${culture.contentid}"/></td>
				        <td><c:out value="${culture.contenttypeid}"/></td>
				        <td><c:out value="${culture.addr1}"/></td>
				        <td><c:out value="${culture.addr2}"/></td>
				        <td><c:out value="${culture.areacode}"/></td>
				        <td><c:out value="${culture.booktour}"/></td>
				        <td><c:out value="${culture.cat1}"/></td>
				        <td><c:out value="${culture.cat2}"/></td>
				        <td><c:out value="${culture.cat3}"/></td>
				        <td><c:out value="${culture.createdtime}"/></td>
				        <td><c:out value="${culture.firstimage}"/></td>
				        <td><c:out value="${culture.firstimage2}"/></td>
				        <td><c:out value="${culture.cpyrhtDivCd}"/></td>
				        <td><c:out value="${culture.mapx}"/></td>
				        <td><c:out value="${culture.mapy}"/></td>
				        <td><c:out value="${culture.mlevel}"/></td>
				        <td><c:out value="${culture.modifiedtime}"/></td>
				        <td><c:out value="${culture.sigungucode}"/></td>
				        <td><c:out value="${culture.tel}"/></td>
				        <td><c:out value="${culture.title}"/></td>
				        <td><c:out value="${culture.zipcode}"/></td>
				        <td><c:out value="${culture.overview}"/></td>
				        <td><c:out value="${culture.scale}"/></td>
				        <td><c:out value="${culture.usefee}"/></td>
				        <td><c:out value="${culture.discountinfo}"/></td>
				        <td><c:out value="${culture.spendtime}"/></td>
				        <td><c:out value="${culture.parkingfee}"/></td>
				        <td><c:out value="${culture.infocenterculture}"/></td>
				        <td><c:out value="${culture.accomcountculture}"/></td>
				        <td><c:out value="${culture.usetimeculture}"/></td>
				        <td><c:out value="${culture.restdateculture}"/></td>
				        <td><c:out value="${culture.parkingculture}"/></td>
				        <td><c:out value="${culture.chkbabycarriageculture}"/></td>
				        <td><c:out value="${culture.chkpetculture}"/></td>
				        <td><c:out value="${culture.chkcreditcardculture}"/></td>
	                    <<td><img src="<c:out value="${culture.image0}"/>" height="200px" alt="이미지 설명"/></td>
				        <td><img src="<c:out value="${culture.image1}"/>" height="200px" alt="이미지 설명"/></td>
				        <td><img src="<c:out value="${culture.image2}"/>" height="200px" alt="이미지 설명"/></td>
				        <td><img src="<c:out value="${culture.image3}"/>" height="200px" alt="이미지 설명"/></td>
				        <td><img src="<c:out value="${culture.image4}"/>" height="200px" alt="이미지 설명"/></td>
				        <td><img src="<c:out value="${culture.image5}"/>" height="200px" alt="이미지 설명"/></td>
				        <td><img src="<c:out value="${culture.image6}"/>" height="200px" alt="이미지 설명"/></td>
				        <td><img src="<c:out value="${culture.image7}"/>" height="200px" alt="이미지 설명"/></td>
				        <td><img src="<c:out value="${culture.image8}"/>" height="200px" alt="이미지 설명"/></td>
				        <td><img src="<c:out value="${culture.image9}"/>" height="200px" alt="이미지 설명"/></td>
				        <td><img src="<c:out value="${culture.image10}"/>" height="200px" alt="이미지 설명"/></td>
				        <td><img src="<c:out value="${culture.image11}"/>" height="200px" alt="이미지 설명"/></td>
				        <td><img src="<c:out value="${culture.image12}"/>" height="200px" alt="이미지 설명"/></td>
				        <td><img src="<c:out value="${culture.image13}"/>" height="200px" alt="이미지 설명"/></td>
				        <td><img src="<c:out value="${culture.image14}"/>" height="200px" alt="이미지 설명"/></td>
				        <td><img src="<c:out value="${culture.image15}"/>" height="200px" alt="이미지 설명"/></td>
				        <td><img src="<c:out value="${culture.image16}"/>" height="200px" alt="이미지 설명"/></td>
				        <td><img src="<c:out value="${culture.image17}"/>" height="200px" alt="이미지 설명"/></td>
				        <td><img src="<c:out value="${culture.image18}"/>" height="200px" alt="이미지 설명"/></td>
				        <td><img src="<c:out value="${culture.image19}"/>" height="200px" alt="이미지 설명"/></td>
				        <td><img src="<c:out value="${culture.image20}"/>" height="200px" alt="이미지 설명"/></td>
				        <td><c:out value="${culture.imgCount}"/></td>
	                </tr>
	            </c:forEach>
				</c:if>
    </table>
      </body>
  </html>