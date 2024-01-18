DROP SCHEMA SPRING; 
CREATE SCHEMA SPRING;
USE SPRING;


----------------------------------- DDL 시작-------------------------------------------

------------------------------------------------
--------------- MEMBER 관련 테이블 ----------------
------------------------------------------------

CREATE TABLE MEMBER (
    mNO 	 INT  PRIMARY KEY AUTO_INCREMENT,
    ID 		 VARCHAR(30) NOT NULL UNIQUE,
    PASSWORD VARCHAR(100) NOT NULL, 
    ROLE 	 VARCHAR(10) DEFAULT 'ROLE_USER',
    NAME 	 VARCHAR(15) NOT NULL,
    PHONE 	 VARCHAR(13),
    EMAIL 	 VARCHAR(100),
    ADDRESS  VARCHAR(100),
    HOBBY 	 VARCHAR(100),
    STATUS 	 VARCHAR(1) DEFAULT 'Y' CHECK(STATUS IN('Y', 'N')),
    ENROLL_DATE DATETIME DEFAULT CURRENT_TIMESTAMP,
    MODIFY_DATE DATETIME DEFAULT CURRENT_TIMESTAMP
);


INSERT INTO MEMBER (
    mNO, ID, PASSWORD,  ROLE, NAME, 
    PHONE, EMAIL, ADDRESS, HOBBY, STATUS, 
    ENROLL_DATE, MODIFY_DATE
) VALUES(
    0, 'admin', '1234', 'ROLE_ADMIN', '관리자', 
    '010-1234-4341', 'admin@test.com', '서울시 강남구 역삼동', DEFAULT, DEFAULT,
    DEFAULT, DEFAULT
);


INSERT INTO MEMBER (
    mNO, ID, PASSWORD,  ROLE, NAME, 
    PHONE, EMAIL, ADDRESS, HOBBY, STATUS, 
    ENROLL_DATE, MODIFY_DATE
) VALUES(
    0, 'test5', '1234', DEFAULT, '예비개발자', 
    '010-4321-1234', 'test@test.com', '서울시 강남구 역삼동', DEFAULT, DEFAULT,
    DEFAULT, DEFAULT
);


INSERT INTO MEMBER (
    mNO, ID, PASSWORD,  ROLE, NAME, 
    PHONE, EMAIL, ADDRESS, HOBBY, STATUS, 
    ENROLL_DATE, MODIFY_DATE
) VALUES(
    0, 'test6', '1234', DEFAULT, '지나가는유저', 
    '010-1111-2222', 'test2@test.com', '서울시 강남구 삼성동', DEFAULT, DEFAULT,
    DEFAULT, DEFAULT
);

COMMIT;

SELECT * FROM MEMBER;

---------------------------------------------------
--------------- Board 카테고리 테이블 ------------------
---------------------------------------------------

CREATE TABLE BOARD_CATEGORY (	
    TYPE VARCHAR(20),
    NAME VARCHAR(100),
    LEVEL INT,
    ORDERNO INT,
    CONSTRAINT PK_BOARD_CATEGORY PRIMARY KEY(TYPE)
);

-- 일반적으로 CODE는 약어를 사용하나 가독성을 위해 길게 표현함 NOTICE -> N,  CMM1 -> C1 
-- NOTICE, PLAIN, CMM1, CMM2, CMM3, QUESTION, TIP, BUY, SELL
-- 우리가 필요한 형식으로 인서트 필요---------------------------------------------------------------------------------------------------------수정 필요!!★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★

INSERT INTO BOARD_CATEGORY (TYPE, NAME, LEVEL, ORDERNO) VALUES('NOTICE', '공지', 0, 1);
INSERT INTO BOARD_CATEGORY (TYPE, NAME, LEVEL, ORDERNO) VALUES('PLAIN', '일반글', 3, 2);
INSERT INTO BOARD_CATEGORY (TYPE, NAME, LEVEL, ORDERNO) VALUES('QUESTION', '질문', 3, 3);
INSERT INTO BOARD_CATEGORY (TYPE, NAME, LEVEL, ORDERNO) VALUES('TIP', 'TIP', 3, 4);
INSERT INTO BOARD_CATEGORY (TYPE, NAME, LEVEL, ORDERNO) VALUES('BUY', '삽니다', 3, 5);
INSERT INTO BOARD_CATEGORY (TYPE, NAME, LEVEL, ORDERNO) VALUES('SELL', '팝니다', 3, 6);
INSERT INTO BOARD_CATEGORY (TYPE, NAME, LEVEL, ORDERNO) VALUES('CMM1', '커뮤니티A', 3, 7);
INSERT INTO BOARD_CATEGORY (TYPE, NAME, LEVEL, ORDERNO) VALUES('CMM2', '커뮤니티B', 3, 8);
INSERT INTO BOARD_CATEGORY (TYPE, NAME, LEVEL, ORDERNO) VALUES('CMM3', '커뮤니티C', 3, 9);
INSERT INTO BOARD_CATEGORY (TYPE, NAME, LEVEL, ORDERNO) VALUES('NBOARD', '공지사항', 3, 10);


COMMIT;
SELECT * FROM BOARD_CATEGORY ORDER BY ORDERNO;


-------------------------------------------------
--------------- Board 관련 테이블 ------------------
-------------------------------------------------


CREATE TABLE BOARD (	
    bNO INT AUTO_INCREMENT,
    mNO INT, 
    TYPE VARCHAR(20) DEFAULT 'PLAIN', 
	TITLE VARCHAR(1000), 
	CONTENT VARCHAR(2000), 
    ATTACHCOUNT INT DEFAULT 0, 
	READCOUNT INT DEFAULT 0, 
    STATUS VARCHAR(1) DEFAULT 'Y' CHECK (STATUS IN('Y', 'N')),
    CREATE_DATE DATETIME  DEFAULT CURRENT_TIMESTAMP, 
    MODIFY_DATE DATETIME  DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT PK_BOARD_NO PRIMARY KEY(bNO),
    CONSTRAINT FK_BOARD_WRITER FOREIGN KEY(mNO) REFERENCES MEMBER(mNO) ON DELETE SET NULL,
    CONSTRAINT FK_BOARD_CATEGORY FOREIGN KEY(TYPE) REFERENCES BOARD_CATEGORY(TYPE) ON DELETE SET NULL
);

