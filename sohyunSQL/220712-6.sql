-- country 테이블에 개수로 제한을 두고 보고싶다.
select * from country;
select * from country limit 5;
-- 5개까지만 볼래!(5개의 행만 나옴)

-- 인구가 가장 많은 국가 1개의 국가 조회하기!!
select * from country order by Population desc limit 1;

-- 면적 순 탑5
select * from country order by SurfaceArea desc limit 5;

-- continent가 'asia'인 국가들 중 면적이 좁은 순으로 10개의 국가
select * from country where Continent = 'asia' order by SurfaceArea limit 10;

-- region이 '~Africa'로 끝나는 국가들 중 독립년도가 가장 최근인 10개의 국가
select * from country where region like '%africa' order by IndepYear desc limit 10; 

-- 면적당 인구비율(population/SurfaceArea)을 구해서 탑 10 국가
select * from country order by population/SurfaceArea  desc limit 10;

-- gnp변화량(gnp - gnpold ) 탑10 국가
select * from country order by GNP - GNPold desc limit 10;

-- n칸을 건너 뛰고(offset) 그 다음꺼 n개(limit)를 보고싶다! 
select * from country;
select * from country limit 1 offset 2;
-- 두개 건너뛰고 1개만 볼래!
SELECT * FROM country LIMIT 10 OFFSET 2;
-- 두개 건너뛰고 10개만 볼래!
select * from country limit 2, 1;
-- 이렇게도 표현할 수 있는데 offset을 먼저 적어주고 limit할 수를 적어준다.

-- page 나누기 (10개씩 본다고 쳐)
select * from country limit 10 offset 0;
-- 10개씩 보여줌(page1)
select * from country limit 10 offset 10;
-- 위에서 10개 봤으니깐 10개 뛰어넘고 10개 봐야함(page2)
select * from country limit 10 offset 20;
-- 위에서 20개 봤으니깐 20개 뛰어넘고 10개 봐야함(page3)


