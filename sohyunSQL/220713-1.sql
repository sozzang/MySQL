 -- 데이터베이스 만들어보기
 
create database my_db;

show databases;
 
use my_db;

show tables;
-- 현재 테이블이 없는 상태

-- 어떤 정보를 담을건지 테이블 생성하겠음
-- create table 테이블이름 (컬럼명 타입 (문자열의 경우에는 길이));
-- 열1 이름 varchar (문자열의 길이) /char과의 차이는 아래에
-- 열2 나이 int 
create table persons (
name varchar(10),
age int
);

desc persons;

select * from persons;

-- 행 만들기
-- insert into 테이블이름 (컬럼들 이름) values (컬럼에 넣고자하는 정보)
insert into persons (name, age) values ("박소현", 28);

-- '브루스 리', 30살 행 추가
-- '스티븐 킹', 40살 행 추가

insert into persons (name, age) values ("브루스 리",30);
insert into persons (name, age) values ("스티븐 킹",40);

-- '철수', 20살
-- '철수', 30살
-- '철수', 40살
insert into persons (name,age) values ('철수',20),('철수',30),('철수',40);
-- 여러 인물들을 한꺼번에 추가하고 싶을 때는 쉼표로 구분해준 뒤 나열하면 됨

-- 행을 전부~ 지우고싶을 때
delete from persons;

-- 테이블을 지우고싶을때
drop table persons;

-- 책 데이터베이스(이건 시키신건 아닌데 걍 내가 해봄ㅎ)
-- 책 테이블
-- 제목 : 문자열
-- 가격 : 정수

create database book;

use book;

create table books( 
title varchar(20),
price int
);

insert into books (title, price) values ("파워자바",25000),("하늘과 바람과 별과 시", 15000)
, ("꽃을 보듯 너를 본다", 12000);

-- 행의 이름을 name이 아니라 title로 다시 만들고싶어!
-- drop table books;
-- 이후 name을 title로 바꿔주고 실행하면 됨

select * from books;

-- 문자열(길이)를 표현할 수 있는 방법
-- char(5) -- 고정된 길이값을 가짐 'A'하나를 집어 넣어도 'A     ' 무조건 5의 길이를 맞추려 공백이 생김
-- vatchar(5) -- 가변 길이를 가짐 '     ' 총 5개의 칸 중 'A' 하나를 넣으면 길이값이 1이 됨


use my_db;

CREATE TABLE testChar (
    fixLength CHAR(5),
    varLength VARCHAR(5)
);

insert into testChar (fixLength, varLength) values ('A', 'A');

select char_length(fixLength), char_length(varLength) from testchar;

-- 공백 제거
-- 우측 공백 제거 
select rtrim('A     '); 
-- 좌측 공백 제거
select ltrim('     A'); 











