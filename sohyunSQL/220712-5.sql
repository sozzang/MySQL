-- like, 부정형태는 not like 
-- 패턴검색 : 특정 글자를 가진 것, 포함하는 것들을 모두 검색하고 싶다


-- like '%korea%' : korea가 포함되는
select * from country
where name like '%korea%';

-- like '%k%' : k가 포함되는
select * from country
where name like '%k%';

-- '%k' : k로 끝나는 
select * from country
where name like '%k';

-- 'k%' : k로 시작하는
SELECT * FROM country WHERE name LIKE 'k%';

-- 국가 이름이 'a'로 시작하고 'a'로 끝나는 국가 조회
SELECT * FROM country WHERE name LIKE 'a%a';

-- 국가 이름이 'a'로 시작하고 'a'로 끝나는 국가 조회 (6자)
SELECT 
    *
FROM
    country
WHERE
    name LIKE 'a____a';
-- 언더바(_)로 글자수만큼 표현해주면 됨 

-- 국가 이름이 ~ria로 끝나는 국가 조회
SELECT 
    *
FROM
    country
WHERE
    name LIKE '%ria';

-- region컬럼이 north ~로 시작하는 국가 조회
SELECT 
    *
FROM
    country
WHERE
    region LIKE 'north%';

-- region컬럼 a로 시작해서 a로 끝나는 명칭을 포함하지 않는 국가
SELECT 
    *
FROM
    country
WHERE
    region NOT LIKE '%a%a'
        AND region NOT LIKE 'a%a%';