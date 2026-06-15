create table member(
mem_id char(8) not null primary key,
mem_name varchar2(12) not null,
mem_number number(10) not null,
addr char(6),
phone1 char(3),
phone2 char(*),
height number(3),
debut_date date);

create table buy(
num number(10) not null primary key,
num_id char(15) not null,
prod_name char(15) not null,
group_name char(15),
price number(10) not null,
amount number(10)not null);

select * from member;
select * from buy;

insert into member values('APN','에이핑크','6','경기','031','77777777','164','20110210');
insert into member values('BLK','블랙핑크','4','경남','055','22222222','163','20160808');
insert into member values('GRL','소녀시대','8','서울','02','44444444','168','20070802');
insert into member values('ITZ','잇지','5','경남',null,null,'167','20190212');
insert into member values('MMU','마마무','4','전남','061','99999999','165','20140619');
insert into member values('OMY','오마이걸','7','서울',null,null,'160','20150421');
insert into member values('RED','레드벨벳','4','경북','054','55555555','161','20140801');
insert into member values('SPC','우주소녀','13','서울','02','11111111','162','20160225');
insert into member values('TWC','트와이스','9','서울','02','11111111','167','20151019');
insert into member values('WMN','여자친구','6','경기','031','33333333','166','20150115');

insert into BUY values(1,'BLK','지갑',null,30,2);
insert into BUY values(2,'BLK','맥북프로','디지털',1000,1);
insert into BUY values(3,'APN','아이폰','디지털',200,1);
insert into BUY values(4,'MMU','아이폰','디지털',200,5);
insert into BUY values(5,'BLK','청바지','패션',50,3);
insert into BUY values(6,'MMU','에어팟','디지털',80,10);
insert into BUY values(7,'GRL','혼공SQL','서적',15,5);
insert into BUY values(8,'APN','혼공SQL','서적',15,2);
insert into BUY values(9,'APN','청바지','패션',50,1);
insert into BUY values(10,'MMU','지갑',null,30,1);
insert into BUY values(11,'APN','혼공SQL','서적',15,1);
insert into BUY values(12,'MMU','지갑',null,30,4);
