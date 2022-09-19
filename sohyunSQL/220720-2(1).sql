SELECT * FROM my_db.books;

select * from books where price between 100 and 300
union all
select * from books where title like '책%';



-- union은 세로로 붙이기 때문에 컬럼의 순서, 개수, 타입이 중요
select * from persons,test;
-- 나열된 테이블 순서대로 컬럼 결합이 일어남
-- 행의 개수는 곱연산이 적용됨 (cross)