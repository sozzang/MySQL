-- in을 사용하여 괄호 안의 요구들을 다 반환할 수 있음
-- 부정표현은 not in
select * from country where name in('south korea', 'japan', 'china');
select * from country where name not in('south korea', 'japan', 'china');
-- 'south korea', 'japan', 'china'가 아닌 모든 것들 반환

-- between 하면 범위설정 가능(between a and b: a와 b사이)
-- 부정표현은 not between
select * from country where Population between 40000000 and 50000000;
-- 인구가 40,000,000과 50,000,000사이의 국가
SELECT * FROM country WHERe Population NOT BETWEEN 40000000 AND 50000000;
-- 인구가 40,000,000과 50,000,000사이가 아닌 국가

-- Continent값이 north america,europe, aisa를 제외한 국가들 중
-- gnp 값이 100이상 1000이하인 국가 목록 조회
select * from country where Continent not in ('north america', 'europe', 'asia') and gnp between 100 and 1000;

-- null값은 관계연산할 수 없음
select * from country where IndepYear = null;
-- 대신 is로 조회할 수 있음 (is not)
select * from country where IndepYear is null;
