SELECT NAME, USERID, PWD, EMAIL, PHONE, ADMIN, JOINDATE FROM MEMBER;

INSERT INTO MEMBER VALUES('박규영','parkgy','1234','pgy@gmail.com','010-1111-2222',1, sysdate);

SELECT NAME, USERID, PWD, EMAIL, PHONE, ADMIN, JOINDATE FROM MEMBER WHERE userid='somi';

UPDATE MEMBER SET name = '문채원', pwd='5678', email='mcw@naver.com', phone='010-5656-5656', admin=0, joindate='2020-08-20' WHERE userID='parkgy';

DELETE FROM MEMBER WHERE USERID = 'parkgy';

