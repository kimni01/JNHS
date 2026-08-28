DROP TABLE tbl_store;
DROP TABLE tbl_sales;

CREATE TABLE tbl_store(
    store_code CHAR(3) NOT NULL PRIMARY KEY,
    store_name VARCHAR(20),
    store_type CHAR(1),
    founders_day CHAR(8)
);

CREATE TABLE tbl_sales(
    store_code CHAR(3) NOT NULL PRIMARY KEY,
    first number,
    second number,
    third number,
    fourth number
);

INSERT INTO tbl_store VALUES('100','코엑스점','M','20230101');
INSERT INTO tbl_store VALUES('200','판교점','A','20230202');
INSERT INTO tbl_store VALUES('300','울산점','M','20230303');
INSERT INTO tbl_store VALUES('400','일산점','A','20230405');

INSERT INTO tbl_sales VALUES('100',10000,20000,30000,40000);
INSERT INTO tbl_sales VALUES('200',5000,2000,10000,15000);
INSERT INTO tbl_sales VALUES('300',15000,30000,10000,10000);

SELECT * FROM tbl_store;
SELECT * FROM tbl_sales;


SELECT s.store_name,
t.first,
t.second,
t.third,
t.fourth,
(t.first+t.second+t.third+t.fourth) total, s.founders_day
FROM tbl_store s JOIN tbl_sales t 
ON s.store_code = t.store_code

