-- SELECT (보고싶은 컬럼) from (테이블이름)
-- 테이블에는 열과 행이 존재하며 컬럼은 열(world테이블에서의 열은 code, name, region, gnp 등)
-- * 는 전부 다 보는거

select * from country;
-- country테이블의 모든 컬럼(열)을 보여줘

select * from city;
-- city테이블의 모든 컬럼(열)을 보여줘

select name,population from country;
-- 컬럼 이름을 명시해주면 보고싶은 것만 볼 수 있음

desc country;
-- desc : 테이블의 구조를 볼 수 있는 명령어
-- describe라고 적어도 됨 

-- country 테이블에서 code열과 gnp열을 함께 조회해보세요!!
select gnp,code from country;
-- code와 gnp 순서를 바꾸면 바꾼 순서로 나옴

SELECT * FROM country WHERE name = 'south korea';
-- where절 : 특정한 조건을 가진 것만 보고싶을 때
-- where 뒤의 조건이 참일때만 나옴 

-- 국가명이 'Japan'인 행의 모든 컬럼 조회해보세요!!
select * from country where name = 'japan';
-- 국가명이 'China'인 행의 모든 컬럼 조회해보세요!!
select * from country where name = 'china';
-- continent 값이 'Asia'인 행 조회해보세요!!!
select * from country where Continent = 'Asia';

select * from country where name = 'south korea' or name = 'japan' or name = 'china';
-- ||(or연산)으로 세개 다 조회할 수도 있음, SQL에서는 OR로 적어주는 편

-- Population(인구) 컬럼 값이 40,000,000 이상인 국가의 모든 컬럼을 조회!!!
select * from country where Population >= 40000000;

-- Population컬럼값이 40,000,000 이상이고 50,000,000이하인 국가의 모든 컬럼을 조회!!!
select * from country where Population >= 40000000 and Population <= 50000000;

-- continent 'Aisa'를 제외한 국가 목록
select * from country where Continent <> 'Asia';
