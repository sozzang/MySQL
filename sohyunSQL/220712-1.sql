-- 문장 끝은 세미콜론(;)
-- Crtl + Shift + Enter 모두 실행
-- Crtl + Enter 한줄만 실행
-- 대소문자 가리지 않음
-- 실행시 message 부분에서 row의 수 확인해주자

SHOW DATABASES;
-- 데이터베이스 보여줘~ 행과열로 볼 수 있음
USE world;
-- world 데이터 베이스 사용할게
show tables;
-- world 데이터베이스에 있는 테이블 보여줘

SELECT 1 + 1; 
-- SELECT 다음 보고싶은 것
-- 괄호가 있을때는 당연히 괄호연산이 먼저 됨
SELECT "HELLO WORLD";
SELECT "HELLO" + "WORLD";
-- 문자열 표현은 ""or''로 가능, 문자열 합연산 불가
select 10 = 20;
select 10 = 10;
-- 관계연산자 '같다'는 '='으로 표현하며 1이 true값, 0이 false값
select 10 <> 11;
select 10 <> 10;
-- '다르다'는 '<>' 으로 표현, 1이 true값, 0이 false값