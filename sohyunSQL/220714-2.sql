-- 문자열 작업
select * from employees;
select rtrim('a    ');
select ltrim('    a    ');
select trim('    a        ');

select lower('HIHI'); -- 소문자로 만들어주기
select upper('hihi'); -- 대문자로 만들어주기

select reverse('UevoLl'); -- 글자 뒤집어주기

select concat('문자열', '결합', '함수'); -- 문자 결합해주기
select concat('문자열',null,'null은 어떻게?'); -- null값은 반환하지못함 다 null표시

select char_length('문자열 길이');

select replace('원본 문자열에서 변환합니다', '변환', 'replace'); 
-- replace (원본,찾을 문자,바꿀문자);

select substring('가나다라마', 3);
-- 문자열, 자를 시작 위치 
select substring('가나다라마바사아자',5,2);
-- 문자열, 자를 시작 위치, 개수
select substring('가나다라마바사아자', -3);
-- 음수일 때는 우측에서 위치를 센다

select lpad("123",5,"0");
-- 다섯자리로 만들어주며 왼쪽에서 부터 0으로 채워줌
select rpad("456",5,"*");
-- 다섯자리로 만들어주며 오른쪽에부터 * 으로 채워줌

select repeat("메롱",3);

select locate('d', 'do0ddkdkd'); -- d가 여러개면 처음꺼만 찾고 끝
select locate('위치', '문자열의 위치를 찾는데 sql의 문자 순서는 1부터');
select locate ('a', 'aggraa',2); -- 두번째부터 a 찾기 대장정

-- 숫자
select rand(); -- 랜덤수 만들어주기
select round(123.123, 2); 
select floor(1.72); -- 1 뒤는 다 내려  
select ceil(1.333); -- 1 뒤는다 올려
select abs(-55); -- 절댓값만들어줌(양수,음수빼줌)
select pow(2,5); -- (숫자, 제공할 횟수)
select pi();

-- 주사위 1~6 사이의 난수(정수)생성
select ceil(rand() * 6);

