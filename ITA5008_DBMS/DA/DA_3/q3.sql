--file_name = q3.sql
COLUMN CHAP_REF HEADING 'CHAP_REF' FORMAT A20

COLUMN TEACHING_REF HEADING 'TEACHING_REF' FORMAT A20

COLUMN COURSE_REF HEADING 'COURSE_REF' FORMAT A20

COLUMN AUTHOR_REF HEADING 'AUTHOR_REF' FORMAT A20

SET LINESIZE 1000

DROP TABLE SUBJECT;

DROP TABLE TEACHING;

DROP TABLE RESEARCH;

DROP TABLE ACADEMIC;

DROP TABLE INDUSTRY;

DROP TABLE AUTH_COUR;

DROP TABLE AUTHOR;

DROP TABLE CHAPTER;

DROP TABLE COURSE_MANUAL;

DROP TYPE AUTH_COUR_T;

DROP TYPE SUBJECT_T;

DROP TYPE RESEARCH_T;

DROP TYPE TEACHING_T;

DROP TYPE ACADEMIC_T;

DROP TYPE INDUSTRY_T;

DROP TYPE AUTHOR_T;

DROP TYPE COURSE_MANUAL_T;

DROP TYPE CHAPTER_T;

CREATE OR REPLACE TYPE AUTHOR_T AS
    OBJECT(
        NAME VARCHAR(20),
        ADDRESS VARCHAR(20)
    )NOT FINAL;
/

CREATE OR REPLACE TYPE INDUSTRY_T UNDER AUTHOR_T(
    C_NAME VARCHAR(20),
    C_ADDR VARCHAR(20),
    C_SIZE INT
);
/

CREATE OR REPLACE TYPE ACADEMIC_T UNDER AUTHOR_T(
    I_NAME VARCHAR(20),
    I_ADDR VARCHAR(20),
    I_SIZE INT
)NOT FINAL;
/

CREATE OR REPLACE TYPE RESEARCH_T UNDER ACADEMIC_T(
    R_TOPIC VARCHAR(20),
    R_DIRECTOR VARCHAR(20)
);
/

CREATE OR REPLACE TYPE TEACHING_T UNDER ACADEMIC_T(
    C_HOURS INT,
    C_NO NUMBER
);
/

CREATE OR REPLACE TYPE CHAPTER_T AS
    OBJECT(
        C_NO INT,
        C_TITLE VARCHAR(20),
        PG_NO INT
    );
/

CREATE OR REPLACE TYPE COURSE_MANUAL_T AS
    OBJECT(
        ISBN NUMBER,
        TITLE VARCHAR(20),
        YEAR INT,
        CHAP_REF REF CHAPTER_T
    );
/

CREATE OR REPLACE TYPE SUBJECT_T AS
    OBJECT(
        S_CODE INT,
        S_NAME VARCHAR(20),
        VENUE VARCHAR(20),
        TEACHING_REF REF TEACHING_T
    );
/

CREATE OR REPLACE TYPE AUTH_COUR_T AS
    OBJECT(
        AUTHOR_REF REF AUTHOR_T,
        COURSE_REF REF COURSE_MANUAL_T
    );
/

--CREATING TABLES
CREATE TABLE AUTHOR OF AUTHOR_T;

CREATE TABLE INDUSTRY OF INDUSTRY_T;

CREATE TABLE ACADEMIC OF ACADEMIC_T;

CREATE TABLE RESEARCH OF RESEARCH_T;

CREATE TABLE TEACHING OF TEACHING_T;

CREATE TABLE CHAPTER OF CHAPTER_T;

CREATE TABLE COURSE_MANUAL OF COURSE_MANUAL_T;

CREATE TABLE SUBJECT OF SUBJECT_T;

CREATE TABLE AUTH_COUR OF AUTH_COUR_T;

--INSERTING.
SET FEEDBACK OFF

--Author
DELETE FROM AUTHOR;

INSERT INTO AUTHOR VALUES(
    AUTHOR_T('AR1', 'AD1')
);

INSERT INTO AUTHOR VALUES(
    AUTHOR_T('AR2', 'AD2')
);

