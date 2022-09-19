-- VIEW : 보고자 하는 내용을 미리 SELECT문을 적어놓고 그 조의 결과를 VIEW라는 형태로 제공
-- CREATE VIEW `view 이름` AS 셀렉문
-- 자주 쓸것같은 테이블or칼럼 등의 내용을 미리 view 에서 만들어두고 이름 붙인 다음 from에서 적어주면 그 내용들이 들어가있는 뷰가 나옴
-- 일반 테이블처럼 사용이 가능함


SELECT * FROM new_view2 where employee_id = 100;

select count(*) from new_view2;

select * from new_view2 A left Join locations B on A.LOCATION_ID = B.LOCATION_ID;

select * from sumavgcountemp;

-- 레스토랑과 메뉴 테이블의 view 작성해보기

select * from my_db.resmenu where 음식점이름 = "대모골";
