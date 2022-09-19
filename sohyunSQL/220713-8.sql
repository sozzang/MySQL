-- 집계 함수 
-- 여러행의 연산을 통해 한개로 만들어내자 
select * from employees;

-- 1.개수 count()
-- employees 테이블의 행의 개수를 알고싶다.
select count(*) from employees;

-- 전화번호가 515~로 시작하는 직원을 조회하는 쿼리문
select * from employees where PHONE_NUMBER like '515%';

-- 전화번호가 515~로 시작하는 직원의 수를 조회하는 쿼리문
select count(*) from employees where PHONE_NUMBER like '515%';

-- 2.합 sum()
select sum(salary) from employees;

-- 3. 평균 avg()
select avg(salary) from employees;

-- 4. 최대 max()
select max(salary) from employees;

-- 5.최소 min()
select min(salary) from employees;

-- 최대 연봉과 최소 연봉의 차이를 구해보자
select max(salary) - min(salary) from employees;



