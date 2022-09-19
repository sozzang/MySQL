-- 학생
-- 이름 : 가변길이문자열(10자)
-- 학점 : 실수 

create table students (
name varchar(10),
age int,
score double
);

insert into students (name,age,score) values ("박소현", 28, 3.3);
insert into students (name,age,score) values ("둘리", 20.5, 3); -- 20.5는 반올림됨
select * from students;

insert into students (name,age,score) values ("둘리", 21, 3);

-- 둘리의 행을 지우고싶을때
delete from students where name ="둘리";

-- 동일한 이름을 가진 학생이 있으면 특정 학생을 찝어서 말하기가 어려움
-- 다른 기준을 세워줘야함
-- <map>처럼 중복되지 않는 key가 있으면 기준세우기가 쉬울텐데 ...
-- 파일3에서 계속..