-- 우리가 필요한 형식으로 인서트 필요---------------------------------------------------------------------------------------------------------수정 필요!!★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
INSERT INTO BOARD (bNO, mNO, TYPE, TITLE, CONTENT) VALUES(0,1,'NOTICE','[공지] 클린한 게시판 환경을 만들어주세요.','깨끗한 게시판 환경 유지에 협조 바랍니다.');
INSERT INTO BOARD (bNO, mNO, TYPE, TITLE, CONTENT) VALUES(0,2,'PLAIN','안녕하세요? 처음 가입한 개발자입니다.','잘 부탁드립니다.');
INSERT INTO BOARD (bNO, mNO, TYPE, TITLE, CONTENT) VALUES(0,2,'QUESTION','[질문] 질문 있습니다.','자바 어렵나요?');
INSERT INTO BOARD (bNO, mNO, TYPE, TITLE, CONTENT) VALUES(0,2,'PLAIN','오늘 식사메뉴 추천드립니다.','돈까스 드세요.');
INSERT INTO BOARD (bNO, mNO, TYPE, TITLE, CONTENT) VALUES(0,2,'PLAIN','내일 식사메뉴 추천드립니다.','냉면 어떠신가요?');
INSERT INTO BOARD (bNO, mNO, TYPE, TITLE, CONTENT) VALUES(0,2,'PLAIN','모레 식사메뉴 추천드립니다.','스파게티 좋네요.');
INSERT INTO BOARD (bNO, mNO, TYPE, TITLE, CONTENT) VALUES(0,2,'PLAIN','다음주 식사메뉴 추천드립니다.','아무거나 드세요');
INSERT INTO BOARD (bNO, mNO, TYPE, TITLE, CONTENT) VALUES(0,1,'NBOARD','공지사항 게시글 입니다.1','공지 내용입니다.1');
INSERT INTO BOARD (bNO, mNO, TYPE, TITLE, CONTENT) VALUES(0,1,'NBOARD','공지사항 게시글 입니다.2','공지 내용입니다.2');
INSERT INTO BOARD (bNO, mNO, TYPE, TITLE, CONTENT) VALUES(0,1,'NBOARD','공지사항 게시글 입니다.3','공지 내용입니다.3');
INSERT INTO BOARD (bNO, mNO, TYPE, TITLE, CONTENT) VALUES(0,1,'NBOARD','공지사항 게시글 입니다.4','공지 내용입니다.4');
INSERT INTO BOARD (bNO, mNO, TYPE, TITLE, CONTENT) VALUES(0,1,'NBOARD','공지사항 게시글 입니다.5','공지 내용입니다.5');
INSERT INTO BOARD (bNO, mNO, TYPE, TITLE, CONTENT) VALUES(0,1,'NBOARD','공지사항 게시글 입니다.6','공지 내용입니다.6');
INSERT INTO BOARD (bNO, mNO, TYPE, TITLE, CONTENT) VALUES(0,1,'NBOARD','공지사항 게시글 입니다.7','공지 내용입니다.7');
INSERT INTO BOARD (bNO, mNO, TYPE, TITLE, CONTENT) VALUES(0,1,'NBOARD','공지사항 게시글 입니다.8','공지 내용입니다.8');
INSERT INTO BOARD (bNO, mNO, TYPE, TITLE, CONTENT) VALUES(0,1,'NBOARD','공지사항 게시글 입니다.9','공지 내용입니다.9');
INSERT INTO BOARD (bNO, mNO, TYPE, TITLE, CONTENT) VALUES(0,1,'NBOARD','공지사항 게시글 입니다.10','공지 내용입니다.10');
INSERT INTO BOARD (bNO, mNO, TYPE, TITLE, CONTENT) VALUES(0,1,'NBOARD','공지사항 게시글 입니다.11','공지 내용입니다.11');
INSERT INTO BOARD (bNO, mNO, TYPE, TITLE, CONTENT) VALUES(0,1,'NBOARD','공지사항 게시글 입니다.12','공지 내용입니다.12');
INSERT INTO BOARD (bNO, mNO, TYPE, TITLE, CONTENT) VALUES(0,1,'NBOARD','공지사항 게시글 입니다.13','공지 내용입니다.13');
INSERT INTO BOARD (bNO, mNO, TYPE, TITLE, CONTENT) VALUES(0,1,'NBOARD','공지사항 게시글 입니다.14','공지 내용입니다.14');
INSERT INTO BOARD (bNO, mNO, TYPE, TITLE, CONTENT) VALUES(0,1,'NBOARD','공지사항 게시글 입니다.15','공지 내용입니다.15');
INSERT INTO BOARD (bNO, mNO, TYPE, TITLE, CONTENT) VALUES(0,2,'CMM1','커뮤니티 A글입니다. 1','커뮤니티 A활동 글입니다. 1');
INSERT INTO BOARD (bNO, mNO, TYPE, TITLE, CONTENT) VALUES(0,2,'CMM1','커뮤니티 A글입니다. 2','커뮤니티 A활동 글입니다. 2');
INSERT INTO BOARD (bNO, mNO, TYPE, TITLE, CONTENT) VALUES(0,2,'CMM1','커뮤니티 A글입니다. 3','커뮤니티 A활동 글입니다. 3');
INSERT INTO BOARD (bNO, mNO, TYPE, TITLE, CONTENT) VALUES(0,2,'CMM1','커뮤니티 A글입니다. 4','커뮤니티 A활동 글입니다. 4');
INSERT INTO BOARD (bNO, mNO, TYPE, TITLE, CONTENT) VALUES(0,3,'CMM1','커뮤니티 A글입니다. 5','커뮤니티 A활동 글입니다. 5');
INSERT INTO BOARD (bNO, mNO, TYPE, TITLE, CONTENT) VALUES(0,3,'CMM2','커뮤니티 B글입니다. 1','커뮤니티 B활동 글입니다. 1');
INSERT INTO BOARD (bNO, mNO, TYPE, TITLE, CONTENT) VALUES(0,3,'CMM2','커뮤니티 B글입니다. 2','커뮤니티 B활동 글입니다. 2');
INSERT INTO BOARD (bNO, mNO, TYPE, TITLE, CONTENT) VALUES(0,3,'CMM2','커뮤니티 B글입니다. 3','커뮤니티 B활동 글입니다. 3');
INSERT INTO BOARD (bNO, mNO, TYPE, TITLE, CONTENT) VALUES(0,3,'CMM2','커뮤니티 B글입니다. 4','커뮤니티 B활동 글입니다. 4');
INSERT INTO BOARD (bNO, mNO, TYPE, TITLE, CONTENT) VALUES(0,3,'CMM2','커뮤니티 B글입니다. 5','커뮤니티 B활동 글입니다. 5');
INSERT INTO BOARD (bNO, mNO, TYPE, TITLE, CONTENT) VALUES(0,2,'CMM3','커뮤니티 C글입니다. 1','커뮤니티 C활동 글입니다. 1');
INSERT INTO BOARD (bNO, mNO, TYPE, TITLE, CONTENT) VALUES(0,2,'CMM3','커뮤니티 C글입니다. 2','커뮤니티 C활동 글입니다. 2');
INSERT INTO BOARD (bNO, mNO, TYPE, TITLE, CONTENT) VALUES(0,2,'CMM3','커뮤니티 C글입니다. 3','커뮤니티 C활동 글입니다. 3');
INSERT INTO BOARD (bNO, mNO, TYPE, TITLE, CONTENT) VALUES(0,2,'CMM3','커뮤니티 C글입니다. 4','커뮤니티 C활동 글입니다. 4');
INSERT INTO BOARD (bNO, mNO, TYPE, TITLE, CONTENT) VALUES(0,2,'CMM3','커뮤니티 C글입니다. 5','커뮤니티 C활동 글입니다. 5');
INSERT INTO BOARD (bNO, mNO, TYPE, TITLE, CONTENT) VALUES(0,3,'TIP','[팁] 팁글입니다.','java는 쉽습니다. 객체만 아세요.');
INSERT INTO BOARD (bNO, mNO, TYPE, TITLE, CONTENT) VALUES(0,3,'TIP','[팁] 팁글입니다.','c언어는 어렵습니다. ');
INSERT INTO BOARD (bNO, mNO, TYPE, TITLE, CONTENT) VALUES(0,3,'TIP','[팁] 팁글입니다.','프로그래밍은 생각보다 쉽습니다.');
INSERT INTO BOARD (bNO, mNO, TYPE, TITLE, CONTENT) VALUES(0,2,'TIP','[팁] 팁글입니다.','개발일은 어렵습니다. 코딩만 안합니다.');
INSERT INTO BOARD (bNO, mNO, TYPE, TITLE, CONTENT) VALUES(0,2,'TIP','[팁] 팁글입니다.','문서작업은 귀찮습니다. 이게 개발일의 실체입니다.');
INSERT INTO BOARD (bNO, mNO, TYPE, TITLE, CONTENT) VALUES(0,2,'SELL','[판매] 삼성 노트북 팔아요.','삼성 노트북 팝니다. 터치 됩니다.');
INSERT INTO BOARD (bNO, mNO, TYPE, TITLE, CONTENT) VALUES(0,3,'SELL','[판매] 아이폰 팔아요.','아이폰15 팝니다.');
INSERT INTO BOARD (bNO, mNO, TYPE, TITLE, CONTENT) VALUES(0,2,'SELL','[판매] 애플 맥북 노트북 팝니다.','M2 모델입니다. 맥북 게임용으로 잘써요');
INSERT INTO BOARD (bNO, mNO, TYPE, TITLE, CONTENT) VALUES(0,3,'BUY','[구매] 애플 노트북 삽니다.','맥북 게임용으로 삽니다. 이거 게임 잘돌아가나요?');
INSERT INTO BOARD (bNO, mNO, TYPE, TITLE, CONTENT) VALUES(0,2,'BUY','[구매] 삼성 노트북 삽니다','게임용으로 삽니다. ');
INSERT INTO BOARD (bNO, mNO, TYPE, TITLE, CONTENT) VALUES(0,2,'BUY','[구매] 애플 아이폰 삽니다','아이폰14사요. 30만원에 네고합니다. ');
INSERT INTO BOARD (bNO, mNO, TYPE, TITLE, CONTENT) VALUES(0,3,'BUY','[구매] 삼성 갤럭시 삽니다.','갤럭시 삽니다. 아무 기종이나 상관없어요.');
INSERT INTO BOARD (bNO, mNO, TYPE, TITLE, CONTENT) VALUES(0,2,'SELL','[판매] 애플 노트북 팔아요.','노트북 맥북 최신입니다. 게임하시면 안됩니다');
INSERT INTO BOARD (bNO, mNO, TYPE, TITLE, CONTENT) VALUES(0,2,'SELL','[판매] 삼성 신형 갤럭시북 노트북 팔아요','새로나온 삼성 갤럭시북입니다. 이거 가성비 괜찮습니다.');
INSERT INTO BOARD (bNO, mNO, TYPE, TITLE, CONTENT) VALUES(0,3,'SELL','[판매] 삼성 노트북 팔아요.','삼성 노트북 팝니다. 터치 됩니다.');
INSERT INTO BOARD (bNO, mNO, TYPE, TITLE, CONTENT) VALUES(0,2,'SELL','[판매] 아이폰 팔아요.','아이폰15 팝니다.');
INSERT INTO BOARD (bNO, mNO, TYPE, TITLE, CONTENT) VALUES(0,3,'SELL','[판매] 애플 맥북 노트북 팝니다.','M2 모델입니다. 맥북 게임용으로 잘써요');
INSERT INTO BOARD (bNO, mNO, TYPE, TITLE, CONTENT) VALUES(0,2,'BUY','[구매] 애플 노트북 삽니다.','맥북 게임용으로 삽니다. 이거 게임 잘돌아가나요?');
INSERT INTO BOARD (bNO, mNO, TYPE, TITLE, CONTENT) VALUES(0,3,'BUY','[구매] 삼성 노트북 삽니다','게임용으로 삽니다. ');
INSERT INTO BOARD (bNO, mNO, TYPE, TITLE, CONTENT) VALUES(0,2,'BUY','[구매] 애플 아이폰 삽니다','아이폰14사요. 30만원에 네고합니다. ');
INSERT INTO BOARD (bNO, mNO, TYPE, TITLE, CONTENT) VALUES(0,2,'BUY','[구매] 삼성 갤럭시 삽니다.','갤럭시 삽니다. 아무 기종이나 상관없어요.');
INSERT INTO BOARD (bNO, mNO, TYPE, TITLE, CONTENT) VALUES(0,3,'SELL','[판매] 애플 노트북 팔아요.','노트북 맥북 최신입니다. 게임하시면 안됩니다');
INSERT INTO BOARD (bNO, mNO, TYPE, TITLE, CONTENT) VALUES(0,3,'SELL','[판매] 삼성 신형 갤럭시북 노트북 팔아요','새로나온 삼성 갤럭시북입니다. 이거 가성비 괜찮습니다.');
INSERT INTO BOARD (bNO, mNO, TYPE, TITLE, CONTENT) VALUES(0,2,'SELL','[판매] 삼성 노트북 팔아요.','삼성 노트북 팝니다. 터치 됩니다.');
INSERT INTO BOARD (bNO, mNO, TYPE, TITLE, CONTENT) VALUES(0,2,'SELL','[판매] 아이폰 팔아요.','아이폰15 팝니다.');
INSERT INTO BOARD (bNO, mNO, TYPE, TITLE, CONTENT) VALUES(0,2,'SELL','[판매] 애플 맥북 노트북 팝니다.','M2 모델입니다. 맥북 게임용으로 잘써요');
INSERT INTO BOARD (bNO, mNO, TYPE, TITLE, CONTENT) VALUES(0,2,'BUY','[구매] 애플 노트북 삽니다.','맥북 게임용으로 삽니다. 이거 게임 잘돌아가나요?');
INSERT INTO BOARD (bNO, mNO, TYPE, TITLE, CONTENT) VALUES(0,3,'BUY','[구매] 삼성 노트북 삽니다','게임용으로 삽니다. ');
INSERT INTO BOARD (bNO, mNO, TYPE, TITLE, CONTENT) VALUES(0,2,'BUY','[구매] 애플 아이폰 삽니다','아이폰14사요. 30만원에 네고합니다. ');
INSERT INTO BOARD (bNO, mNO, TYPE, TITLE, CONTENT) VALUES(0,3,'BUY','[구매] 삼성 갤럭시 삽니다.','갤럭시 삽니다. 아무 기종이나 상관없어요.');
INSERT INTO BOARD (bNO, mNO, TYPE, TITLE, CONTENT) VALUES(0,2,'SELL','[판매] 애플 노트북 팔아요.','노트북 맥북 최신입니다. 게임하시면 안됩니다');
INSERT INTO BOARD (bNO, mNO, TYPE, TITLE, CONTENT) VALUES(0,2,'SELL','[판매] 삼성 신형 갤럭시북 노트북 팔아요','새로나온 삼성 갤럭시북입니다. 이거 가성비 괜찮습니다.');
INSERT INTO BOARD (bNO, mNO, TYPE, TITLE, CONTENT) VALUES(0,3,'SELL','[판매] 삼성 노트북 팔아요.','삼성 노트북 팝니다. 터치 됩니다.');
INSERT INTO BOARD (bNO, mNO, TYPE, TITLE, CONTENT) VALUES(0,2,'SELL','[판매] 아이폰 팔아요.','아이폰15 팝니다.');
INSERT INTO BOARD (bNO, mNO, TYPE, TITLE, CONTENT) VALUES(0,3,'SELL','[판매] 애플 맥북 노트북 팝니다.','M2 모델입니다. 맥북 게임용으로 잘써요');
INSERT INTO BOARD (bNO, mNO, TYPE, TITLE, CONTENT) VALUES(0,2,'BUY','[구매] 애플 노트북 삽니다.','맥북 게임용으로 삽니다. 이거 게임 잘돌아가나요?');
INSERT INTO BOARD (bNO, mNO, TYPE, TITLE, CONTENT) VALUES(0,3,'BUY','[구매] 삼성 노트북 삽니다','게임용으로 삽니다. ');
INSERT INTO BOARD (bNO, mNO, TYPE, TITLE, CONTENT) VALUES(0,2,'BUY','[구매] 애플 아이폰 삽니다','아이폰14사요. 30만원에 네고합니다. ');
INSERT INTO BOARD (bNO, mNO, TYPE, TITLE, CONTENT) VALUES(0,2,'BUY','[구매] 삼성 갤럭시 삽니다.','갤럭시 삽니다. 아무 기종이나 상관없어요.');
INSERT INTO BOARD (bNO, mNO, TYPE, TITLE, CONTENT) VALUES(0,3,'SELL','[판매] 애플 노트북 팔아요.','노트북 맥북 최신입니다. 게임하시면 안됩니다');
INSERT INTO BOARD (bNO, mNO, TYPE, TITLE, CONTENT) VALUES(0,3,'SELL','[판매] 삼성 신형 갤럭시북 노트북 팔아요','새로나온 삼성 갤럭시북입니다. 이거 가성비 괜찮습니다.');


