-- 원하는 테이블 우클릭 select rows 클릭하면 뭐들어있는지 볼 수 있음!
select * from employees;
select * from departments;
select * from jobs;

-- 1. 모든 부서의 부서명과 관리자의 이름 (외래키 MANAGER_ID -> employees (employee_id 참조))의 이름
select a.*, b.FIRST_NAME, b.LAST_NAME from departments as a
left join employees as b on a.MANAGER_ID = b.EMPLOYEE_ID;

-- 2. 부서명이 IT로 시작하는 부서명과 근무하는 직원들의 이름 조회 
select a.DEPARTMENT_NAME, b.FIRST_NAME, b.LAST_NAME from (SELECT * FROM departments WHERE DEPARTMENT_NAME LIKE 'IT%') as a
left join employees as b on a.DEPARTMENT_ID = b.DEPARTMENT_ID;

select a.DEPARTMENT_NAME, b.FIRST_NAME, b.LAST_NAME from (SELECT * FROM departments WHERE DEPARTMENT_NAME LIKE 'IT%') as a
inner join employees as b on a.DEPARTMENT_ID = b.DEPARTMENT_ID;
-- left는 null값도 같이 나옴, inner join은 null값 빼고 반환 

-- 3. 모든 직원들의 이름과 직책(JOB_jobsTITLE) 조회
select  a.FIRST_NAME, a.LAST_NAME, b.JOB_TITLE from employees as a
inner join jobs as b on a.JOB_ID = b.JOB_ID;
-- 모든 직원들이 다 직책을 가지고 있으니깐 left, right, inner 값이 다 똑같다.alter

-- 4. 직원의 해당 직책의 JOBS 테이블에 책정된 최대 연봉(MAX_SALARY)이상의 연봉을 받는  직원이름, 현재연봉, 최대연봉 조회
select a.FIRST_NAME, a.LAST_NAME, a.SALARY, b.job_title,b.max_salary from employees as a
inner join jobs as b on a.JOB_ID = b.JOB_ID
where a.SALARY >= b.MAX_SALARY;

-- 5  부서의(COUNTRY_ID)가 'US'인 부서에서 근무하는 직원명과 부서명 조회
select a.FIRST_NAME, a.LAST_NAME, b.department_name from employees as a
left join departments as b on a.DEPARTMENT_ID = b.DEPARTMENT_ID
left join locations as c on b.location_id = c.location_id
where c.country_id = 'us';

select * from locations as a left join departments as b on a.location_id = b.LOCATION_ID
inner join employees c on b.department_id = c.department_id 
where country_id = 'us';
-- locations 기준으로 하면 null값이 반환되므로 inner 사용

