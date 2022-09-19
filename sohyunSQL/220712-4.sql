-- 열의 이름을 한글로도 바꿀 수 있음
select code as "코드", name as "이름", population as "인구" from country;

-- 위의 조회 + surfacearea(별명: 면적) 컬럼을 추가로 조회, 인구밀도 컬럼 만들어서 추가
select code as "코드", name as "이름", population as "인구", surfacearea as "면적" 
, round(population /SurfaceArea, 1) as "인구밀도"from country;
-- 그냥 population /SurfaceArea 해도 되는데 소수점 첫번째까지만 보고싶어서 round(값 , 자리수)

-- surfacearea가 50,000이하면서 population이 10,000,000 이상인 국가의 인구밀도를 계산해보기 !!!
select *,  round(population /SurfaceArea, 1) as '인구밀도' from country where SurfaceArea < 50000 and Population < 10000000;

-- 정렬하기
-- 인구 밀도 조회 후 정렬 기준을 정해주자 제일 마지막에 (from절,where절 다음) 별명으로 적어줘도 가능
select code as "코드", name as "이름", population as "인구", surfacearea as "면적" 
, round(population /SurfaceArea, 1) as "인구밀도" from country order by 인구 desc;
-- 정렬은 오름차순이 기본(asc)이며 내림차순은 인구 다음 desc를 적어주면 됨

-- 아시아 대륙 국가들의 인구 순으로(내림차순) 조회하기!!
select * from country where Continent = 'asia' order by Population desc;

-- lifeExpectancy 오름차순으로 조회하기(null값 제외)!!
select * from country where LifeExpectancy is not null order by lifeExpectancy asc;

-- 국가의 이름, 인구, gnp, gnpold(과거 gnp값)조회 gnpold와 gnp 차를 구해서 "gnp 변화량"을 같이 조회
select name, Population, gnp, gnpold , gnpold - gnp  as "gnp 변화량" 
from country
where gnp is not null and gnpold is not null
order by `gnp 변화량`;
-- "gnp 변화량"은 띄어쓰기 때문에 인식을 못하기 때문에 ``사이에 별명 그대로 띄어쓰기까지 적어주면 인식가능

-- 대륙 순으로 정렬해서 조회(ABC순으로 조회됨) , 다른 기준 
-- 1차 기준인 대륙으로 졍렬 후 그 결과로 2차 기준인 인구 기준으로 정렬)
SELECT 
    *
FROM
    country
ORDER BY Continent , Population;

-- governmentform 오름차순, gnp 내림차순으로 정렬하여 조회
select * from country order by governmentform, GNP desc;