COMMIT;
SELECT * FROM BOARD;


------------------------------------------------------------------
--------------------------- BOARD_ATTACH_FILE 관련 ----------------------------
------------------------------------------------------------------


CREATE TABLE BOARD_ATTACH_FILE (
	fNO INT AUTO_INCREMENT, 
    bNO INT,
    ORIGINAL_FILENAME VARCHAR(200), 
	RENAMED_FILENAME VARCHAR(200), 
    CREATE_DATE DATETIME DEFAULT CURRENT_TIMESTAMP, 
    CONSTRAINT PK_BOARD_ATTACH_FILE PRIMARY KEY(fNO),
    CONSTRAINT FK_BOARD_BO FOREIGN KEY(bNO) REFERENCES BOARD(bNO) ON DELETE CASCADE
);

-- 우리가 필요한 형식으로 인서트 필요---------------------------------------------------------------------------------------------------------수정 필요!!★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
INSERT INTO BOARD_ATTACH_FILE (fNO, bNO, ORIGINAL_FILENAME, RENAMED_FILENAME, CREATE_DATE) VALUES(0, 1, '첨부파일2','TEST_FILE2', DEFAULT);
UPDATE BOARD SET ATTACHCOUNT =(SELECT COUNT(*) FROM BOARD_ATTACH_FILE WHERE BNO=1) WHERE BNO=1;
INSERT INTO BOARD_ATTACH_FILE (fNO, bNO, ORIGINAL_FILENAME, RENAMED_FILENAME, CREATE_DATE) VALUES(0, 2, '첨부파일','TEST_FILE', DEFAULT);
INSERT INTO BOARD_ATTACH_FILE (fNO, bNO, ORIGINAL_FILENAME, RENAMED_FILENAME, CREATE_DATE) VALUES(0, 2, '첨부파일','TEST_FILE', DEFAULT);
UPDATE BOARD SET ATTACHCOUNT =(SELECT COUNT(*) FROM BOARD_ATTACH_FILE WHERE BNO=2) WHERE BNO=2;
INSERT INTO BOARD_ATTACH_FILE (fNO, bNO, ORIGINAL_FILENAME, RENAMED_FILENAME, CREATE_DATE) VALUES(0, 3, '첨부파일','TEST_FILE', DEFAULT);
INSERT INTO BOARD_ATTACH_FILE (fNO, bNO, ORIGINAL_FILENAME, RENAMED_FILENAME, CREATE_DATE) VALUES(0, 3, '첨부파일','TEST_FILE', DEFAULT);
INSERT INTO BOARD_ATTACH_FILE (fNO, bNO, ORIGINAL_FILENAME, RENAMED_FILENAME, CREATE_DATE) VALUES(0, 3, '첨부파일','TEST_FILE', DEFAULT);
UPDATE BOARD SET ATTACHCOUNT =(SELECT COUNT(*) FROM BOARD_ATTACH_FILE WHERE BNO=3) WHERE BNO=3;

