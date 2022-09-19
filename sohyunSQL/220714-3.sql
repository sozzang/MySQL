-- "515.123.4567" 
-- . 을 기준으로 잘라보자

select substring("515.123.4567",1,3);
select substring("515.123.4567",5,3);
select substring("515.123.4567",-4,4);

-- 직원 테이블 전화번호 앞자리 3자리를 그룹지어 개수
select substring(phone_number,1,3), count(*) from employees group by substring(phone_number,1,3);

desc employees;

-- mysql 날짜 : date
-- 시간 : time
-- 날짜 시간 : datetime / timestamp
select current_date();
select current_time();
select current_timestamp();

select date '2022-07-14';

-- hire_date가 1987년6월인 직원들 목록
select * from employees 
where HIRE_DATE between '1987-06-01' and '1987-06-30';
-- '1987/06/01' 이거도 가능

select adddate('1987-06-01',10); -- 날짜 더하는거
select subdate('1987-06-01',1); -- 날짜 빼는거
select date_add('1987-06-01',interval 40 day); -- date_add : 40일 간격
select date_sub('1987-06-01',interval 1 month);
select '1987-06-01' + interval 1 year;
select '1987-06-01' + interval 1 month;

select dayofweek('2022-07-14'); -- 1일 2월 3화 4수 5목 6금 7토

select datediff('2022-06-01', '2022-06-13'); -- 두 날짜의 간격

select str_to_date('2022/06/01', '%Y/%m/%d'); -- Y는 대문자로
select date_format(date '2022-06-13', '%y/%M/%D'); -- 대문자는 영어


-- 17일에 고용된 직원 목록
select * from employees where HIRE_DATE like '%-17';

select * from employees where extract(day from hire_date) = 17;

-- jobhistory 각 행 별로 일한 기간'일' 조회

select START_DATE, END_DATE, datediff(end_date, start_date) as '기간' from job_history;

-- 형변환~
select cast(10 as time);
select cast('10' as double) + 5.5; -- '10'은 문자열 5.5는 double 원래는 형이 달라 계산이 안되니깐 형변환 필요
select convert(10, time);
select convert('10',double) + 5.5;
-- 근데 mySQL은 알아서 형변환 시켜주는게 많아서 별 신경 안써도 되지만 다른 언어는 엄격할 수 있다! 배워놓아야한다!



