create table books(

bookID int primary key auto_increment,
title varchar(30),
price int
);

desc books;

insert into books (title, price) values ("책1", 100), ("책2", 300), ("책3", 100), ("책3", 100);

select * from books;

delete from books where bookID = 3;
insert into books (title, price) values  ("몇번으로 들어갈까?", 100);
-- bookID 3번을 지우고 새 책을 추가하면 3으로 들어가는게 아니라 5로 새로 들어감