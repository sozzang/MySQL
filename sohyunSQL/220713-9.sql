select * from employees;
select * from departments;

-- 각 직원들의 이름과 연봉,평균연봉과의 차를 조회해보세요.
select FIRST_NAME, LAST_NAME, SALARY, round((salary - (select avg(salary) from employees)),1) from employees;
-- ★ select FIRST_NAME, LAST_NAME, SALARY, avg(salary) from employees; 
-- avg(salary) 이렇게만 쓰면 한 행만 나와서 원하는 결과를 얻을 수 없음 ★

-- 최고 연봉직원과 최저 연봉직원의 이름 조회
select  FIRST_NAME, LAST_NAME from employees where SALARY in (
(select max(salary) from employees),(select min(salary) from employees)
);
-- avg와 같은 이유로 한 행만 반환하므로 max(salary) 이거만 써주면 안됨

-- 평균 연봉보다 많이 받는 직원 조회
select  FIRST_NAME, LAST_NAME from employees where SALARY > (select avg(salary) from employees);

-- 부서명이 IT로 시작하는 직원들의 수를 조회해보세요
SELECT 
    COUNT(*)
FROM
    employees
WHERE
    DEPARTMENT_ID IN (SELECT 
            department_id
        FROM
            departments
        WHERE
            DEPARTMENT_NAME LIKE 'IT%');

-- Douglas Grant의 이메일을 'dog@naver.com'으로 변경해보세요

update employees set email = 'dog@naver.com' where first_name = 'Douglas' and last_name = 'Grant';

-- Ellen Abel과 같은 부서에서 근무하는 직원을 연봉 내림차순으로 정렬해서 조회
select * from employees where DEPARTMENT_ID = (
select DEPARTMENT_ID from employees where  first_name = 'Ellen' and last_name = 'Abel'
)order by SALARY asc;

-- 부서명이 IT로 시작하는 부서에서 근무하는 최고연봉자보다 높은 연봉을받는 직원 목록을 연봉 오름차순으로 조회
select * from employees where salary >=  ( select max(SALARY) from employees where DEPARTMENT_ID in (
select DEPARTMENT_ID from departments where DEPARTMENT_NAME like 'IT%'
)) order by salary asc;