-- MySQL에서도 변수 사용
-- 세션(Session) 변수(Variable)
-- 세션: 접속을 해서부터 끊을 때까지 계속 유지되는 범위
-- set @변수이름 := 숫자;
-- 변수설정 후 이름만 불러주면 연산에 사용할 수 있음

set @myVar := 10;
select @myVar * 10;