INSERT INTO AUTHOR VALUES(
    AUTHOR_T('AR3', 'AD3')
);

INSERT INTO AUTHOR VALUES(
    AUTHOR_T('AR4', 'AD4')
);

INSERT INTO AUTHOR VALUES(
    AUTHOR_T('AR5', 'AD5')
);

INSERT INTO AUTHOR VALUES(
    AUTHOR_T('AR6', 'AD6')
);

INSERT INTO AUTHOR VALUES(
    AUTHOR_T('AR7', 'AD8')
);

INSERT INTO AUTHOR VALUES(
    AUTHOR_T('AR8', 'AD8')
);

--Industry
DELETE FROM INDUSTRY;

INSERT INTO INDUSTRY
    SELECT
        AUTHOR.NAME,
        AUTHOR.ADDRESS,
        'GOOGLE',
        AUTHOR.ADDRESS,
        10
    FROM
        AUTHOR
    WHERE
        AUTHOR.NAME = 'AR1';

INSERT INTO INDUSTRY
    SELECT
        AUTHOR.NAME,
        AUTHOR.ADDRESS,
        'MICROSOFT',
        AUTHOR.ADDRESS,
        11
    FROM
        AUTHOR
    WHERE
        AUTHOR.NAME = 'AR2';

INSERT INTO INDUSTRY
    SELECT
        AUTHOR.NAME,
        AUTHOR.ADDRESS,
        'AMAZON',
        AUTHOR.ADDRESS,
        87
    FROM
        AUTHOR
    WHERE
        AUTHOR.NAME = 'AR3';

INSERT INTO INDUSTRY
    SELECT
        AUTHOR.NAME,
        AUTHOR.ADDRESS,
        'NETFLIX',
        AUTHOR.ADDRESS,
        90
    FROM
        AUTHOR
    WHERE
        AUTHOR.NAME = 'AR3';

--Academic
DELETE FROM ACADEMIC;

INSERT INTO ACADEMIC
    SELECT
        AUTHOR.NAME,
        AUTHOR.ADDRESS,
        'VIT',
        'VELLORE',
        70
    FROM
        AUTHOR
    WHERE
        AUTHOR.NAME = 'AR4';

INSERT INTO ACADEMIC
    SELECT
        AUTHOR.NAME,
        AUTHOR.ADDRESS,
        'MIT',
        'PUNE',
        15
    FROM
        AUTHOR
    WHERE
        AUTHOR.NAME = 'AR5';

INSERT INTO ACADEMIC
    SELECT
        AUTHOR.NAME,
        AUTHOR.ADDRESS,
        'KJS',
        'MUMBAI',
        34
    FROM
        AUTHOR
    WHERE
        AUTHOR.NAME = 'AR6';

INSERT INTO ACADEMIC
    SELECT
        AUTHOR.NAME,
        AUTHOR.ADDRESS,
        'VIT',
        'VELLORE',
        67
    FROM
        AUTHOR
    WHERE
        AUTHOR.NAME = 'AR7';

--Teaching
DELETE FROM TEACHING;

INSERT INTO TEACHING
    SELECT
        A.NAME,
        A.ADDRESS,
        A.I_NAME,
        A.I_ADDR,
        A.I_SIZE,
        8,
        9234125462
    FROM
        ACADEMIC A
    WHERE
        A.NAME = 'AR8';

INSERT INTO TEACHING
    SELECT
        A.NAME,
        A.ADDRESS,
        A.I_NAME,
        A.I_ADDR,
        A.I_SIZE,
        6,
        9435127865
    FROM
        ACADEMIC A
    WHERE
        A.NAME = 'AR2';

INSERT INTO TEACHING
    SELECT
        A.NAME,
        A.ADDRESS,
        A.I_NAME,
        A.I_ADDR,
        A.I_SIZE,
        2,
        7089654423
    FROM
        ACADEMIC A
    WHERE
        A.NAME = 'AR3';

INSERT INTO TEACHING
    SELECT
        A.NAME,
        A.ADDRESS,
        A.I_NAME,
        A.I_ADDR,
        A.I_SIZE,
        5,
        6998745237
    FROM
        ACADEMIC A
    WHERE
        A.NAME = 'AR4';