COMMIT;
SELECT * FROM BOARD_ATTACH_FILE;
SELECT * FROM BOARD;

------------------------------------------------------------------
------------------------- REPLY 관련 테이블 -------------------------
------------------------------------------------------------------

CREATE TABLE REPLY(
  rNO INT PRIMARY KEY AUTO_INCREMENT,
  bNO INT,
  mNO INT,
  CONTENT VARCHAR(1000),
  STATUS VARCHAR(1) DEFAULT 'Y' CHECK (STATUS IN ('Y', 'N')),
  CREATE_DATE DATETIME DEFAULT CURRENT_TIMESTAMP,
  MODIFY_DATE DATETIME DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (bNO) REFERENCES BOARD(bNO) ON DELETE CASCADE,
  FOREIGN KEY (mNO) REFERENCES MEMBER(mNO) ON DELETE SET NULL 
);

-- 우리가 필요한 형식으로 인서트 필요---------------------------------------------------------------------------------------------------------수정 필요!!★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
INSERT INTO REPLY (rNO, bNO, mNO, CONTENT) VALUES(0, 1, 2, '안녕하세요.');
INSERT INTO REPLY (rNO, bNO, mNO, CONTENT) VALUES(0, 1, 3, '댓글 테스트 입니다. 1');
INSERT INTO REPLY (rNO, bNO, mNO, CONTENT) VALUES(0, 1, 3, '댓글 테스트 입니다. 2');
INSERT INTO REPLY (rNO, bNO, mNO, CONTENT) VALUES(0, 1, 3, '댓글 테스트 입니다. 3');
INSERT INTO REPLY (rNO, bNO, mNO, CONTENT) VALUES(0, 1, 3, '댓글 테스트 입니다. 4');
INSERT INTO REPLY (rNO, bNO, mNO, CONTENT) VALUES(0, 2, 2, '안녕하세요.');
INSERT INTO REPLY (rNO, bNO, mNO, CONTENT) VALUES(0, 2, 3, '반갑습니다.');
INSERT INTO REPLY (rNO, bNO, mNO, CONTENT) VALUES(0, 3, 3, '안녕하세요.');
INSERT INTO REPLY (rNO, bNO, mNO, CONTENT) VALUES(0, 3, 2, '반갑습니다.');


