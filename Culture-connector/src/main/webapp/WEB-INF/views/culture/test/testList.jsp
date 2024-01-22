<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title> 문화 소식 </title>
  </head>

  <body>
  	<a href="${path}/"><h1>홈으로</h1></a>
 	 <h2>통합검색</h2>
    <table border="1">
            <tr>
                <th>제목</th>
                <th>이미지</th>
                <th>행사 시작일</th>
                <th>행사 종료일</th>
                <th>주소</th>
                <th>최종수정일</th>
            </tr>
        
        <c:if test="${empty testList}">
        	<tr>
        		<td colspan="2">조회된 글이 없습니다.</td>
        	</tr>
        </c:if>
        
      <form action="${path}/festival/searchTestList" method="get">
      
      	<label for="progress">현재 진행중인가</label>
      	<select id="progress" name="progress">
      		<option value="everything">전부</option>
      		<option value="ongoing">진행중</option>
      		<option value="planed">예정</option>
      		<option value="over">끝남</option>
      	</select>
      	<br>
      
        <label for="upToDate">정렬 순서:</label>
        <select id="upToDate" name="upToDate">
            <option value="asc">최신순</option>
            <option value="desc">오래된순</option>
        </select>
        <br>
      
        
        
	    <input type="text" name="keyword" placeholder="아직 키워드 작동 안함"> <%-- value="${searchForm.keyword}"" --%>
	   
	    <br>
        
        
      	<label for="regions">지역 선택:</label><br>
     	 	<div style="display: inline-block; white-space: rap;">
	        
	        <input type="checkbox" id="seoul" name="regions" value="서울">
	        <label for="seoul">서울</label>
	        
	        <input type="checkbox" id="incheon" name="regions" value="인천">
	        <label for="incheon">인천</label>
	        
	        <input type="checkbox" id="daejeon" name="regions" value="대전">
	        <label for="daejeon">대전</label>
	        
	        <input type="checkbox" id="daegu" name="regions" value="대구">
	        <label for="daegu">대구</label>
	        
	        <input type="checkbox" id="gwangju" name="regions" value="광주">
	        <label for="gwangju">광주</label>
	        
	        <input type="checkbox" id="busan" name="regions" value="부산">
	        <label for="busan">부산</label>
	        
	        <input type="checkbox" id="ulsan" name="regions" value="울산">
	        <label for="ulsan">울산</label>
	        
	        <input type="checkbox" id="sejong" name="regions" value="세종특별자치시">
	        <label for="sejong">세종특별자치시</label>
	        
	        <input type="checkbox" id="gyeonggi" name="regions" value="경기도">
	        <label for="gyeonggi">경기도</label>
	        
	        <input type="checkbox" id="gangwon" name="regions" value="강원특별자치도">
	        <label for="gangwon">강원특별자치도</label>
	        
	        <input type="checkbox" id="chungbuk" name="regions" value="충청북도">
	        <label for="chungbuk">충청북도</label>
	        
	        <input type="checkbox" id="chungnam" name="regions" value="충청남도">
	        <label for="chungnam">충청남도</label>
	        
	        <input type="checkbox" id="gyeongbuk" name="regions" value="경상북도">
	        <label for="gyeongbuk">경상북도</label>
	        
	        <input type="checkbox" id="gyeongnam" name="regions" value="경상남도">
	        <label for="gyeongnam">경상남도</label>
	        
	        <input type="checkbox" id="jeonbuk" name="regions" value="전북특별자치도">
	        <label for="jeonbuk">전북특별자치도</label>
	        
	        <input type="checkbox" id="jeonnam" name="regions" value="전라남도">
	        <label for="jeonnam">전라남도</label>
	        
	        <input type="checkbox" id="jeju" name="regions" value="제주도">
	        <label for="jeju">제주도</label>
	        
       	</div>
       	<br>
       	
       	<label for="foodTypes">음식종류 선택 (현재 페스트벌 검색이라 작동안함)</label><br>
     	 	<div style="display: inline-block; white-space: rap;">
		       	 <label>
		            <input type="checkbox" name="foodTypes" value="한식"> 한식
		        </label>
		        <label>
		            <input type="checkbox" name="foodTypes" value="양식"> 양식
		        </label>
		        <label>
		            <input type="checkbox" name="foodTypes" value="일식"> 일식
		        </label>
		        <label>
		            <input type="checkbox" name="foodTypes" value="중식"> 중식
		        </label>
		        <label>
		            <input type="checkbox" name="foodTypes" value="카페"> 카페
		        </label>
	       	</div>
        <br>
        	<h4>카테고리별 검색도 만들까 생각중</h4>
        <br>
        <input type="submit" value="검색">
    </form>
        
        <c:if test="${not empty testList}">
         	<c:forEach var="item" items="${testList}">
			    <tr>
			        <td><c:out value="${item.title}"/></td>
		          	<td>
		                <img src="<c:out value="${item.firstimage}"/>"  height="200px" alt="이미지 설명"/>
		            </td>	
			        <td><c:out value="${item.eventstartdate}"/></td>
			        <td><c:out value="${item.eventenddate}"/></td>
			        <td><c:out value="${item.addr1}"/></td>
			        <td><c:out value="${item.modifiedtime}"/></td>
		           
			    </tr>
			</c:forEach>
		</c:if>
    </table>
    
   
<!-- Header START -->
  </body>
  </html>
  "