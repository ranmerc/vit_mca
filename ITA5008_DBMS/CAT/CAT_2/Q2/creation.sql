DROP TABLE STUDENT CASCADE CONSTRAINTS;

CREATE TABLE STUDENT(
    STUDENTID VARCHAR(20),
    FIRSTNAME VARCHAR(50),
    LASTNAME VARCHAR(50),
    AGE NUMBER,
    BRANCH VARCHAR(20),
    EMAILID VARCHAR(50),
    CONSTRAINT STUDENT_STUDENTID_PK PRIMARY KEY(STUDENTID)
);