COMMIT;

SELECT * FROM REPLY;




------------------------------------------------------------------
------------------------- TOURIST_ATTRACTION 관련 테이블 -------------------------
------------------------------------------------------------------

CREATE TABLE TOURIST_ATTRACTION (
    CONTENTID INT,
    CONTENTTYPEID INT,
    HOMEPAGE VARCHAR(600),
    TEL VARCHAR(100),
    TITLE VARCHAR(200),
    FIRSTIMAGE VARCHAR(200),
    FIRSTIMAGE2 VARCHAR(200),
    AREACODE VARCHAR(100),
    SIGUNGUCODE VARCHAR(100),
    CAT1 VARCHAR(100),
    CAT2 VARCHAR(100),
    CAT3 VARCHAR(100),
    ADDR1 VARCHAR(100),
    ADDR2 VARCHAR(100),
    ZIPCODE VARCHAR(100),
    MAPX VARCHAR(100),
    MAPY VARCHAR(100),
    OVERVIEW VARCHAR(500),
    MLEVEL VARCHAR(100),
    ACCOMCOUNT VARCHAR(100),
    CHKBABYCARRIAGE VARCHAR(500),
    CHKCREDITCARD VARCHAR(100),
    CHKPET VARCHAR(100),
    EXPAGERANGE VARCHAR(100),
    EXPGUIDE VARCHAR(100),
    HERITAGE1 VARCHAR(100),
    HERITAGE2 VARCHAR(100),
    HERITAGE3 VARCHAR(100),
    INFOCENTERCULTURE VARCHAR(100),
    OPENDATE VARCHAR(100),
    PARKING VARCHAR(100),
    RESTDATE VARCHAR(100),
    USESEASON VARCHAR(100),
    USETIME VARCHAR(100),
    CONSTRAINT PK_TOURIST_ATTRACTION PRIMARY KEY (CONTENTID, CONTENTTYPEID)
);

INSERT INTO TOURIST_ATTRACTION (
	CONTENTID, CONTENTTYPEID, HOMEPAGE, TEL, TITLE,
    FIRSTIMAGE, FIRSTIMAGE2, AREACODE, SIGUNGUCODE, CAT1,
    CAT2, CAT3, ADDR1, ADDR2, ZIPCODE,
    MAPX, MAPY, OVERVIEW, MLEVEL, ACCOMCOUNT,
    CHKBABYCARRIAGE, CHKCREDITCARD, CHKPET, EXPAGERANGE, EXPGUIDE,
    HERITAGE1, HERITAGE2, HERITAGE3, INFOCENTERCULTURE, OPENDATE,
    PARKING, RESTDATE, USESEASON, USETIME) 
    VALUES (101, 1, 'http://example.com', '02-1234-5678', '관광 명소',
    'image1.jpg', 'image2.jpg', '100', '200', 'CAT1',
    'CAT2', 'CAT3', '서울특별시', '강남구', '12345',
    '37.1234', '127.1234', '관광 명소에 대한 설명', '1', '100',
    '있음', '가능', '불가', '모든 연령', '경험 가이드',
    '유산1', '유산2', '유산3', '문화 센터 정보', '2024-01-01',
    '있음', '월요일', '봄', '09:00 - 18:00');

COMMIT;

SELECT * FROM TOURIST_ATTRACTION;

------------------------------------------------------------------
------------------------- IMAGE 관련 테이블 -------------------------
------------------------------------------------------------------

CREATE TABLE IMAGE (
    iNo INT PRIMARY KEY AUTO_INCREMENT,
    contentid VARCHAR(30),
    imgname VARCHAR(30),
    originimgurl VARCHAR(150),
    serialnum VARCHAR(100),
    cpyrhtDivCd VARCHAR(30),
    smallimageurl VARCHAR(150)
);
INSERT INTO IMAGE (contentid, imgname, originimgurl, serialnum, cpyrhtDivCd, smallimageurl)
VALUES ('101', 'image_name', 'http://example.com/image.jpg', '1234', 'A', 'http://example.com/smallimage.jpg');

COMMIT;

SELECT * FROM IMAGE;

