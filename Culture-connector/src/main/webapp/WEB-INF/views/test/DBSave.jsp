<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>카드 형태의 폼</title>
    <style>
        .card {
            border: 1px solid #ccc;
            padding: 20px;
            margin: 20px;
            border-radius: 5px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 300px;
        }
        button {
            margin: 5px;
        }
    </style>
</head>
<body>
		<h3><a href="${path}/mvc">홈</a></h3>

	<div>
	    <div class="card">
	        <h2>문화시설</h2>
	
	        <!-- 테이블 생성 버튼 -->
	        <button onclick="window.location='${path}/mvc/culture/createTable'">테이블 생성</button>
	
	        <!-- 데이터 입력 폼 -->
	        <form action="${path}/mvc/culture/dataSave" method="post">
	            <label for="data">이름을 입력하세요:</label>
	           	<input type="text" id="name" name="name" required>
	            <br>
	            <input type="submit" value="데이터 받기">
	        </form>
	
	        <!-- 테이블 조회 버튼 -->
	        <button onclick="window.location='${path}/mvc/culture/listForDB'">테이블 보기</button>
	    </div>
	
	
	    <div class="card">
	        <h2>공연 행사</h2>
	
	        <!-- 테이블 생성 버튼 -->
	        <button onclick="window.location='${path}/mvc/event/createTable'">테이블 생성</button>
	
	        <!-- 데이터 입력 폼 -->
	        <form action="${path}/mvc/event/dataSave" method="post">
	            <label for="data">이름을 입력하세요:</label>
	           	<input type="text" id="name" name="name" required>
	            <br>
	            <input type="submit" value="데이터 받기">
	        </form>
	
	        <!-- 테이블 조회 버튼 -->
	        <button onclick="window.location='${path}/mvc/event/listForDB'">테이블 보기</button>
	    </div>
	    
	    
	    
	    <div class="card">
	        <h2>관광지</h2>
	
	        <!-- 테이블 생성 버튼 -->
	        <button onclick="window.location='${path}/mvc/touristAttraction/createTable'">테이블 생성</button>
	
	        <!-- 데이터 입력 폼 -->
	        <form action="${path}/mvc/touristAttraction/dataSave" method="post">
	            <label for="data">이름을 입력하세요:</label>
	           	<input type="text" id="name" name="name" required>
	            <br>
	            <input type="submit" value="데이터 받기">
	        </form>
	
	        <!-- 테이블 조회 버튼 -->
	        <button onclick="window.location='${path}/mvc/touristAttraction/listForDB'">테이블 보기</button>
	    </div>
	    
	    
	    <div class="card">
	        <h2>레포츠</h2>
	
	        <!-- 테이블 생성 버튼 -->
	        <button onclick="window.location='${path}/mvc/leports/createTable'">테이블 생성</button>
	
	        <!-- 데이터 입력 폼 -->
	        <form action="${path}/mvc/leports/dataSave" method="post">
	            <label for="data">이름을 입력하세요:</label>
	           	<input type="text" id="name" name="name" required>
	            <br>
	            <input type="submit" value="데이터 받기">
	        </form>
	
	        <!-- 테이블 조회 버튼 -->
	        <button onclick="window.location='${path}/mvc/leports/listForDB'">테이블 보기</button>
	    </div>
	    
	    
	    <div class="card">
	        <h2>코스</h2>
	
	        <!-- 테이블 생성 버튼 -->
	        <button onclick="window.location='${path}/mvc/course/createTable'">테이블 생성</button>
	
	        <!-- 데이터 입력 폼 -->
	        <form action="${path}/mvc/course/dataSave" method="post">
	            <label for="data">이름을 입력하세요:</label>
	           	<input type="text" id="name" name="name" required>
	            <br>
	            <input type="submit" value="데이터 받기">
	        </form>
	
	        <!-- 테이블 조회 버튼 -->
	        <button onclick="window.location='${path}/mvc/course/listForDB'">테이블 보기</button>
	    </div>
	    
	    <div class="card">
	        <h2>페스티발</h2>
	
	        <!-- 테이블 생성 버튼 -->
	        <button onclick="window.location='${path}/mvc/festival/createTable'">테이블 생성</button>
	
	        <!-- 데이터 입력 폼 -->
	        <form action="${path}/mvc/festival/dataSave" method="post">
	            <label for="data">이름을 입력하세요:</label>
	           	<input type="text" id="name" name="name" required>
	            <br>
	            <input type="submit" value="데이터 받기">
	        </form>
	
	        <!-- 테이블 조회 버튼 -->
	        <button onclick="window.location='${path}/mvc/festival/listForDB'">테이블 보기</button>
	    </div>
	</div>
</body>
</html>
