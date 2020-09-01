CREATE TABLE MEMBER(
	name varchar2(10),
	userid varchar2(10),
	pwd varchar2(10),
	email varchar2(20),
	phone char(13),
	admin number(1) DEFAULT 0, --0사용자, 1관리자
	joinDate date DEFAULT sysdate,  
	PRIMARY KEY(userid)
);

SELECT * FROM USER_tables;

--테이블 컬럼 조회
SELECT * FROM USER_TAB_COLUMNS WHERE TABLE_name = 'MEMBER';

--제약조건 검색
SELECT * FROM USER_CONSTRAINTS WHERE table_name = 'MEMBER';

SELECT NAME, USERID, PWD, EMAIL, PHONE, ADMIN, JOINDATE FROM MEMBER