------------------------------------------------------------------
------------------------- FESTIVAL 관련 테이블 -------------------------
------------------------------------------------------------------
/*
CREATE TABLE FESTIVAL (
    CONTENTID INT,
    CONTENTTYPEID INT,
    HOMEPAGE VARCHAR(100),
    TEL VARCHAR(100),
    TITLE VARCHAR(200),
    FIRSTIMAGE VARCHAR(200),
    FIRSTIMAGE2 VARCHAR(200),
    AREACODE VARCHAR(100),
    SIGUNGUCODE VARCHAR(100),
    CAT1 VARCHAR(100),
    CAT2 VARCHAR(100),
    CAT3 VARCHAR(100),
    ADDR1 VARCHAR(100),
    ADDR2 VARCHAR(100),
    ZIPCODE VARCHAR(100),
    MAPX VARCHAR(100),
    MAPY VARCHAR(100),
    OVERVIEW VARCHAR(100),
    MLEVEL VARCHAR(100),
    AGELIMIT INT,
    BOOKINGPLACE VARCHAR(100),
    DISCOUNTINFORFESTIVAL VARCHAR(100),
    EVENTENDDATE DATE,
    EVENTHOMEPAGE VARCHAR(100),
    EVENTPLACE VARCHAR(100),
    EVENTSTARTDATE DATE,
    FESTIVALGRADE VARCHAR(100),
    PLACEINFO VARCHAR(100),
    PLAYTIME VARCHAR(100),
    PROGRAM VARCHAR(100),
    SPENDTITMEFESTIVAL VARCHAR(100),
    SPONSOR1 VARCHAR(100),
    SPONSOR1TEL VARCHAR(100),
    SPONSOR2 VARCHAR(100),
    SPONSOR2TEL VARCHAR(100),
    SUBEVENT VARCHAR(100),
    USETIMEFESTIVAL INT,
    CONSTRAINT PK_FESTIVAL PRIMARY KEY (CONTENTID, CONTENTTYPEID)
);

INSERT INTO FESTIVAL (
	CONTENTID, CONTENTTYPEID, HOMEPAGE, TEL, TITLE,
    FIRSTIMAGE, FIRSTIMAGE2, AREACODE, SIGUNGUCODE, CAT1,
    CAT2, CAT3, ADDR1, ADDR2, ZIPCODE,
    MAPX, MAPY, OVERVIEW, MLEVEL, AGELIMIT,
    BOOKINGPLACE, DISCOUNTINFORFESTIVAL, EVENTENDDATE, EVENTHOMEPAGE, EVENTPLACE,
    EVENTSTARTDATE, FESTIVALGRADE, PLACEINFO, PLAYTIME, PROGRAM,
    SPENDTITMEFESTIVAL, SPONSOR1, SPONSOR1TEL, SPONSOR2, SPONSOR2TEL,
    SUBEVENT, USETIMEFESTIVAL)
    VALUES (201, 2, 'http://festival.com', '02-9876-5432', '축제 제목',
    'fest_image1.jpg', 'fest_image2.jpg', '101', '201', 'FEST1',
    'FEST2', 'FEST3', '부산시', '해운대구', '67890',
    '35.1234', '129.1234', '축제에 대한 설명', '2', 0,
    '예약처', '할인 정보', '2024-12-25', 'http://festivalhomepage.com', '축제 장소',
    '2024-12-20', 'A', '장소 정보', '10:00 - 22:00', '프로그램',
    '2시간', '스폰서1', '02-1111-2222', '스폰서2', '02-3333-4444',
    '부대 행사', 4);

COMMIT;

SELECT * FROM FESTIVAL;
페스티벌 주석*/
------------------------------------------------------------------
------------------------- FOOD 관련 테이블 -------------------------
------------------------------------------------------------------

CREATE TABLE FOOD (
    CONTENTID INT,
    CONTENTTYPEID INT,
    HOMEPAGE VARCHAR(600),
    TEL VARCHAR(100),
    TITLE VARCHAR(200),
    FIRSTIMAGE VARCHAR(200),
    FIRSTIMAGE2 VARCHAR(200),
    AREACODE VARCHAR(100),
    SIGUNGUCODE VARCHAR(100),
    CAT1 VARCHAR(100),
    CAT2 VARCHAR(100),
    CAT3 VARCHAR(100),
    ADDR1 VARCHAR(100),
    ADDR2 VARCHAR(100),
    ZIPCODE VARCHAR(100),
    MAPX VARCHAR(100),
    MAPY VARCHAR(100),
    OVERVIEW VARCHAR(100),
    MLEVEL VARCHAR(100),
    CHKCREDITCARDFOOD VARCHAR(100),
    DISCOUNTINFOFOOD VARCHAR(100),
    FIRSTMENU VARCHAR(100),
    INFOCENTERFOOD VARCHAR(100),
    KIDSFACILITY VARCHAR(100),
    OPENDATEFOOD DATE,
    OPENTIMEFOOD VARCHAR(100),
    PACKING VARCHAR(100),
    PARKINGFOOD VARCHAR(100),
    RESERVATIONFOOD VARCHAR(100),
    RESTDATEFOOD VARCHAR(100),
    SCALEFOOD VARCHAR(100),
    SEAT VARCHAR(100),
    SMOKING VARCHAR(100),
    TREATMENU VARCHAR(100),
    LCNSNO VARCHAR(100),
    CONSTRAINT PK_FOOD PRIMARY KEY (CONTENTID, CONTENTTYPEID)
);

INSERT INTO FOOD (
	CONTENTID, CONTENTTYPEID, HOMEPAGE, TEL, TITLE,
    FIRSTIMAGE, FIRSTIMAGE2, AREACODE, SIGUNGUCODE, CAT1,
    CAT2, CAT3, ADDR1, ADDR2, ZIPCODE,
    MAPX, MAPY, OVERVIEW, MLEVEL, CHKCREDITCARDFOOD,
    DISCOUNTINFOFOOD, FIRSTMENU, INFOCENTERFOOD, KIDSFACILITY, OPENDATEFOOD,
    OPENTIMEFOOD, PACKING, PARKINGFOOD, RESERVATIONFOOD, RESTDATEFOOD,
    SCALEFOOD, SEAT, SMOKING, TREATMENU, LCNSNO)
    VALUES (301, 3, 'http://food.com', '02-5555-6666', '음식점 이름',
    'food_image1.jpg', 'food_image2.jpg', '102', '202', 'FOOD1',
    'FOOD2', 'FOOD3', '대구시', '중구', '34567',
    '35.8765', '128.6543', '음식점에 대한 설명', '3', '가능',
    '할인 정보', '대표 메뉴', '정보 센터', '있음', '2024-02-01',
    '11:00 - 21:00', '포장 가능', '있음', '예약 가능', '화요일',
    '중간', '50', '금연', '메뉴 목록', '123-4567');

COMMIT;

SELECT * FROM FOOD;

------------------------------------------------------------------
------------------------- CULTURE_CONTENT 관련 테이블 -------------------------
------------------------------------------------------------------

