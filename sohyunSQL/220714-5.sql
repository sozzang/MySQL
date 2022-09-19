desc books;

alter table books change column title title varchar(30) not null;
-- 컬럼 만드는건 add, 변경은 change
-- tile, 바꾸고자하는이름 ,타입 
-- 지금은 그대로 해주려고 title title varchar(30)

insert into books (title) values ('디폴트값 확인');

select * from books;

create table myPractice (
colName1 varchar(50) default '39838'
);
-- 