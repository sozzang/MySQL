create table persons(
personID int primary key auto_increment,
firstName varchar(10) not null, -- null값을 허용하지 않은 컬럼으로 제약을 걸어줌
lastName varchar(10) not null,
age int not null,
email varchar(50) not null unique
-- 이메일은 고유하니까 추가적으로 제약을 줄 수 있음
);

insert into persons(firstName, lastName, age, email)
values ("박","소현",28,"so@naver"),
("고","길동",40,"ko@naver");
insert into persons(firstName, lastName, age, email) values ("박","소현",28,"so@naver");
-- 이메일 번호는 고유하니깐 똑같은 이메일을 사용하는 사람을 추가하고싶어도 추가할 수 없음
select * from persons;

-- 테이블을 생성할 때 고려해야할 점들
-- 테이블 이름
-- 각 열(이름, 타입, 제약)
-- key로서 사용할 열을 1개 이상
