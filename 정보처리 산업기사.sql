DROP TABLE tbl_member;
DROP TABLE tbl_schedule;

CREATE TABLE tbl_member (
    pk_member VARCHAR(5) NOT NULL PRIMARY KEY,
    name VARCHAR(20) NOT NULL ,
    grade VARCHAR(20) 
);

CREATE TABLE tbl_schedule (
    pk_schedule number(5) NOT NULL PRIMARY KEY,
    do_date DATE NOT NULL,
    do_memo VARCHAR(255) NOT NULL,
    fk_member VARCHAR(5) NOT NULL,
    FOREIGN KEY (fk_member) REFERENCES tbl_member(pk_member)
);

INSERT INTO tbl_member VALUES ('M0001', '홍길동', '의적');
Insert into tbl_member values ('M0002', '김철수', '학생');
INSERT INTO tbl_member VALUES ('M0003', '이영희', '선생님');
INSERT INTO tbl_member VALUES ('M0004', '박민수', '개발자');

INSERT INTO tbl_schedule VALUES (1,'20240601', '회의 참석', 'M0001');
INSERT INTO tbl_schedule VALUES (2,'20240602', '프로젝트 마감', 'M0002');
INSERT INTO tbl_schedule VALUES (3,'20240603', '코드 리뷰', 'M0003');
INSERT INTO tbl_schedule VALUES (4,'20240604', '팀 빌딩', 'M0004');

COMMIT

SELECT * FROM tbl_member;
SELECT * FROM tbl_schedule;