CREATE TABLE CULTURE_CONTENT (
    CONTENTID INT,
    CONTENTTYPEID INT,
    HOMEPAGE VARCHAR(600),
    TEL VARCHAR(100),
    TITLE VARCHAR(200),
    FIRSTIMAGE VARCHAR(200),
    FIRSTIMAGE2 VARCHAR(200),
    AREACODE VARCHAR(100),
    SIGUNGUCODE VARCHAR(100),
    CAT1 VARCHAR(100),
    CAT2 VARCHAR(100),
    CAT3 VARCHAR(100),
    ADDR1 VARCHAR(100),
    ADDR2 VARCHAR(100),
    ZIPCODE VARCHAR(100),
    MAPX VARCHAR(100),
    MAPY VARCHAR(100),
    OVERVIEW VARCHAR(100),
    MLEVEL VARCHAR(100),
    ACCOMCOUNTCULTURE VARCHAR(100),
    CHKBABYCARRIAGECULTURE VARCHAR(100),
    CHKCREDITCARDCULTURE VARCHAR(100),
    CHKPETCULTURE VARCHAR(100),
    DISCOUNTINFO VARCHAR(100),
    INFOCENTERCULTURE VARCHAR(100),
    PARKINGCULTURE VARCHAR(100),
    PARKINGFEE VARCHAR(100),
    RESTDATECULTURE VARCHAR(100),
    USEFEE VARCHAR(100),
    USETIMECULTURE VARCHAR(100),
    SCALE VARCHAR(100),
    SPENDTIME VARCHAR(100),
    CONSTRAINT PK_CULTURECONTENT PRIMARY KEY (CONTENTID, CONTENTTYPEID)
);

INSERT INTO CULTURE_CONTENT (
	CONTENTID, CONTENTTYPEID, HOMEPAGE, TEL, TITLE,
    FIRSTIMAGE, FIRSTIMAGE2, AREACODE, SIGUNGUCODE, CAT1,
    CAT2, CAT3, ADDR1, ADDR2, ZIPCODE,
    MAPX, MAPY, OVERVIEW, MLEVEL, ACCOMCOUNTCULTURE,
    CHKBABYCARRIAGECULTURE, CHKCREDITCARDCULTURE, CHKPETCULTURE, DISCOUNTINFO, INFOCENTERCULTURE,
    PARKINGCULTURE, PARKINGFEE, RESTDATECULTURE, USEFEE, USETIMECULTURE,
    SCALE, SPENDTIME)
    VALUES (401, 4, 'http://culture.com', '02-7777-8888', '문화 콘텐츠 제목',
    'culture_image1.jpg', 'culture_image2.jpg', '103', '203', 'CULT1',
    'CULT2', 'CULT3', '인천시', '남동구', '54321',
    '37.6543', '126.4321', '문화 콘텐츠에 대한 설명', '4', '200',
    '있음', '가능', '가능', '할인 정보', '문화 정보 센터',
    '있음', '무료', '수요일', '무료', '10:00 - 17:00',
    '대형', '3시간');

COMMIT;

SELECT * FROM CULTURE_CONTENT;

CREATE TABLE CULTURE(
    CNO             INT AUTO_INCREMENT, 
	ADDR1   VARCHAR(100),	      
	ADDR2	 VARCHAR(100),	        
	areacode		INT,	       
	booktour	INT,	
	cat1			VARCHAR(100),	
	cat2			VARCHAR(100),	
	cat3			VARCHAR(100),	       
	contentid		INT,	       
	contenttypeid		VARCHAR(100),	       
	createdtime		DATE,	        
	firstimage		VARCHAR(100),	       
	firstimage2		VARCHAR(100),	        
	cpyrhtDivCd			VARCHAR(100),	        
	mapx		VARCHAR(100),	      
	mapy		VARCHAR(100),	       
	mlevel			INT,	       
	modifiedtime			DATE,	     
	sigungucode			INT,	       
    tel	VARCHAR(100),	
	title		VARCHAR(100),	
	zipcode	VARCHAR(100),	
   
    
    PRIMARY KEY (CNO)
);

INSERT INTO CULTURE (CNO, ADDR1, ADDR2, areacode, booktour, cat1, cat2, 
					cat3, contentid, contenttypeid, createdtime, firstimage, 
                    firstimage2, cpyrhtDivCd, mapx, mapy, mlevel, modifiedtime, sigungucode, tel, title, zipcode) 
                    
                    VALUES(0, null, "345", 12, 1, "dfd", "dfd", "dfd", 45,"rt",'20111215', "fgfg","fgfg",
							"cpyrhtDivCd", "mapx", "mapy", "1", '20111215',1,"4543545", "title", "zipcode");


select * from culture;

----------------------------------- DDL 끝-------------------------------------------


----------------------------------- DML 시작-------------------------------------------

-- MEMBER 전체

SELECT * FROM MEMBER;

-- 멤버 조회
SELECT * FROM MEMBER WHERE MNO = 1 AND STATUS='Y';

-- 멤버 조회
SELECT * FROM MEMBER WHERE ID='TEST1' AND STATUS='Y';

-- 멤버 추가
INSERT INTO MEMBER (
    mNO, ID, PASSWORD,  ROLE, NAME, 
    PHONE, EMAIL, ADDRESS, HOBBY, STATUS, 
    ENROLL_DATE, MODIFY_DATE
) VALUES(
    0, 'test3', '1234', DEFAULT, '테스터', 
    '010-1234-4341', 'test@test.com', '서울시 강남구 역삼동', DEFAULT, DEFAULT,
    DEFAULT, DEFAULT
);


-- 멤버 수정               
UPDATE MEMBER SET 
	NAME = '지나가는유저', PHONE = '010-2121-2222', EMAIL = 'test22@email.com', 
    ADDRESS = '서울시 강남구 테스트', HOBBY = '게임', MODIFY_DATE=CURRENT_TIMESTAMP
WHERE mNO=3;

-- 멤버 패스워드 변경
UPDATE MEMBER SET PASSWORD='4321' WHERE MNO = 3;

-- 멤버 탈퇴 -> 삭제아님
UPDATE MEMBER SET STATUS='N' WHERE MNO=3;


-- BOARD DML

-- 카테고리 가져오기
SELECT * FROM BOARD_CATEGORY ORDER BY ORDERNO;

-- 전체 조회
SELECT * FROM BOARD;

-- 총 게시글 갯수
SELECT COUNT(*) FROM BOARD WHERE STATUS='Y';

-- 조회수 증가
UPDATE BOARD SET READCOUNT=1 WHERE BNO=1;

-- 게시글 작성
INSERT INTO BOARD (bNO, mNO, TYPE, TITLE, CONTENT) VALUES(0, 1,DEFAULT,'테스트 글 입니다.','테스트 입니다.');

-- 게시글 수정
UPDATE BOARD SET 
	TITLE='글수정 테스트', TYPE= 'PLAIN', CONTENT='테스트입니다.', MODIFY_DATE = CURRENT_TIMESTAMP
WHERE bNO=2;

-- 게시글 삭제
UPDATE BOARD SET STATUS='N' WHERE bNO=3;

-- 파일 첨부
INSERT INTO BOARD_ATTACH_FILE (fNO, bNO, ORIGINAL_FILENAME, RENAMED_FILENAME, CREATE_DATE) 
VALUES(0, 2, '첨부파일','TEST_FILE', DEFAULT);

