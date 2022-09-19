-- hr 부서(departments) 테이블 모든 행과 열 조회 --

select * from departments;

-- 부서명이 'IT%'로 시작하는 부서들 조회
select * from departments where DEPARTMENT_NAME like 'IT%';

-- 60, 210, 230
-- 직원 테이블
select * from employees where DEPARTMENT_ID in (
select DEPARTMENT_ID from departments where DEPARTMENT_NAME like 'IT%' -- 서브쿼리
);

-- 연봉을 내림차순 정렬하고 
-- 연봉 상위10명의 연봉을 오름차순으로 조회하자

select * from(
select * from employees order by SALARY desc limit 10 
) as A -- 10명을 내림차순을 한 결과가 A라는 테이블로서 만들어짐 , 별명 안붙여주면 에러남 , 따옴표 없이 씀
order by SALARY asc;