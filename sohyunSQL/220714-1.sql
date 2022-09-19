--  부서 id가 90인 직원들의 인원수
select count(*) from employees where DEPARTMENT_ID = 90;
-- 60인 부서
select count(*) from employees where DEPARTMENT_ID = 60;
-- 30인 부서
select count(*) from employees where DEPARTMENT_ID = 30;

-- 부서별 직원 인원수를 간단하게 그룹을 지어서 표현해보자
select DEPARTMENT_ID, count(*) from employees group by DEPARTMENT_ID;
-- 같은 DEPARTMENT_ID를 기준으로 그룹을 지어줌

-- 부서별 최고 연봉, 최저 연봉, 평균 연봉, 연봉 합
select DEPARTMENT_ID, max(salary), min(salary), avg(salary), sum(salary) from employees
group by DEPARTMENT_ID;

select job_id from employees group by job_id; 
-- job_id를 중복없이 보고싶을 때에도 group by 사용하지만
select distinct job_id from employees;
-- 완벽하게 동일해야 중복제거하기 위해서는 distinct를 더 많이 사용한다

-- 직원 테이블 last_name을 중복 제거하고 조회
select distinct last_name from employees;

-- 직원테이블 last_name 그룹별로 인원수 조회
select last_name, count(*) from employees group by last_name;

-- last_name그룹의 카운트가 2 이상인 행들만 조회 
SELECT 
    last_name, COUNT(*)
FROM
    employees
GROUP BY last_name
having count(*) > 1;

-- where절은 행에서 가져올 때 조건을 검사함. 우리가 원하는건 행을 모두 가져와서 
-- 그룹에 대한 조건을 걸고싶기 때문에 그룹에 대한 조건은 having을 사용한다.

-- 위의 성을 가지는 직원목록 조회
SELECT 
    *
FROM
    employees
WHERE
    LAST_NAME IN (SELECT 
            last_name
        FROM
            employees
        GROUP BY last_name
        HAVING COUNT(*) > 1)
;

-- 5번째로 적게 받는 직원들 목록
select * from employees where SALARY = (
select distinct salary from employees order by salary limit 1 offset 4);
