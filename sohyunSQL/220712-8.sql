-- Paging 
-- 컨트리 테이블의 행은 총 239개
-- 컨트리 테이블에 있는 자료들을 각 페이지별 행의 개수와 보고자하는 페이지 번호를 정하면
-- 해당 row들을 조회할 수 있는 select문 작성

set @rowCount := 239;
set @pageNumber := 12; -- 페이지가 몇장S
set @pagePer := 20; -- 페이지에 몇개가 나올 것인가
set @totalPage := (@rowCount/@pagePer) + 1; -- 계산 수식 작성
 
 
 
select * from country limit 20 offset 0;
select * from country limit 20 offset 20;
select * from country limit 20 offset 40;
select * from country limit 20 offset 60;

 
 
prepare stmt from 'select * from country limit?';
execute stmt using @pagePer;
prepare stmt from 'select * from country offset?';
execute stmt using  @pagePer, @pageNumber;
select * from country limit @pagePer offset 