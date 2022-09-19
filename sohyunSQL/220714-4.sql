-- LIfeexpectancy의 값이 null인 경우 특정 값으로 대체해서 반환하고 싶을떄
SELECT NAME
, case when LIfeexpectancy is null then 0.0
else LIfeexpectancy end as life
From country;

select case when 10 > 5 then '왼쪽이 오른쪽보다 큽니다'
else ' 왼쪽이 오른쪽보다 작거나 같습니다'
end;

-- case when 조건식이 참이면 then절로, 거짓이면 else ! end로 끝도 알려줘야함

select case when 10 > 5 then '왼쪽'
when 10 = 5 then'같음'
when 10 < 5 then'오른쪽'
end as '비교';

-- 직원 이름 (이름 + 성) 결합시킨 풀네임
-- 전화번호가 011로 시작하는 경우 '개인전화' 그 외 '내선전화'

select  concat(first_name,'',last_name) as 'FULL_NAME',
case when phone_number like '011%' then  '개인전화' 
else '내선전화' end as '분류' from employees;

select ifnull(null, 대체값);

-- 값이 3개. 첫번재 값이 null이면 2번째 값, 두번째 값이 null이면 세번째 값

select ifnull(ifnull('첫번째값','두번째값'),'세번째값');
select coalesce('첫','두','세');

select nullif('a','b');
-- ifnull과의 차이~ 
-- nullif는 같으면 첫번째, 다르면 두번째