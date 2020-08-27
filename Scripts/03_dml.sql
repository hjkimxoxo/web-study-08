SELECT * FROM MEMBER;
DELETE FROM MEMBER;
INSERT ALL 
	INTO MEMBER VALUES ('이소미', 'somi', '1234', 'gmd@naver.com', '010-2362-5157', 0, sysdate)
	INTO MEMBER VALUES ('하성오', 'sang12', '1234', 'ha12@naver.com', '010-5629-8888',1, sysdate)
	INTO MEMBER VALUES ('김윤승', 'light', '1234', 'youn1004@naver.com', '010-9999-8282',1, sysdate)
	SELECT 1 FROM dual; --조건이 참이면 넣는다
	