-- 파일 첨부된 숫자 게시판 반영
UPDATE BOARD SET ATTACHCOUNT =(SELECT COUNT(*) FROM BOARD_ATTACH_FILE WHERE BNO=2) WHERE BNO=2;

-- 파일 조회
SELECT fNO, bNO, ORIGINAL_FILENAME, RENAMED_FILENAME, CREATE_DATE FROM BOARD_ATTACH_FILE
WHERE BNO = 2;

-- 파일 삭제
DELETE FROM BOARD_ATTACH_FILE WHERE FNO = 4;

-- 글 상세 조회
SELECT  B.BNO, B.TYPE, M.ID, B.TITLE, B.CONTENT, B.READCOUNT, B.ATTACHCOUNT, B.CREATE_DATE, B.MODIFY_DATE
FROM BOARD B
JOIN MEMBER M ON (B.MNO = M.MNO)
WHERE B.STATUS = 'Y' AND B.BNO = 1;

-- 목록 조회(페이징) 쿼리 + 게시글 레벨 반영
SELECT  B.BNO, B.TYPE, B.TITLE, M.ID, B.READCOUNT, B.ATTACHCOUNT, B.CREATE_DATE
FROM BOARD B
JOIN MEMBER M ON (B.MNO = M.MNO)
JOIN BOARD_CATEGORY C ON (B.TYPE = C.TYPE)
WHERE B.STATUS = 'Y'
ORDER BY C.LEVEL, B.BNO DESC LIMIT 12 OFFSET 0;


-- Reply

-- 리플 등록
INSERT INTO REPLY (rNO, bNO, mNO, content) VALUES(0, 1, 2, '안녕하세요.');


-- 한 게시판에 해당하는 댓글 리스트 조회용 쿼리문
SELECT R.RNO, R.BNO, R.CONTENT, M.ID, R.CREATE_DATE, R.MODIFY_DATE
FROM REPLY R
JOIN MEMBER M ON(R.MNO = M.MNO)
WHERE R.STATUS='Y' AND BNO = 1 
ORDER BY R.RNO DESC;


select * FROM REPLY; 

DELETE FROM REPLY WHERE RNO=4;


SELECT  
	mNO, ID, PASSWORD, ROLE, NAME,  
	PHONE, EMAIL, ADDRESS, HOBBY, STATUS, 
	ENROLL_DATE, MODIFY_DATE
FROM MEMBER;


-- 검색용 쿼리 2 종 세트
-- 게시판 리스트 용 쿼리 완성

SELECT  B.BNO, B.TYPE, B.TITLE, M.ID, B.READCOUNT, B.ATTACHCOUNT, B.CREATE_DATE
FROM BOARD B
JOIN MEMBER M ON (B.MNO = M.MNO)
JOIN BOARD_CATEGORY C ON (B.TYPE = C.TYPE)
WHERE 
	B.STATUS = 'Y'
    AND B.TYPE IN ('NOTICE', 'PLAIN', 'CMM1', 'CMM2', 'CMM3', 'QUESTION', 'TIP', 'BUY', 'SELL')
    AND M.ID LIKE '%test%' 
    AND B.TITLE LIKE '%구매%' 
    AND B.CONTENT LIKE '%아이폰%' 
ORDER BY C.LEVEL, B.BNO DESC LIMIT 12 OFFSET 0;


SELECT COUNT(*)
FROM BOARD B
JOIN MEMBER M ON (B.MNO = M.MNO)
JOIN BOARD_CATEGORY C ON (B.TYPE = C.TYPE)
WHERE 
	B.STATUS = 'Y'
    AND B.TYPE IN ('NOTICE', 'PLAIN', 'CMM1', 'CMM2', 'CMM3', 'QUESTION', 'TIP', 'BUY', 'SELL')
	AND M.ID LIKE '%test%' 
	AND B.TITLE LIKE '%구매%'
	AND B.CONTENT LIKE '%아이폰%';
    

-- TOURIST_ATTRACTION 

-- 레코드 삽입
INSERT INTO TOURIST_ATTRACTION (CONTENTID, CONTENTTYPED, HOMEPAGE, TEL, TITLE, FIRSTIMAGE) VALUES (102, 2, 'http://exampleattraction.com', '02-1234-5678', 'Example Attraction', 'image1.jpg');
-- 기록 업데이트
UPDATE TOURIST_ATTRACTION SET TITLE='Updated Attraction Title', HOMEPAGE='http://newattraction.com' WHERE CONTENTID=102;
-- 기록 삭제
DELETE FROM TOURIST_ATTRACTION WHERE CONTENTID=102;
-- 기록 선택
SELECT * FROM TOURIST_ATTRACTION;


-- IMAGE

-- 기록 삽입
INSERT INTO IMAGE (contentid, imgname, originimgurl) VALUES ('101', 'image_name', 'http://example.com/image.jpg');
-- 기록 업데이트
UPDATE IMAGE SET imgname = 'updated_image_name' WHERE iNo = 1;
-- 기록 삭제
DELETE FROM IMAGE WHERE iNo = 1;
-- 기록 선택
SELECT * FROM IMAGE;


-- FESTIVAL 

-- 기록 삽입
INSERT INTO FESTIVAL (CONTENTID, CONTENTTYPEID, TITLE) VALUES (201, 2, 'New Festival');
-- 기록 업데이트
UPDATE FESTIVAL SET TITLE = 'Updated Festival Title' WHERE CONTENTID = 201;
-- 기록 삭제
DELETE FROM FESTIVAL WHERE CONTENTID = 201;
-- 기록 선택
SELECT * FROM FESTIVAL;


-- FOOD 

-- 기록 삽입
INSERT INTO FOOD (CONTENTID, CONTENTTYPEID, TITLE) VALUES (301, 3, 'New Food Place');
-- 기록 업데이트
UPDATE FOOD SET TITLE = 'Updated Food Place Title' WHERE CONTENTID = 301;
-- 기록 삭제
DELETE FROM FOOD WHERE CONTENTID = 301;
-- 기록 선택
SELECT * FROM FOOD;


-- CULTURE_CONTENT

-- 기록 삽입
INSERT INTO CULTURE_CONTENT (CONTENTID, CONTENTTYPEID, TITLE) VALUES (401, 4, 'New Cultural Content');
-- 기록 업데이트
UPDATE CULTURE_CONTENT SET TITLE = 'Updated Cultural Content Title' WHERE CONTENTID = 401;
-- 기록 삭제
DELETE FROM CULTURE_CONTENT WHERE CONTENTID = 401;
-- 기록 선택
SELECT * FROM CULTURE_CONTENT;

----------------------------------- DML 끝-------------------------------------------























