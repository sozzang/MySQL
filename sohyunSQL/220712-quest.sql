-- hr데이터베이스 사용하기 명령어 작성
show databases;
use hr;
show tables;

-- 직원 테이블의 구조 조회
desc employees;

-- 직원 테이블의 모든 행의 모든열을 조회
select * from employees;

-- 직원 테이블의 이름 열의 값이 john인 직원 조회
select * from employees where first_name = 'john';

-- 직원 테이블의 성 열의 값이 john을 포함하는 값의 직원 조회
select * from employees where last_name like '%john%';

-- 직원 테이블의 이름 열의 값이 6글자인 직원 조회
select * from employees where first_name like '______';

-- 직원 테이블의 연봉 값이 10000이상 15000이하인 직원 조회
select * from employees where salary between 10000 and 15000;

-- 직원 테이블의 이름, 성, 연봉 컬럼과 연봉의 6%를 연산하여 'tax'라는 별명으로 컬럼 조회
select first_name, last_name, salary, salary * 0.06 'tax' from employees;


