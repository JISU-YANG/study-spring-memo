-- CREATE
CREATE TABLE IF NOT EXISTS MAJOR
(
    major_code varchar(100) primary key comment '주특기코드',
    major_name varchar(100) not null comment '주특기명',
    tutor_name varchar(100) not null comment '튜터'
    );

CREATE TABLE IF NOT EXISTS STUDENT
(
    student_code varchar(100) primary key comment '수강생코드',
    name varchar(100) not null comment '이름',
    birth varchar(8) null comment '생년월일',
    gender varchar(1) not null comment '성별',
    phone varchar(11) null comment '전화번호',
    major_code varchar(100) not null comment '주특기코드',
    foreign key(major_code) references major(major_code)
    );

CREATE TABLE IF NOT EXISTS EXAM
(
    student_code varchar(100) not null comment '수강생코드',
    exam_seq int not null comment '시험주차',
    score decimal(10,2) not null comment '시험점수',
    result varchar(1) not null comment '합불'
    );

-- ALTER
ALTER TABLE EXAM ADD PRIMARY KEY(student_code, exam_seq);
ALTER TABLE EXAM ADD CONSTRAINT exam_fk_student_code FOREIGN KEY(student_code) REFERENCES STUDENT(student_code);


-- INSERT
INSERT INTO MAJOR VALUES('m1', '스프링', '남병관');
INSERT INTO MAJOR VALUES('m2', '노드', '강승현');
INSERT INTO MAJOR VALUES('m3', '플라스크', '이범규');
INSERT INTO MAJOR VALUES('m4', '루비온레일즈', '차은서');
INSERT INTO MAJOR VALUES('m5', '라라벨', '구름');
INSERT INTO MAJOR VALUES('m6', '리엑트', '임민영');
INSERT INTO MAJOR VALUES('m7', '뷰', '김서영');
INSERT INTO MAJOR VALUES('m8', '엥귤러', '한현아');


INSERT INTO STUDENT VALUES('s1', '최원빈', '20220331', 'M', '01000000001', 'm1');
INSERT INTO STUDENT VALUES('s2', '강준규', '20220501', 'M', '01000000002', 'm1');
INSERT INTO STUDENT VALUES('s3', '김영철', '20220711', 'M', '01000000003', 'm1');
INSERT INTO STUDENT VALUES('s4', '예상기', '20220408', 'M', '01000000004', 'm6');
INSERT INTO STUDENT VALUES('s5', '안지현', '20220921', 'F', '01000000005', 'm6');
INSERT INTO STUDENT VALUES('s6', '이대호', '20221111', 'M', '01000000006', 'm7');
INSERT INTO STUDENT VALUES('s7', '정주혜', '20221117', 'F', '01000000007', 'm8');
INSERT INTO STUDENT VALUES('s8', '고미송', '20220623', 'F', '01000000008', 'm6');
INSERT INTO STUDENT VALUES('s9', '이용우', '20220511', 'M', '01000000009', 'm2');
INSERT INTO STUDENT VALUES('s10', '심선아', '20220504', 'F', '01000000010', 'm8');
INSERT INTO STUDENT VALUES('s11', '변정섭', '20220222', 'M', '01000000020', 'm2');
INSERT INTO STUDENT(student_code, name, gender, major_code) VALUES('s12', '권오빈', 'M', 'm3');
INSERT INTO STUDENT VALUES('s13', '김가은', '20220121', 'F', '01000000030', 'm1');
INSERT INTO STUDENT(student_code, name, gender, major_code) VALUES('s14', '김동현', 'M', 'm4');
INSERT INTO STUDENT VALUES('s15', '박은진', '20221101', 'F', '01000000040', 'm1');
INSERT INTO STUDENT(student_code, name, birth, gender, phone, major_code) VALUES('s16', '정영호', '20221105', 'M', '01000000050', 'm5');
INSERT INTO STUDENT(student_code, name, gender, major_code) VALUES('s17', '박가현', 'F', 'm7');
INSERT INTO STUDENT(student_code, name, birth, gender, phone, major_code) VALUES('s18', '박용태', '20220508', 'M', '01000000060', 'm6');
INSERT INTO STUDENT VALUES('s19', '김예지', '20220505', 'F', '01000000070', 'm2');
INSERT INTO STUDENT VALUES('s20', '윤지용', '20220909', 'M', '01000000080', 'm3');
INSERT INTO STUDENT VALUES('s21', '손윤주', '20220303', 'F', '01000000090', 'm6');


