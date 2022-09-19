-- 이미 존재하는 테이블과 똑같은 모양의 연습용 테이블 만들기
-- create table 테이블명 like 원래 테이블;

create table persons_copy like persons;

select * from persons;

-- 원본 테이블에 있는 행을 똑같이 넣기
-- where절으로 내가 사용하고싶은 행들만 뽑아서 똑같이 넣을 수도 있음
insert into persons_copy (firstName, lastName, age, email)
select  firstName, lastName, age, email from persons;

select * from persons_copy;


-- 셀렉하여 조회한 결과를 가지고 행이 포함된 새 테이블을 만들 수 있다.
-- 때문에 제약사항이 적용되지 않음 
create table persons_copy2
select * from persons;

select * from persons_copy2;

-- 임시로 잠깐만 쓸 수 있는 테이블도 있음
-- 스키마에서 새로고침해도 보이지 않음
-- 접속을 끊으면 사라짐

create temporary table mytable(
mynum int,
mystr varchar(100)
);
insert into mytable values(1,'d');
select * from mytable;