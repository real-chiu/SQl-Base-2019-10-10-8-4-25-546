CREATE TABLE student(
    id NUMBER NOT NULL,
    name VARCHAR2(50) NOT NULL,
    age NUMBER NOT NULL,
    sex VARCHAR2(50) NOT NULL,
    CONSTRAINT pk_student PRIMARY KEY (id)
);

CREATE TABLE subject(
    id NUMBER NOT NULL,
    subject VARCHAR2(50) NOT NULL,
    teacher VARCHAR2(50) NOT NULL,
    description VARCHAR2(50) NOT NULL,
    CONSTRAINT pk_subject PRIMARY KEY (id)
);

CREATE TABLE score(
    id NUMBER NOT NULL,
    student_id NUMBER NOT NULL,
    subject_id NUMBER NOT NULL,
    score NUMBER NOT NULL,
    CONSTRAINT fk_student
      FOREIGN KEY (student_id)
      REFERENCES student(id),
    CONSTRAINT fk_subject
      FOREIGN KEY (subject_id)
      REFERENCES subject(id)
);

INSERT INTO student
VALUES (001, 'zhangsan', 18, 'male');


INSERT INTO student
VALUES (002, 'lisi', 20, 'female');


INSERT INTO subject
VALUES (1001, 'Chinese', 'Mr. Wang', 'the exam is easy');

INSERT INTO subject
VALUES (1002, 'math', 'Miss Liu', 'the exam is difficult');

INSERT INTO score
VALUES (1, 001, 1001, 80);


INSERT INTO score
VALUES (2, 002, 1002, 60);

INSERT INTO score
VALUES (3, 001, 1001, 70);

INSERT INTO score
VALUES (4, 002, 1002, 60.5);

SELECT * FROM student;

SELECT * FROM subject;

SELECT * FROM score;