INSERT INTO EXAM VALUES('s1', 1, 8.5, 'P');
INSERT INTO EXAM VALUES('s1', 2, 9.5, 'P');
INSERT INTO EXAM VALUES('s1', 3, 3.5, 'F');
INSERT INTO EXAM VALUES('s2', 1, 8.2, 'P');
INSERT INTO EXAM VALUES('s2', 2, 9.5, 'P');
INSERT INTO EXAM VALUES('s2', 3, 7.5, 'P');
INSERT INTO EXAM VALUES('s3', 1, 9.3, 'P');
INSERT INTO EXAM VALUES('s3', 2, 5.3, 'F');
INSERT INTO EXAM VALUES('s3', 3, 9.9, 'P');
INSERT INTO EXAM VALUES('s4', 1, 8.4, 'P');
INSERT INTO EXAM VALUES('s5', 1, 9.5, 'P');
INSERT INTO EXAM VALUES('s5', 2, 3.5, 'F');
INSERT INTO EXAM VALUES('s6', 1, 8.3, 'P');
INSERT INTO EXAM VALUES('s7', 1, 9.2, 'P');
INSERT INTO EXAM VALUES('s7', 2, 9.9, 'P');
INSERT INTO EXAM VALUES('s7', 3, 3.6, 'F');
INSERT INTO EXAM VALUES('s8', 1, 8.4, 'P');
INSERT INTO EXAM VALUES('s9', 1, 9.7, 'P');
INSERT INTO EXAM VALUES('s10', 1, 8.4, 'P');
INSERT INTO EXAM VALUES('s10', 2, 9.8, 'P');
INSERT INTO EXAM VALUES('s10', 3, 8.4, 'P');
INSERT INTO EXAM VALUES('s11', 1, 8.6, 'P');
INSERT INTO EXAM VALUES('s12', 1, 9.2, 'P');
INSERT INTO EXAM VALUES('s13', 1, 8.1, 'P');
INSERT INTO EXAM VALUES('s13', 2, 9.5, 'P');
INSERT INTO EXAM VALUES('s13', 3, 2.1, 'F');
INSERT INTO EXAM VALUES('s14', 1, 9.2, 'P');
INSERT INTO EXAM VALUES('s15', 1, 9.7, 'P');
INSERT INTO EXAM VALUES('s15', 2, 1.7, 'F');
INSERT INTO EXAM VALUES('s16', 1, 8.4, 'P');
INSERT INTO EXAM VALUES('s17', 1, 9.3, 'P');
INSERT INTO EXAM VALUES('s17', 2, 9.9, 'P');
INSERT INTO EXAM VALUES('s17', 3, 1.3, 'F');
INSERT INTO EXAM VALUES('s18', 1, 9.9, 'P');
INSERT INTO EXAM VALUES('s19', 1, 9.4, 'P');
INSERT INTO EXAM VALUES('s19', 2, 8.9, 'P');
INSERT INTO EXAM VALUES('s19', 3, 7.4, 'F');
INSERT INTO EXAM VALUES('s20', 1, 8.1, 'P');
INSERT INTO EXAM VALUES('s20', 2, 6.4, 'F');
INSERT INTO EXAM VALUES('s21', 1, 9.5, 'P');
INSERT INTO EXAM VALUES('s21', 2, 8.8, 'P');
INSERT INTO EXAM VALUES('s21', 3, 8.2, 'P');


-- UPDATE
INSERT INTO STUDENT VALUES('s0', '수강생', '20220331', 'M', '01000000005', 'm1');
UPDATE STUDENT SET major_code= 'm2' where student_code= 's0';


-- DELETE
DELETE FROM STUDENT WHERE student_code = 's0';


-- SELECT
SELECT * FROM STUDENT;
SELECT * FROM STUDENT WHERE STUDENT_CODE = 's1';
SELECT name, major_code FROM STUDENT WHERE student_code = 's1';


-- JOIN
SELECT s.name, s.major_code, m.major_name FROM STUDENT s JOIN MAJOR m ON s.major_code = m.major_code;
SELECT s.name, s.major_code, m.major_name FROM STUDENT s, MAJOR m WHERE s.major_code = m.major_code;