--CHAPTER
DELETE FROM CHAPTER;

INSERT INTO CHAPTER VALUES(
    CHAPTER_T(1, 'SEARCHING', 134)
);

INSERT INTO CHAPTER VALUES(
    CHAPTER_T(2, 'SORTING', 143)
);

INSERT INTO CHAPTER VALUES(
    CHAPTER_T(3, 'GRAPHS', 267)
);

INSERT INTO CHAPTER VALUES(
    CHAPTER_T(4, 'TREES', 200)
);

--COURSE MANUAL
DELETE FROM COURSE_MANUAL;

INSERT INTO COURSE_MANUAL
    SELECT
        COURSE_MANUAL_T(1111,
        'DSA',
        2018,
        REF(C))
    FROM
        CHAPTER C
    WHERE
        C_NO = 1;

INSERT INTO COURSE_MANUAL
    SELECT
        COURSE_MANUAL_T(2222,
        'DBMS',
        2015,
        REF(C))
    FROM
        CHAPTER C
    WHERE
        C_NO = 2;

INSERT INTO COURSE_MANUAL
    SELECT
        COURSE_MANUAL_T(3333,
        'DCN',
        1999,
        REF(C))
    FROM
        CHAPTER C
    WHERE
        C_NO = 3;

INSERT INTO COURSE_MANUAL
    SELECT
        COURSE_MANUAL_T(4444,
        'DSA',
        2016,
        REF(C))
    FROM
        CHAPTER C
    WHERE
        C_NO = 4;

--SUBJECT
DELETE FROM SUBJECT;

INSERT INTO SUBJECT
    SELECT
        SUBJECT_T(1111,
        'OOSE',
        'SJT 103',
        REF(T))
    FROM
        TEACHING T
    WHERE
        T.NAME = 'AR2';

INSERT INTO SUBJECT
    SELECT
        SUBJECT_T(2222,
        'CC',
        'SJT 103',
        REF(T))
    FROM
        TEACHING T
    WHERE
        T.NAME = 'AR3';

INSERT INTO SUBJECT
    SELECT
        SUBJECT_T(3333,
        'OS',
        'SVM 211',
        REF(T))
    FROM
        TEACHING T
    WHERE
        T.NAME = 'AR4';

INSERT INTO SUBJECT
    SELECT
        SUBJECT_T(4444,
        'ASM',
        'PRP 103',
        REF(T))
    FROM
        TEACHING T
    WHERE
        T.NAME = 'AR8';

--AUTH_COUR
DELETE FROM AUTH_COUR;

INSERT INTO AUTH_COUR
    SELECT
        AUTH_COUR_T(REF(A),
        REF(C))
    FROM
        AUTHOR        A,
        COURSE_MANUAL C
    WHERE
        A.NAME = 'AR1'
        AND C.ISBN = 1111;

INSERT INTO AUTH_COUR
    SELECT
        AUTH_COUR_T(REF(A),
        REF(C))
    FROM
        AUTHOR        A,
        COURSE_MANUAL C
    WHERE
        A.NAME = 'AR5'
        AND C.ISBN = 2222;

INSERT INTO AUTH_COUR
    SELECT
        AUTH_COUR_T(REF(A),
        REF(C))
    FROM
        AUTHOR        A,
        COURSE_MANUAL C
    WHERE
        A.NAME = 'AR6'
        AND C.ISBN = 3333;

INSERT INTO AUTH_COUR
    SELECT
        AUTH_COUR_T(REF(A),
        REF(C))
    FROM
        AUTHOR        A,
        COURSE_MANUAL C
    WHERE
        A.NAME = 'AR3'
        AND C.ISBN = 4444;

SELECT
    *
FROM
    AUTHOR;

SELECT
    *
FROM
    INDUSTRY;

SELECT
    *
FROM
    ACADEMIC;

SELECT
    *
FROM
    TEACHING;

SELECT
    *
FROM
    CHAPTER;

SELECT
    *
FROM
    COURSE_MANUAL;

SELECT
    *
FROM
    SUBJECT;

SELECT
    *
FROM
    AUTH_COUR;

SET FEEDBACK ON