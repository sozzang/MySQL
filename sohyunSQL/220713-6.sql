-- 식당 정보 테이블
-- 상호명
-- 전화번호
-- 주소 등등

-- 메뉴 정보 테이블
-- 음식명
-- 가격 등
use my_db;

create table restaurant(
num int primary key auto_increment,
name varchar(10) not null,
phoneNum varchar(20) unique,
adress varchar(40) not null unique
);

insert into restaurant(name, phoneNum, adress) values ("가솔린앤로지스", null, "부산 부산진구 서전로9번길 14 1층 103호");
insert into restaurant(name, phoneNum, adress) values ("대모골", "051-803-3109", "부산광역시 부산진구 부전로152번길 71");
insert into restaurant(name, phoneNum, adress) values ("일품생선구이", "051-806-0092", "부산광역시 부산진구 새싹로14번길 21");
insert into restaurant(name, phoneNum, adress) values ("짬뽕관", "051-819-7555", "부산 부산진구 중앙대로 747-1");
insert into restaurant(name, phoneNum, adress) values ("그집곱도리탕", "0507-1308-4186", "부산 부산진구 동천로107번길 17");
select * from restaurant;


create table menu(
num int primary key auto_increment,
menuName varchar(10),
price int
);

insert into menu(menuName,price) values("세이부라소바",10000),("시오탄멘",9000),("이에케쇼우",9000);
insert into menu(menuName,price) values("숯불고추장구이정식",7500),("숯불간장구이정식", 7500),("매운숯불구이정식",8000);
insert into menu(menuName,price) values("생선구이정식",9000), ("모듬생선구이정식",11000);
insert into menu(menuName,price) values("짬뽕",9000),("차돌짬뽕",12000),("순두부짬뽕",10000),("짜장면",6000);
insert into menu(menuName,price) values("곱도리탕(소)",32000),("곱도리탕(중)",45000),("곱도리탕(대)",57000);
select * from menu;

-- 두개의 테이블이 연관관계가 있다는 것을 외래키로 연결해주자
-- 어떤 메뉴가 어떤 가게의 메뉴인지 알려줘야하니까 가게를 특정시켜주자 
-- pk값으로 연결해주면 좋겠다 
alter table menu add column restID int;
-- 만들어진 테이블에 수정(추가)하는 방식으로 ~
update menu set restID = 1;
update menu set restID = 2 where num <> 1;

 alter table menu add constraint foreign key (restID) references restaurant (num);
 -- 외래키추가하기 


