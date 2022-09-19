-- 같은 이름,나이를 가진 학생들이 많으면 한명을 불러오기가 어려우니깐 
-- 파일2는 기준을 세우기가 어렵기 때문에 파일3에서는 고유한 번호를 부여하여
-- 학생들을 불러오기가 편하게 만들어줄 것

-- db 날리기 
drop database my_db;

create database my_db;

use my_db;

create table students (
number int primary key,
-- 학생에게 고유 번호를 부여하고 그것을 주요한 키(primary key)로 설정해줌
name varchar(10),
age int,
score double -- 실수표현
);

desc students;

-- primary kuy(pk)의 특징
insert into students (number, name, age, score) values (1234, "박소현", 28, 3.3); -- null 허용하지않음
insert into students (number, name, age, score) values (1235, "둘리", 10, 4.4);  -- 같은 값을 가진 pk가 존재하지않음
insert into students (number, name, age, score) values (1236, "둘리", 10, 4.4); -- 위와 다~ 같은 값을 가지지만 pk가 다르니까 구분이 쉽다.
-- 테이블을 만들 때에는 무조건 pk하나는 있는게 무조건 좋다. 한개를 특정하기가 쉬우니깐
select * from students;










