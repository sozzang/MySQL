-- 테이블 결합하기 ! 

select * from menu  as a
left join restaurants as B on a.restID = B.id;

select * from restaurants as a
left join menu as b on a.id = b.restID;
-- outer join (left,right)

select * from persons;
select * from books;

-- 책1번의 주인의 정보를 알고 싶을 때
select * from my_db.books as a
left join persons as b on a.owner = b.personID;

-- 주인이 없어서 owner가 null인 것을 제외하고 보고싶으면
select * from my_db.books as a
join persons as b on a.owner = b.personID;
-- inner join